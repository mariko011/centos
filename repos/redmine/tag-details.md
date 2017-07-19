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
$ docker pull redmine@sha256:da8015843d144f65f1e3de3f8a01e6ecf43d38c99433d9d488934246d4b7bbc0
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240302304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528ec6b0fa8cd2120444c4318c7d23fb9224d317b7f8b6f90a5cc42e9a941677`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:27:27 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:27:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:27:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:27:34 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:17 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:42:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:42:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:42:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:56 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:42:56 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 18 Jul 2017 23:43:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:45:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:45:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:45:46 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:45:47 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:45:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64782b2a92d7169e75dc0324da36aef00efdd6026c3d137ec2ce7469ee998281`  
		Last Modified: Tue, 18 Jul 2017 23:33:06 GMT  
		Size: 673.2 KB (673158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380cc3cfd27d113113da29f527b1b53173068667759836a746db4b350bf1ae7c`  
		Last Modified: Tue, 18 Jul 2017 23:33:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e890a2d4ce7dcf6c5861042440c8ec8eea7b1ffc8e7d81a34f353ef9e67611c`  
		Last Modified: Tue, 18 Jul 2017 23:56:16 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd56b15c618821c15bfdcd9cc2121fed6d85cab19e8ff6b9e1efac824f3b436`  
		Last Modified: Tue, 18 Jul 2017 23:56:18 GMT  
		Size: 14.4 MB (14421898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d66b3d31b6ef8ef198df0cd421ead690068cb9556119051259889b12a0cb33`  
		Last Modified: Tue, 18 Jul 2017 23:56:15 GMT  
		Size: 818.8 KB (818802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5845b7e772419fdb562436140c27b3f2ff12d42e982db49dd2f10e4e276f4ff`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc346098487b4356f2b2206d26536ebf1d85f581cef31edc5f15169bf8299f9`  
		Last Modified: Tue, 18 Jul 2017 23:56:25 GMT  
		Size: 59.2 MB (59241674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24662def763ef2159dbe937ee1949810384bf7b6c287d465d42c2b0d4321dc`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a17afe0da876d08940fdbf0dc526434432a95598512e61d10929a82dc81896`  
		Last Modified: Tue, 18 Jul 2017 23:56:14 GMT  
		Size: 2.4 MB (2447804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a306822b1fdf59846b163226583d19c2f28a78ec98174875b5e0dbb405e19`  
		Last Modified: Tue, 18 Jul 2017 23:56:24 GMT  
		Size: 76.7 MB (76689353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c634066335c08ac6b640afcaf07b499b17c0480ff780c0502228e71efdbb00`  
		Last Modified: Tue, 18 Jul 2017 23:56:13 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:da8015843d144f65f1e3de3f8a01e6ecf43d38c99433d9d488934246d4b7bbc0
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240302304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528ec6b0fa8cd2120444c4318c7d23fb9224d317b7f8b6f90a5cc42e9a941677`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:27:27 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:27:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:27:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:27:34 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:17 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:42:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:42:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:42:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:56 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:42:56 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 18 Jul 2017 23:43:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:45:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:45:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:45:46 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:45:47 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:45:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64782b2a92d7169e75dc0324da36aef00efdd6026c3d137ec2ce7469ee998281`  
		Last Modified: Tue, 18 Jul 2017 23:33:06 GMT  
		Size: 673.2 KB (673158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380cc3cfd27d113113da29f527b1b53173068667759836a746db4b350bf1ae7c`  
		Last Modified: Tue, 18 Jul 2017 23:33:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e890a2d4ce7dcf6c5861042440c8ec8eea7b1ffc8e7d81a34f353ef9e67611c`  
		Last Modified: Tue, 18 Jul 2017 23:56:16 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd56b15c618821c15bfdcd9cc2121fed6d85cab19e8ff6b9e1efac824f3b436`  
		Last Modified: Tue, 18 Jul 2017 23:56:18 GMT  
		Size: 14.4 MB (14421898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d66b3d31b6ef8ef198df0cd421ead690068cb9556119051259889b12a0cb33`  
		Last Modified: Tue, 18 Jul 2017 23:56:15 GMT  
		Size: 818.8 KB (818802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5845b7e772419fdb562436140c27b3f2ff12d42e982db49dd2f10e4e276f4ff`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc346098487b4356f2b2206d26536ebf1d85f581cef31edc5f15169bf8299f9`  
		Last Modified: Tue, 18 Jul 2017 23:56:25 GMT  
		Size: 59.2 MB (59241674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24662def763ef2159dbe937ee1949810384bf7b6c287d465d42c2b0d4321dc`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a17afe0da876d08940fdbf0dc526434432a95598512e61d10929a82dc81896`  
		Last Modified: Tue, 18 Jul 2017 23:56:14 GMT  
		Size: 2.4 MB (2447804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a306822b1fdf59846b163226583d19c2f28a78ec98174875b5e0dbb405e19`  
		Last Modified: Tue, 18 Jul 2017 23:56:24 GMT  
		Size: 76.7 MB (76689353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c634066335c08ac6b640afcaf07b499b17c0480ff780c0502228e71efdbb00`  
		Last Modified: Tue, 18 Jul 2017 23:56:13 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:da8015843d144f65f1e3de3f8a01e6ecf43d38c99433d9d488934246d4b7bbc0
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240302304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528ec6b0fa8cd2120444c4318c7d23fb9224d317b7f8b6f90a5cc42e9a941677`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:27:27 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:27:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:27:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:27:34 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:17 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:42:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:42:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:42:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:56 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:42:56 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 18 Jul 2017 23:43:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:45:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:45:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:45:46 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:45:47 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:45:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64782b2a92d7169e75dc0324da36aef00efdd6026c3d137ec2ce7469ee998281`  
		Last Modified: Tue, 18 Jul 2017 23:33:06 GMT  
		Size: 673.2 KB (673158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380cc3cfd27d113113da29f527b1b53173068667759836a746db4b350bf1ae7c`  
		Last Modified: Tue, 18 Jul 2017 23:33:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e890a2d4ce7dcf6c5861042440c8ec8eea7b1ffc8e7d81a34f353ef9e67611c`  
		Last Modified: Tue, 18 Jul 2017 23:56:16 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd56b15c618821c15bfdcd9cc2121fed6d85cab19e8ff6b9e1efac824f3b436`  
		Last Modified: Tue, 18 Jul 2017 23:56:18 GMT  
		Size: 14.4 MB (14421898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d66b3d31b6ef8ef198df0cd421ead690068cb9556119051259889b12a0cb33`  
		Last Modified: Tue, 18 Jul 2017 23:56:15 GMT  
		Size: 818.8 KB (818802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5845b7e772419fdb562436140c27b3f2ff12d42e982db49dd2f10e4e276f4ff`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc346098487b4356f2b2206d26536ebf1d85f581cef31edc5f15169bf8299f9`  
		Last Modified: Tue, 18 Jul 2017 23:56:25 GMT  
		Size: 59.2 MB (59241674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24662def763ef2159dbe937ee1949810384bf7b6c287d465d42c2b0d4321dc`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a17afe0da876d08940fdbf0dc526434432a95598512e61d10929a82dc81896`  
		Last Modified: Tue, 18 Jul 2017 23:56:14 GMT  
		Size: 2.4 MB (2447804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a306822b1fdf59846b163226583d19c2f28a78ec98174875b5e0dbb405e19`  
		Last Modified: Tue, 18 Jul 2017 23:56:24 GMT  
		Size: 76.7 MB (76689353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c634066335c08ac6b640afcaf07b499b17c0480ff780c0502228e71efdbb00`  
		Last Modified: Tue, 18 Jul 2017 23:56:13 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:da8015843d144f65f1e3de3f8a01e6ecf43d38c99433d9d488934246d4b7bbc0
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240302304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:528ec6b0fa8cd2120444c4318c7d23fb9224d317b7f8b6f90a5cc42e9a941677`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:27:27 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:27:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:27:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:27:34 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:17 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:42:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:42:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:42:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:56 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:42:56 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 18 Jul 2017 23:43:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:45:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:45:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:45:46 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:45:47 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:45:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64782b2a92d7169e75dc0324da36aef00efdd6026c3d137ec2ce7469ee998281`  
		Last Modified: Tue, 18 Jul 2017 23:33:06 GMT  
		Size: 673.2 KB (673158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380cc3cfd27d113113da29f527b1b53173068667759836a746db4b350bf1ae7c`  
		Last Modified: Tue, 18 Jul 2017 23:33:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e890a2d4ce7dcf6c5861042440c8ec8eea7b1ffc8e7d81a34f353ef9e67611c`  
		Last Modified: Tue, 18 Jul 2017 23:56:16 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd56b15c618821c15bfdcd9cc2121fed6d85cab19e8ff6b9e1efac824f3b436`  
		Last Modified: Tue, 18 Jul 2017 23:56:18 GMT  
		Size: 14.4 MB (14421898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d66b3d31b6ef8ef198df0cd421ead690068cb9556119051259889b12a0cb33`  
		Last Modified: Tue, 18 Jul 2017 23:56:15 GMT  
		Size: 818.8 KB (818802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5845b7e772419fdb562436140c27b3f2ff12d42e982db49dd2f10e4e276f4ff`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc346098487b4356f2b2206d26536ebf1d85f581cef31edc5f15169bf8299f9`  
		Last Modified: Tue, 18 Jul 2017 23:56:25 GMT  
		Size: 59.2 MB (59241674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24662def763ef2159dbe937ee1949810384bf7b6c287d465d42c2b0d4321dc`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a17afe0da876d08940fdbf0dc526434432a95598512e61d10929a82dc81896`  
		Last Modified: Tue, 18 Jul 2017 23:56:14 GMT  
		Size: 2.4 MB (2447804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a306822b1fdf59846b163226583d19c2f28a78ec98174875b5e0dbb405e19`  
		Last Modified: Tue, 18 Jul 2017 23:56:24 GMT  
		Size: 76.7 MB (76689353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c634066335c08ac6b640afcaf07b499b17c0480ff780c0502228e71efdbb00`  
		Last Modified: Tue, 18 Jul 2017 23:56:13 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2-passenger`

```console
$ docker pull redmine@sha256:3f0132e04994fdc02f838eef9e57a36a2e21f026803afa847dac6f530006710a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259050085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da68b79d184d7a16a55a442a94611df11ad78b592d6c295dfbdb22f1602b8740`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:27:27 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:27:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:27:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:27:34 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:17 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:42:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:42:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:42:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:56 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:42:56 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 18 Jul 2017 23:43:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:45:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:45:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:45:46 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:45:47 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:45:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:45:56 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:46:13 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:46:15 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:46:15 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64782b2a92d7169e75dc0324da36aef00efdd6026c3d137ec2ce7469ee998281`  
		Last Modified: Tue, 18 Jul 2017 23:33:06 GMT  
		Size: 673.2 KB (673158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380cc3cfd27d113113da29f527b1b53173068667759836a746db4b350bf1ae7c`  
		Last Modified: Tue, 18 Jul 2017 23:33:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e890a2d4ce7dcf6c5861042440c8ec8eea7b1ffc8e7d81a34f353ef9e67611c`  
		Last Modified: Tue, 18 Jul 2017 23:56:16 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd56b15c618821c15bfdcd9cc2121fed6d85cab19e8ff6b9e1efac824f3b436`  
		Last Modified: Tue, 18 Jul 2017 23:56:18 GMT  
		Size: 14.4 MB (14421898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d66b3d31b6ef8ef198df0cd421ead690068cb9556119051259889b12a0cb33`  
		Last Modified: Tue, 18 Jul 2017 23:56:15 GMT  
		Size: 818.8 KB (818802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5845b7e772419fdb562436140c27b3f2ff12d42e982db49dd2f10e4e276f4ff`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc346098487b4356f2b2206d26536ebf1d85f581cef31edc5f15169bf8299f9`  
		Last Modified: Tue, 18 Jul 2017 23:56:25 GMT  
		Size: 59.2 MB (59241674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24662def763ef2159dbe937ee1949810384bf7b6c287d465d42c2b0d4321dc`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a17afe0da876d08940fdbf0dc526434432a95598512e61d10929a82dc81896`  
		Last Modified: Tue, 18 Jul 2017 23:56:14 GMT  
		Size: 2.4 MB (2447804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a306822b1fdf59846b163226583d19c2f28a78ec98174875b5e0dbb405e19`  
		Last Modified: Tue, 18 Jul 2017 23:56:24 GMT  
		Size: 76.7 MB (76689353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c634066335c08ac6b640afcaf07b499b17c0480ff780c0502228e71efdbb00`  
		Last Modified: Tue, 18 Jul 2017 23:56:13 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89654f46ebc2d911a6052e9ac1acf73f997432ec9fbf78188464d96b4319d798`  
		Last Modified: Tue, 18 Jul 2017 23:57:13 GMT  
		Size: 14.5 MB (14524324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052776d4fb58aa8066c1a3d8cb5224f345db6a2e7af64bf22a50e53ce1f9b4dd`  
		Last Modified: Tue, 18 Jul 2017 23:57:12 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:3f0132e04994fdc02f838eef9e57a36a2e21f026803afa847dac6f530006710a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259050085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da68b79d184d7a16a55a442a94611df11ad78b592d6c295dfbdb22f1602b8740`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:27:27 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:27:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:27:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:27:34 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:17 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:42:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:42:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:42:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:56 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:42:56 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 18 Jul 2017 23:43:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:45:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:45:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:45:46 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:45:47 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:45:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:45:56 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:46:13 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:46:15 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:46:15 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64782b2a92d7169e75dc0324da36aef00efdd6026c3d137ec2ce7469ee998281`  
		Last Modified: Tue, 18 Jul 2017 23:33:06 GMT  
		Size: 673.2 KB (673158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380cc3cfd27d113113da29f527b1b53173068667759836a746db4b350bf1ae7c`  
		Last Modified: Tue, 18 Jul 2017 23:33:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e890a2d4ce7dcf6c5861042440c8ec8eea7b1ffc8e7d81a34f353ef9e67611c`  
		Last Modified: Tue, 18 Jul 2017 23:56:16 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd56b15c618821c15bfdcd9cc2121fed6d85cab19e8ff6b9e1efac824f3b436`  
		Last Modified: Tue, 18 Jul 2017 23:56:18 GMT  
		Size: 14.4 MB (14421898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d66b3d31b6ef8ef198df0cd421ead690068cb9556119051259889b12a0cb33`  
		Last Modified: Tue, 18 Jul 2017 23:56:15 GMT  
		Size: 818.8 KB (818802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5845b7e772419fdb562436140c27b3f2ff12d42e982db49dd2f10e4e276f4ff`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc346098487b4356f2b2206d26536ebf1d85f581cef31edc5f15169bf8299f9`  
		Last Modified: Tue, 18 Jul 2017 23:56:25 GMT  
		Size: 59.2 MB (59241674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24662def763ef2159dbe937ee1949810384bf7b6c287d465d42c2b0d4321dc`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a17afe0da876d08940fdbf0dc526434432a95598512e61d10929a82dc81896`  
		Last Modified: Tue, 18 Jul 2017 23:56:14 GMT  
		Size: 2.4 MB (2447804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a306822b1fdf59846b163226583d19c2f28a78ec98174875b5e0dbb405e19`  
		Last Modified: Tue, 18 Jul 2017 23:56:24 GMT  
		Size: 76.7 MB (76689353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c634066335c08ac6b640afcaf07b499b17c0480ff780c0502228e71efdbb00`  
		Last Modified: Tue, 18 Jul 2017 23:56:13 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89654f46ebc2d911a6052e9ac1acf73f997432ec9fbf78188464d96b4319d798`  
		Last Modified: Tue, 18 Jul 2017 23:57:13 GMT  
		Size: 14.5 MB (14524324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052776d4fb58aa8066c1a3d8cb5224f345db6a2e7af64bf22a50e53ce1f9b4dd`  
		Last Modified: Tue, 18 Jul 2017 23:57:12 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:3f0132e04994fdc02f838eef9e57a36a2e21f026803afa847dac6f530006710a
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259050085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da68b79d184d7a16a55a442a94611df11ad78b592d6c295dfbdb22f1602b8740`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:27:27 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:27:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:27:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:27:34 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:17 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:42:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:42:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:42:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:56 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:42:56 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 18 Jul 2017 23:43:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:45:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:45:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:45:46 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:45:47 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:45:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:45:56 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:46:13 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:46:15 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:46:15 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64782b2a92d7169e75dc0324da36aef00efdd6026c3d137ec2ce7469ee998281`  
		Last Modified: Tue, 18 Jul 2017 23:33:06 GMT  
		Size: 673.2 KB (673158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380cc3cfd27d113113da29f527b1b53173068667759836a746db4b350bf1ae7c`  
		Last Modified: Tue, 18 Jul 2017 23:33:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e890a2d4ce7dcf6c5861042440c8ec8eea7b1ffc8e7d81a34f353ef9e67611c`  
		Last Modified: Tue, 18 Jul 2017 23:56:16 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd56b15c618821c15bfdcd9cc2121fed6d85cab19e8ff6b9e1efac824f3b436`  
		Last Modified: Tue, 18 Jul 2017 23:56:18 GMT  
		Size: 14.4 MB (14421898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d66b3d31b6ef8ef198df0cd421ead690068cb9556119051259889b12a0cb33`  
		Last Modified: Tue, 18 Jul 2017 23:56:15 GMT  
		Size: 818.8 KB (818802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5845b7e772419fdb562436140c27b3f2ff12d42e982db49dd2f10e4e276f4ff`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc346098487b4356f2b2206d26536ebf1d85f581cef31edc5f15169bf8299f9`  
		Last Modified: Tue, 18 Jul 2017 23:56:25 GMT  
		Size: 59.2 MB (59241674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24662def763ef2159dbe937ee1949810384bf7b6c287d465d42c2b0d4321dc`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a17afe0da876d08940fdbf0dc526434432a95598512e61d10929a82dc81896`  
		Last Modified: Tue, 18 Jul 2017 23:56:14 GMT  
		Size: 2.4 MB (2447804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a306822b1fdf59846b163226583d19c2f28a78ec98174875b5e0dbb405e19`  
		Last Modified: Tue, 18 Jul 2017 23:56:24 GMT  
		Size: 76.7 MB (76689353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c634066335c08ac6b640afcaf07b499b17c0480ff780c0502228e71efdbb00`  
		Last Modified: Tue, 18 Jul 2017 23:56:13 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89654f46ebc2d911a6052e9ac1acf73f997432ec9fbf78188464d96b4319d798`  
		Last Modified: Tue, 18 Jul 2017 23:57:13 GMT  
		Size: 14.5 MB (14524324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052776d4fb58aa8066c1a3d8cb5224f345db6a2e7af64bf22a50e53ce1f9b4dd`  
		Last Modified: Tue, 18 Jul 2017 23:57:12 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:3f0132e04994fdc02f838eef9e57a36a2e21f026803afa847dac6f530006710a
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259050085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da68b79d184d7a16a55a442a94611df11ad78b592d6c295dfbdb22f1602b8740`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:27:27 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:27:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:27:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:27:34 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:17 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:42:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:42:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:42:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:56 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:42:56 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 18 Jul 2017 23:43:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:45:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:45:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:45:46 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:45:47 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:45:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:45:56 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:46:13 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:46:15 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:46:15 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64782b2a92d7169e75dc0324da36aef00efdd6026c3d137ec2ce7469ee998281`  
		Last Modified: Tue, 18 Jul 2017 23:33:06 GMT  
		Size: 673.2 KB (673158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380cc3cfd27d113113da29f527b1b53173068667759836a746db4b350bf1ae7c`  
		Last Modified: Tue, 18 Jul 2017 23:33:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e890a2d4ce7dcf6c5861042440c8ec8eea7b1ffc8e7d81a34f353ef9e67611c`  
		Last Modified: Tue, 18 Jul 2017 23:56:16 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd56b15c618821c15bfdcd9cc2121fed6d85cab19e8ff6b9e1efac824f3b436`  
		Last Modified: Tue, 18 Jul 2017 23:56:18 GMT  
		Size: 14.4 MB (14421898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d66b3d31b6ef8ef198df0cd421ead690068cb9556119051259889b12a0cb33`  
		Last Modified: Tue, 18 Jul 2017 23:56:15 GMT  
		Size: 818.8 KB (818802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5845b7e772419fdb562436140c27b3f2ff12d42e982db49dd2f10e4e276f4ff`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc346098487b4356f2b2206d26536ebf1d85f581cef31edc5f15169bf8299f9`  
		Last Modified: Tue, 18 Jul 2017 23:56:25 GMT  
		Size: 59.2 MB (59241674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24662def763ef2159dbe937ee1949810384bf7b6c287d465d42c2b0d4321dc`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a17afe0da876d08940fdbf0dc526434432a95598512e61d10929a82dc81896`  
		Last Modified: Tue, 18 Jul 2017 23:56:14 GMT  
		Size: 2.4 MB (2447804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a306822b1fdf59846b163226583d19c2f28a78ec98174875b5e0dbb405e19`  
		Last Modified: Tue, 18 Jul 2017 23:56:24 GMT  
		Size: 76.7 MB (76689353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c634066335c08ac6b640afcaf07b499b17c0480ff780c0502228e71efdbb00`  
		Last Modified: Tue, 18 Jul 2017 23:56:13 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89654f46ebc2d911a6052e9ac1acf73f997432ec9fbf78188464d96b4319d798`  
		Last Modified: Tue, 18 Jul 2017 23:57:13 GMT  
		Size: 14.5 MB (14524324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052776d4fb58aa8066c1a3d8cb5224f345db6a2e7af64bf22a50e53ce1f9b4dd`  
		Last Modified: Tue, 18 Jul 2017 23:57:12 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:ce75251fc0ea5c0d3d5701ef5a8ecf85b50c961964e357acad0d0477622639f4
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251556985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab639579c7cea5bd3959fa84f2cb88d4bd9351086d10dc768b46014ee0361f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:47:21 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 18 Jul 2017 23:47:22 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 18 Jul 2017 23:47:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:50:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:50:05 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:50:06 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:50:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:50:07 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:50:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17f67ea4df47686a3da9899024512b80dc7b3217ea1a47b0982c6b4976423c`  
		Last Modified: Tue, 18 Jul 2017 23:58:01 GMT  
		Size: 2.4 MB (2390085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66a9b717a451b542dd8c4368091e8ee290927c7dc02cca3ecb0f04721e01e1`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 77.4 MB (77375739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2467ba1c2982843110f8c1f5c6c9519357f0098ba2dbe9e9a54fa33fee56cf30`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:ce75251fc0ea5c0d3d5701ef5a8ecf85b50c961964e357acad0d0477622639f4
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251556985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab639579c7cea5bd3959fa84f2cb88d4bd9351086d10dc768b46014ee0361f3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:47:21 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 18 Jul 2017 23:47:22 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 18 Jul 2017 23:47:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:50:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:50:05 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:50:06 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:50:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:50:07 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:50:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17f67ea4df47686a3da9899024512b80dc7b3217ea1a47b0982c6b4976423c`  
		Last Modified: Tue, 18 Jul 2017 23:58:01 GMT  
		Size: 2.4 MB (2390085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66a9b717a451b542dd8c4368091e8ee290927c7dc02cca3ecb0f04721e01e1`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 77.4 MB (77375739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2467ba1c2982843110f8c1f5c6c9519357f0098ba2dbe9e9a54fa33fee56cf30`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4-passenger`

```console
$ docker pull redmine@sha256:ddb2846dab2b1c8625a6485bfe0970db0f7782d70a986208f2662780550562c8
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270298351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d390802c9c776fa5e4d465ea32a64abbbe05dbb0d41a9df79878127d13bc80f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:47:21 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 18 Jul 2017 23:47:22 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 18 Jul 2017 23:47:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:50:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:50:05 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:50:06 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:50:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:50:07 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:50:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:50:17 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:50:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:50:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:50:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17f67ea4df47686a3da9899024512b80dc7b3217ea1a47b0982c6b4976423c`  
		Last Modified: Tue, 18 Jul 2017 23:58:01 GMT  
		Size: 2.4 MB (2390085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66a9b717a451b542dd8c4368091e8ee290927c7dc02cca3ecb0f04721e01e1`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 77.4 MB (77375739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2467ba1c2982843110f8c1f5c6c9519357f0098ba2dbe9e9a54fa33fee56cf30`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79c975827d17112ee83647a6607d47e2de871b0ff6d9e7aaad12d2c03693874`  
		Last Modified: Tue, 18 Jul 2017 23:58:40 GMT  
		Size: 14.5 MB (14517905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9773786e14c756032e082100d4070856c50f8ebdc3bbacb9e663c11291c7b648`  
		Last Modified: Tue, 18 Jul 2017 23:58:37 GMT  
		Size: 4.2 MB (4223461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:ddb2846dab2b1c8625a6485bfe0970db0f7782d70a986208f2662780550562c8
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270298351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d390802c9c776fa5e4d465ea32a64abbbe05dbb0d41a9df79878127d13bc80f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:47:21 GMT
ENV REDMINE_VERSION=3.3.4
# Tue, 18 Jul 2017 23:47:22 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Tue, 18 Jul 2017 23:47:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:50:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:50:05 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:50:06 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:50:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:50:07 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:50:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:50:17 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:50:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:50:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:50:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f17f67ea4df47686a3da9899024512b80dc7b3217ea1a47b0982c6b4976423c`  
		Last Modified: Tue, 18 Jul 2017 23:58:01 GMT  
		Size: 2.4 MB (2390085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d66a9b717a451b542dd8c4368091e8ee290927c7dc02cca3ecb0f04721e01e1`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 77.4 MB (77375739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2467ba1c2982843110f8c1f5c6c9519357f0098ba2dbe9e9a54fa33fee56cf30`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79c975827d17112ee83647a6607d47e2de871b0ff6d9e7aaad12d2c03693874`  
		Last Modified: Tue, 18 Jul 2017 23:58:40 GMT  
		Size: 14.5 MB (14517905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9773786e14c756032e082100d4070856c50f8ebdc3bbacb9e663c11291c7b648`  
		Last Modified: Tue, 18 Jul 2017 23:58:37 GMT  
		Size: 4.2 MB (4223461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:79425a3a3df2bccb53db16a6bd5b95b66dd4e7039bb867d1b484917d2e72d227
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251513153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f6bad7dce75a9368eb1aeb340fc0a356d46174da716d158d0c8e8a3e44380c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:50:43 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 18 Jul 2017 23:50:43 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 18 Jul 2017 23:50:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:52:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:52:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:52:47 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:52:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:52:48 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:52:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880ed24c72d845648cbaf9c3491df9e3f6f056ffeee0bdf07d1b743ce8d7fa82`  
		Last Modified: Tue, 18 Jul 2017 23:59:05 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff2b7714df33c1b6a24494809557726887610dd86d80ee5a5f8cae530e800b`  
		Last Modified: Tue, 18 Jul 2017 23:59:13 GMT  
		Size: 77.4 MB (77375039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2e57c46854d03f2204d6cf00a81f6d160e526f44bcb72fac5eabb479eb4eaf`  
		Last Modified: Tue, 18 Jul 2017 23:59:04 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:79425a3a3df2bccb53db16a6bd5b95b66dd4e7039bb867d1b484917d2e72d227
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251513153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f6bad7dce75a9368eb1aeb340fc0a356d46174da716d158d0c8e8a3e44380c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:50:43 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 18 Jul 2017 23:50:43 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 18 Jul 2017 23:50:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:52:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:52:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:52:47 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:52:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:52:48 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:52:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880ed24c72d845648cbaf9c3491df9e3f6f056ffeee0bdf07d1b743ce8d7fa82`  
		Last Modified: Tue, 18 Jul 2017 23:59:05 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff2b7714df33c1b6a24494809557726887610dd86d80ee5a5f8cae530e800b`  
		Last Modified: Tue, 18 Jul 2017 23:59:13 GMT  
		Size: 77.4 MB (77375039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2e57c46854d03f2204d6cf00a81f6d160e526f44bcb72fac5eabb479eb4eaf`  
		Last Modified: Tue, 18 Jul 2017 23:59:04 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7-passenger`

```console
$ docker pull redmine@sha256:a6281852578c981ae96dae672b79fe4684d93ecffcbc6bf7041ba8cc36c8b31a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270254407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5569dc83e80035305525cf146f9369c44de0a4c5fb6ae5be5b5cda376e2cc3b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:50:43 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 18 Jul 2017 23:50:43 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 18 Jul 2017 23:50:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:52:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:52:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:52:47 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:52:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:52:48 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:52:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:52:56 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:53:12 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:53:14 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:53:14 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880ed24c72d845648cbaf9c3491df9e3f6f056ffeee0bdf07d1b743ce8d7fa82`  
		Last Modified: Tue, 18 Jul 2017 23:59:05 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff2b7714df33c1b6a24494809557726887610dd86d80ee5a5f8cae530e800b`  
		Last Modified: Tue, 18 Jul 2017 23:59:13 GMT  
		Size: 77.4 MB (77375039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2e57c46854d03f2204d6cf00a81f6d160e526f44bcb72fac5eabb479eb4eaf`  
		Last Modified: Tue, 18 Jul 2017 23:59:04 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e9dae185667a88bf0a4d6c8b39669eaf7c79b5b61266fb180d6b37d7f1c731`  
		Last Modified: Tue, 18 Jul 2017 23:59:42 GMT  
		Size: 14.5 MB (14517797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1c827d1717732779276c39ccb5dd4f05e640c0244475a96b68168ba021d5eb`  
		Last Modified: Tue, 18 Jul 2017 23:59:41 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:a6281852578c981ae96dae672b79fe4684d93ecffcbc6bf7041ba8cc36c8b31a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270254407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5569dc83e80035305525cf146f9369c44de0a4c5fb6ae5be5b5cda376e2cc3b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:50:43 GMT
ENV REDMINE_VERSION=3.2.7
# Tue, 18 Jul 2017 23:50:43 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Tue, 18 Jul 2017 23:50:47 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:52:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:52:46 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:52:47 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:52:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:52:48 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:52:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:52:56 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:53:12 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:53:14 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:53:14 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880ed24c72d845648cbaf9c3491df9e3f6f056ffeee0bdf07d1b743ce8d7fa82`  
		Last Modified: Tue, 18 Jul 2017 23:59:05 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fff2b7714df33c1b6a24494809557726887610dd86d80ee5a5f8cae530e800b`  
		Last Modified: Tue, 18 Jul 2017 23:59:13 GMT  
		Size: 77.4 MB (77375039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2e57c46854d03f2204d6cf00a81f6d160e526f44bcb72fac5eabb479eb4eaf`  
		Last Modified: Tue, 18 Jul 2017 23:59:04 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e9dae185667a88bf0a4d6c8b39669eaf7c79b5b61266fb180d6b37d7f1c731`  
		Last Modified: Tue, 18 Jul 2017 23:59:42 GMT  
		Size: 14.5 MB (14517797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1c827d1717732779276c39ccb5dd4f05e640c0244475a96b68168ba021d5eb`  
		Last Modified: Tue, 18 Jul 2017 23:59:41 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:31ed3a810567d8acee69f813007b5706c1b5bbf5a17a8cf1c645e3d9a1c7730c
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241941611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c55b3ff5f59b7dcceaec6e1fea89021ebceb19e61c498c0b3a87a851fc0c685`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:53:23 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 18 Jul 2017 23:53:23 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 18 Jul 2017 23:53:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:55:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:55:31 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:55:32 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:55:33 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:55:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1077a270ebc5773194c8c5c7ca7a2fead4272ad36ab777d4fdd25acbb58b63`  
		Last Modified: Wed, 19 Jul 2017 00:00:08 GMT  
		Size: 2.3 MB (2281375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a3a203ad473dbe773bdc4d718fe8a4ee04c55aaab8483aa52eae96898af4df`  
		Last Modified: Wed, 19 Jul 2017 00:00:25 GMT  
		Size: 67.9 MB (67869074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bc389cd48c5e78788454356b1e5f8ed3cbe4dfddff9169cb97dc923629af14`  
		Last Modified: Wed, 19 Jul 2017 00:00:08 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:31ed3a810567d8acee69f813007b5706c1b5bbf5a17a8cf1c645e3d9a1c7730c
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.9 MB (241941611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c55b3ff5f59b7dcceaec6e1fea89021ebceb19e61c498c0b3a87a851fc0c685`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:53:23 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 18 Jul 2017 23:53:23 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 18 Jul 2017 23:53:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:55:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:55:31 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:55:32 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:55:33 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:55:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1077a270ebc5773194c8c5c7ca7a2fead4272ad36ab777d4fdd25acbb58b63`  
		Last Modified: Wed, 19 Jul 2017 00:00:08 GMT  
		Size: 2.3 MB (2281375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a3a203ad473dbe773bdc4d718fe8a4ee04c55aaab8483aa52eae96898af4df`  
		Last Modified: Wed, 19 Jul 2017 00:00:25 GMT  
		Size: 67.9 MB (67869074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bc389cd48c5e78788454356b1e5f8ed3cbe4dfddff9169cb97dc923629af14`  
		Last Modified: Wed, 19 Jul 2017 00:00:08 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:9aa28042477f755d54220d17280a757ff695e0554caf78eb9d532b23c0719cda
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260682532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539d377202dd9e43e5de69a9c56cdcc6bf5ad66d8b014cbf7ed6199d1f831610`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:53:23 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 18 Jul 2017 23:53:23 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 18 Jul 2017 23:53:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:55:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:55:31 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:55:32 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:55:33 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:55:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:55:42 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:55:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:56:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:56:00 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1077a270ebc5773194c8c5c7ca7a2fead4272ad36ab777d4fdd25acbb58b63`  
		Last Modified: Wed, 19 Jul 2017 00:00:08 GMT  
		Size: 2.3 MB (2281375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a3a203ad473dbe773bdc4d718fe8a4ee04c55aaab8483aa52eae96898af4df`  
		Last Modified: Wed, 19 Jul 2017 00:00:25 GMT  
		Size: 67.9 MB (67869074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bc389cd48c5e78788454356b1e5f8ed3cbe4dfddff9169cb97dc923629af14`  
		Last Modified: Wed, 19 Jul 2017 00:00:08 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3add825e963a676f45e9966b7714cef6aa639f2ee114d38d7687a5f37cfec48e`  
		Last Modified: Wed, 19 Jul 2017 00:00:56 GMT  
		Size: 14.5 MB (14517469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22246bc3bd315d2ec02015018e19f539f140399780d3922886e7fc8c034e730e`  
		Last Modified: Wed, 19 Jul 2017 00:00:55 GMT  
		Size: 4.2 MB (4223452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:9aa28042477f755d54220d17280a757ff695e0554caf78eb9d532b23c0719cda
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260682532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539d377202dd9e43e5de69a9c56cdcc6bf5ad66d8b014cbf7ed6199d1f831610`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:31:06 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_VERSION=2.2.7
# Fri, 23 Jun 2017 10:31:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Fri, 23 Jun 2017 10:31:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:33:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:25:17 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:25:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:25:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:25:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:25:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:25:23 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:46:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:46:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:46:45 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:46:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:46:50 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:46:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:47:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:47:20 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:47:21 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:53:23 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 18 Jul 2017 23:53:23 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 18 Jul 2017 23:53:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:55:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:55:31 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:55:32 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:55:33 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:55:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:55:42 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:55:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:56:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:56:00 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a78d040588fe5a8ebd728809b97fafa6296dd48b745a4df7406d0a7776b8fb`  
		Last Modified: Sat, 24 Jun 2017 23:41:54 GMT  
		Size: 33.8 MB (33847090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d611cacbf3858f8aa7c49b4f115f56b1112fe8122686bf6c2a193aa36bf6007`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 673.2 KB (673151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3566341288ddf0b188b5806ad5a339612f647f79f0834916f2567d704c4fea97`  
		Last Modified: Tue, 18 Jul 2017 23:28:54 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb788ceaa916d281c355d96acd4eac07d5581ed38b084887f69bf8028559e45`  
		Last Modified: Tue, 18 Jul 2017 23:58:03 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b20439956bb83766c84a536c7e0bd55ef75d8c10509595abb564e5e8f775f5`  
		Last Modified: Tue, 18 Jul 2017 23:58:05 GMT  
		Size: 14.4 MB (14422018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26350ac671dceda036e7b25fb04b9c02f717117a3e0b67e04f77282b2203fa31`  
		Last Modified: Tue, 18 Jul 2017 23:58:02 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1126c7147e6769cbde92dcc1d921354213ec9cd5eff8a0b5a491747cef016ea6`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b70619eec7f264fc619f085c8544b65fdeb443e3d0042fe1942b00dd499b15b`  
		Last Modified: Tue, 18 Jul 2017 23:58:11 GMT  
		Size: 59.2 MB (59241737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f6ef4b153b91ac48f4f351b5710d7161bd3f1e81e93938f819ba5ae86fa3ad`  
		Last Modified: Tue, 18 Jul 2017 23:57:59 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1077a270ebc5773194c8c5c7ca7a2fead4272ad36ab777d4fdd25acbb58b63`  
		Last Modified: Wed, 19 Jul 2017 00:00:08 GMT  
		Size: 2.3 MB (2281375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a3a203ad473dbe773bdc4d718fe8a4ee04c55aaab8483aa52eae96898af4df`  
		Last Modified: Wed, 19 Jul 2017 00:00:25 GMT  
		Size: 67.9 MB (67869074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50bc389cd48c5e78788454356b1e5f8ed3cbe4dfddff9169cb97dc923629af14`  
		Last Modified: Wed, 19 Jul 2017 00:00:08 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3add825e963a676f45e9966b7714cef6aa639f2ee114d38d7687a5f37cfec48e`  
		Last Modified: Wed, 19 Jul 2017 00:00:56 GMT  
		Size: 14.5 MB (14517469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22246bc3bd315d2ec02015018e19f539f140399780d3922886e7fc8c034e730e`  
		Last Modified: Wed, 19 Jul 2017 00:00:55 GMT  
		Size: 4.2 MB (4223452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
