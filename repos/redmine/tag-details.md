<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.4.1`](#redmine341)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.4.1-passenger`](#redmine341-passenger)
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

## `redmine:3.4.1`

```console
$ docker pull redmine@sha256:57f58119bf91c3ba2360252f7f031bb0a103f93894f075af6b20025eecf18590
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240255660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ecbb40b50f7022051720ef36f9ec4b9e0982eb4ee5051c67e8fc5f83c6652a`
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
# Fri, 23 Jun 2017 10:48:34 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:48:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:48:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:48:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:48:41 GMT
CMD ["irb"]
# Thu, 13 Jul 2017 16:54:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Jul 2017 16:54:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:54:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 13 Jul 2017 16:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Jul 2017 16:55:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 13 Jul 2017 16:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 13 Jul 2017 16:55:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:55:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Jul 2017 16:55:55 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Jul 2017 16:55:55 GMT
ENV REDMINE_VERSION=3.4.1
# Thu, 13 Jul 2017 16:55:56 GMT
ENV REDMINE_DOWNLOAD_MD5=79b07289c0b591e81180d017dbf6ebf4
# Thu, 13 Jul 2017 16:56:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 13 Jul 2017 16:59:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Jul 2017 16:59:06 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 13 Jul 2017 16:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Jul 2017 16:59:07 GMT
EXPOSE 3000/tcp
# Thu, 13 Jul 2017 16:59:07 GMT
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
	-	`sha256:35959beb44bf6d48d86ca6a185b6a00762f12f72bdaacd83ec6855809b3b0202`  
		Last Modified: Sat, 24 Jun 2017 23:51:33 GMT  
		Size: 677.9 KB (677903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a0fb08216f01a5b1754fa23f7680481bfcaa771407253fb44ba6d7dceb719`  
		Last Modified: Sat, 24 Jun 2017 23:51:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250bfb0f9a30cfd1e869ea1e7c066033204f522f0925f420b1c94650e7531e14`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d5c753999ce0a791fd5b6b1e6add8027af7bed345bee4b753d39ab1256c1c`  
		Last Modified: Thu, 13 Jul 2017 17:00:22 GMT  
		Size: 14.4 MB (14421998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693b99c8a9f1a0f75970c5391267af13f682bf226fc5a837d595f15d9e51cfd`  
		Last Modified: Thu, 13 Jul 2017 17:00:17 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bfab5f8b684e67ad8e4a2292bb8c43ebf539f8372d890446afc83338c02aa7`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96182d6f933e7d32525b91a5d1dfabd4d45a87832472bfc019225a44bac194c7`  
		Last Modified: Thu, 13 Jul 2017 17:00:31 GMT  
		Size: 59.2 MB (59236922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4697cc94f9bc528286af24dfa9d026a111678f19e2b4438b01e57bb886402231`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fb8f7c4709e80785a91c0ab7bdd72b9b2c9636605fd12bd1f155a732dc00eb`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 2.4 MB (2447244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6adf627b1ed735741063c5be1784ab27d16f70c6491014fc4d02e802b1691da`  
		Last Modified: Thu, 13 Jul 2017 17:00:30 GMT  
		Size: 76.6 MB (76643268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1e604695b3229a9dd4b844746f7794514133e272a560b6b53b4dcab160273a`  
		Last Modified: Thu, 13 Jul 2017 17:00:14 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:57f58119bf91c3ba2360252f7f031bb0a103f93894f075af6b20025eecf18590
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240255660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ecbb40b50f7022051720ef36f9ec4b9e0982eb4ee5051c67e8fc5f83c6652a`
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
# Fri, 23 Jun 2017 10:48:34 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:48:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:48:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:48:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:48:41 GMT
CMD ["irb"]
# Thu, 13 Jul 2017 16:54:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Jul 2017 16:54:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:54:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 13 Jul 2017 16:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Jul 2017 16:55:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 13 Jul 2017 16:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 13 Jul 2017 16:55:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:55:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Jul 2017 16:55:55 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Jul 2017 16:55:55 GMT
ENV REDMINE_VERSION=3.4.1
# Thu, 13 Jul 2017 16:55:56 GMT
ENV REDMINE_DOWNLOAD_MD5=79b07289c0b591e81180d017dbf6ebf4
# Thu, 13 Jul 2017 16:56:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 13 Jul 2017 16:59:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Jul 2017 16:59:06 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 13 Jul 2017 16:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Jul 2017 16:59:07 GMT
EXPOSE 3000/tcp
# Thu, 13 Jul 2017 16:59:07 GMT
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
	-	`sha256:35959beb44bf6d48d86ca6a185b6a00762f12f72bdaacd83ec6855809b3b0202`  
		Last Modified: Sat, 24 Jun 2017 23:51:33 GMT  
		Size: 677.9 KB (677903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a0fb08216f01a5b1754fa23f7680481bfcaa771407253fb44ba6d7dceb719`  
		Last Modified: Sat, 24 Jun 2017 23:51:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250bfb0f9a30cfd1e869ea1e7c066033204f522f0925f420b1c94650e7531e14`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d5c753999ce0a791fd5b6b1e6add8027af7bed345bee4b753d39ab1256c1c`  
		Last Modified: Thu, 13 Jul 2017 17:00:22 GMT  
		Size: 14.4 MB (14421998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693b99c8a9f1a0f75970c5391267af13f682bf226fc5a837d595f15d9e51cfd`  
		Last Modified: Thu, 13 Jul 2017 17:00:17 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bfab5f8b684e67ad8e4a2292bb8c43ebf539f8372d890446afc83338c02aa7`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96182d6f933e7d32525b91a5d1dfabd4d45a87832472bfc019225a44bac194c7`  
		Last Modified: Thu, 13 Jul 2017 17:00:31 GMT  
		Size: 59.2 MB (59236922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4697cc94f9bc528286af24dfa9d026a111678f19e2b4438b01e57bb886402231`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fb8f7c4709e80785a91c0ab7bdd72b9b2c9636605fd12bd1f155a732dc00eb`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 2.4 MB (2447244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6adf627b1ed735741063c5be1784ab27d16f70c6491014fc4d02e802b1691da`  
		Last Modified: Thu, 13 Jul 2017 17:00:30 GMT  
		Size: 76.6 MB (76643268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1e604695b3229a9dd4b844746f7794514133e272a560b6b53b4dcab160273a`  
		Last Modified: Thu, 13 Jul 2017 17:00:14 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:57f58119bf91c3ba2360252f7f031bb0a103f93894f075af6b20025eecf18590
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240255660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ecbb40b50f7022051720ef36f9ec4b9e0982eb4ee5051c67e8fc5f83c6652a`
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
# Fri, 23 Jun 2017 10:48:34 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:48:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:48:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:48:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:48:41 GMT
CMD ["irb"]
# Thu, 13 Jul 2017 16:54:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Jul 2017 16:54:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:54:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 13 Jul 2017 16:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Jul 2017 16:55:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 13 Jul 2017 16:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 13 Jul 2017 16:55:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:55:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Jul 2017 16:55:55 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Jul 2017 16:55:55 GMT
ENV REDMINE_VERSION=3.4.1
# Thu, 13 Jul 2017 16:55:56 GMT
ENV REDMINE_DOWNLOAD_MD5=79b07289c0b591e81180d017dbf6ebf4
# Thu, 13 Jul 2017 16:56:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 13 Jul 2017 16:59:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Jul 2017 16:59:06 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 13 Jul 2017 16:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Jul 2017 16:59:07 GMT
EXPOSE 3000/tcp
# Thu, 13 Jul 2017 16:59:07 GMT
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
	-	`sha256:35959beb44bf6d48d86ca6a185b6a00762f12f72bdaacd83ec6855809b3b0202`  
		Last Modified: Sat, 24 Jun 2017 23:51:33 GMT  
		Size: 677.9 KB (677903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a0fb08216f01a5b1754fa23f7680481bfcaa771407253fb44ba6d7dceb719`  
		Last Modified: Sat, 24 Jun 2017 23:51:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250bfb0f9a30cfd1e869ea1e7c066033204f522f0925f420b1c94650e7531e14`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d5c753999ce0a791fd5b6b1e6add8027af7bed345bee4b753d39ab1256c1c`  
		Last Modified: Thu, 13 Jul 2017 17:00:22 GMT  
		Size: 14.4 MB (14421998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693b99c8a9f1a0f75970c5391267af13f682bf226fc5a837d595f15d9e51cfd`  
		Last Modified: Thu, 13 Jul 2017 17:00:17 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bfab5f8b684e67ad8e4a2292bb8c43ebf539f8372d890446afc83338c02aa7`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96182d6f933e7d32525b91a5d1dfabd4d45a87832472bfc019225a44bac194c7`  
		Last Modified: Thu, 13 Jul 2017 17:00:31 GMT  
		Size: 59.2 MB (59236922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4697cc94f9bc528286af24dfa9d026a111678f19e2b4438b01e57bb886402231`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fb8f7c4709e80785a91c0ab7bdd72b9b2c9636605fd12bd1f155a732dc00eb`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 2.4 MB (2447244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6adf627b1ed735741063c5be1784ab27d16f70c6491014fc4d02e802b1691da`  
		Last Modified: Thu, 13 Jul 2017 17:00:30 GMT  
		Size: 76.6 MB (76643268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1e604695b3229a9dd4b844746f7794514133e272a560b6b53b4dcab160273a`  
		Last Modified: Thu, 13 Jul 2017 17:00:14 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:57f58119bf91c3ba2360252f7f031bb0a103f93894f075af6b20025eecf18590
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.3 MB (240255660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ecbb40b50f7022051720ef36f9ec4b9e0982eb4ee5051c67e8fc5f83c6652a`
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
# Fri, 23 Jun 2017 10:48:34 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:48:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:48:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:48:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:48:41 GMT
CMD ["irb"]
# Thu, 13 Jul 2017 16:54:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Jul 2017 16:54:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:54:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 13 Jul 2017 16:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Jul 2017 16:55:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 13 Jul 2017 16:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 13 Jul 2017 16:55:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:55:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Jul 2017 16:55:55 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Jul 2017 16:55:55 GMT
ENV REDMINE_VERSION=3.4.1
# Thu, 13 Jul 2017 16:55:56 GMT
ENV REDMINE_DOWNLOAD_MD5=79b07289c0b591e81180d017dbf6ebf4
# Thu, 13 Jul 2017 16:56:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 13 Jul 2017 16:59:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Jul 2017 16:59:06 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 13 Jul 2017 16:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Jul 2017 16:59:07 GMT
EXPOSE 3000/tcp
# Thu, 13 Jul 2017 16:59:07 GMT
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
	-	`sha256:35959beb44bf6d48d86ca6a185b6a00762f12f72bdaacd83ec6855809b3b0202`  
		Last Modified: Sat, 24 Jun 2017 23:51:33 GMT  
		Size: 677.9 KB (677903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a0fb08216f01a5b1754fa23f7680481bfcaa771407253fb44ba6d7dceb719`  
		Last Modified: Sat, 24 Jun 2017 23:51:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250bfb0f9a30cfd1e869ea1e7c066033204f522f0925f420b1c94650e7531e14`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d5c753999ce0a791fd5b6b1e6add8027af7bed345bee4b753d39ab1256c1c`  
		Last Modified: Thu, 13 Jul 2017 17:00:22 GMT  
		Size: 14.4 MB (14421998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693b99c8a9f1a0f75970c5391267af13f682bf226fc5a837d595f15d9e51cfd`  
		Last Modified: Thu, 13 Jul 2017 17:00:17 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bfab5f8b684e67ad8e4a2292bb8c43ebf539f8372d890446afc83338c02aa7`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96182d6f933e7d32525b91a5d1dfabd4d45a87832472bfc019225a44bac194c7`  
		Last Modified: Thu, 13 Jul 2017 17:00:31 GMT  
		Size: 59.2 MB (59236922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4697cc94f9bc528286af24dfa9d026a111678f19e2b4438b01e57bb886402231`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fb8f7c4709e80785a91c0ab7bdd72b9b2c9636605fd12bd1f155a732dc00eb`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 2.4 MB (2447244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6adf627b1ed735741063c5be1784ab27d16f70c6491014fc4d02e802b1691da`  
		Last Modified: Thu, 13 Jul 2017 17:00:30 GMT  
		Size: 76.6 MB (76643268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1e604695b3229a9dd4b844746f7794514133e272a560b6b53b4dcab160273a`  
		Last Modified: Thu, 13 Jul 2017 17:00:14 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.1-passenger`

```console
$ docker pull redmine@sha256:d5dca0dd01c321f37f3c3fa1da4c7f52792ab14c1bd744bd66cede7d3585ae68
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.1-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259003477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46b6be178e97a5fb1d4d859e6a9dbc4f1ea28f896dbbf88f9b065193914da94`
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
# Fri, 23 Jun 2017 10:48:34 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:48:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:48:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:48:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:48:41 GMT
CMD ["irb"]
# Thu, 13 Jul 2017 16:54:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Jul 2017 16:54:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:54:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 13 Jul 2017 16:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Jul 2017 16:55:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 13 Jul 2017 16:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 13 Jul 2017 16:55:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:55:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Jul 2017 16:55:55 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Jul 2017 16:55:55 GMT
ENV REDMINE_VERSION=3.4.1
# Thu, 13 Jul 2017 16:55:56 GMT
ENV REDMINE_DOWNLOAD_MD5=79b07289c0b591e81180d017dbf6ebf4
# Thu, 13 Jul 2017 16:56:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 13 Jul 2017 16:59:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Jul 2017 16:59:06 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 13 Jul 2017 16:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Jul 2017 16:59:07 GMT
EXPOSE 3000/tcp
# Thu, 13 Jul 2017 16:59:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 13 Jul 2017 16:59:29 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 13 Jul 2017 16:59:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:53 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 13 Jul 2017 17:00:00 GMT
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
	-	`sha256:35959beb44bf6d48d86ca6a185b6a00762f12f72bdaacd83ec6855809b3b0202`  
		Last Modified: Sat, 24 Jun 2017 23:51:33 GMT  
		Size: 677.9 KB (677903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a0fb08216f01a5b1754fa23f7680481bfcaa771407253fb44ba6d7dceb719`  
		Last Modified: Sat, 24 Jun 2017 23:51:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250bfb0f9a30cfd1e869ea1e7c066033204f522f0925f420b1c94650e7531e14`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d5c753999ce0a791fd5b6b1e6add8027af7bed345bee4b753d39ab1256c1c`  
		Last Modified: Thu, 13 Jul 2017 17:00:22 GMT  
		Size: 14.4 MB (14421998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693b99c8a9f1a0f75970c5391267af13f682bf226fc5a837d595f15d9e51cfd`  
		Last Modified: Thu, 13 Jul 2017 17:00:17 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bfab5f8b684e67ad8e4a2292bb8c43ebf539f8372d890446afc83338c02aa7`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96182d6f933e7d32525b91a5d1dfabd4d45a87832472bfc019225a44bac194c7`  
		Last Modified: Thu, 13 Jul 2017 17:00:31 GMT  
		Size: 59.2 MB (59236922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4697cc94f9bc528286af24dfa9d026a111678f19e2b4438b01e57bb886402231`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fb8f7c4709e80785a91c0ab7bdd72b9b2c9636605fd12bd1f155a732dc00eb`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 2.4 MB (2447244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6adf627b1ed735741063c5be1784ab27d16f70c6491014fc4d02e802b1691da`  
		Last Modified: Thu, 13 Jul 2017 17:00:30 GMT  
		Size: 76.6 MB (76643268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1e604695b3229a9dd4b844746f7794514133e272a560b6b53b4dcab160273a`  
		Last Modified: Thu, 13 Jul 2017 17:00:14 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5756b556dc03e4573261cc291ef6e78ca34132221733739746df3e75276a7ea4`  
		Last Modified: Thu, 13 Jul 2017 17:01:49 GMT  
		Size: 14.5 MB (14524360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f29c2fe55731bdec3cc190e75c7b79dde7331bffbdd67854eb5eb96f564e6`  
		Last Modified: Thu, 13 Jul 2017 17:01:48 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:d5dca0dd01c321f37f3c3fa1da4c7f52792ab14c1bd744bd66cede7d3585ae68
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259003477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46b6be178e97a5fb1d4d859e6a9dbc4f1ea28f896dbbf88f9b065193914da94`
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
# Fri, 23 Jun 2017 10:48:34 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:48:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:48:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:48:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:48:41 GMT
CMD ["irb"]
# Thu, 13 Jul 2017 16:54:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Jul 2017 16:54:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:54:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 13 Jul 2017 16:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Jul 2017 16:55:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 13 Jul 2017 16:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 13 Jul 2017 16:55:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:55:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Jul 2017 16:55:55 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Jul 2017 16:55:55 GMT
ENV REDMINE_VERSION=3.4.1
# Thu, 13 Jul 2017 16:55:56 GMT
ENV REDMINE_DOWNLOAD_MD5=79b07289c0b591e81180d017dbf6ebf4
# Thu, 13 Jul 2017 16:56:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 13 Jul 2017 16:59:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Jul 2017 16:59:06 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 13 Jul 2017 16:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Jul 2017 16:59:07 GMT
EXPOSE 3000/tcp
# Thu, 13 Jul 2017 16:59:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 13 Jul 2017 16:59:29 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 13 Jul 2017 16:59:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:53 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 13 Jul 2017 17:00:00 GMT
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
	-	`sha256:35959beb44bf6d48d86ca6a185b6a00762f12f72bdaacd83ec6855809b3b0202`  
		Last Modified: Sat, 24 Jun 2017 23:51:33 GMT  
		Size: 677.9 KB (677903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a0fb08216f01a5b1754fa23f7680481bfcaa771407253fb44ba6d7dceb719`  
		Last Modified: Sat, 24 Jun 2017 23:51:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250bfb0f9a30cfd1e869ea1e7c066033204f522f0925f420b1c94650e7531e14`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d5c753999ce0a791fd5b6b1e6add8027af7bed345bee4b753d39ab1256c1c`  
		Last Modified: Thu, 13 Jul 2017 17:00:22 GMT  
		Size: 14.4 MB (14421998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693b99c8a9f1a0f75970c5391267af13f682bf226fc5a837d595f15d9e51cfd`  
		Last Modified: Thu, 13 Jul 2017 17:00:17 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bfab5f8b684e67ad8e4a2292bb8c43ebf539f8372d890446afc83338c02aa7`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96182d6f933e7d32525b91a5d1dfabd4d45a87832472bfc019225a44bac194c7`  
		Last Modified: Thu, 13 Jul 2017 17:00:31 GMT  
		Size: 59.2 MB (59236922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4697cc94f9bc528286af24dfa9d026a111678f19e2b4438b01e57bb886402231`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fb8f7c4709e80785a91c0ab7bdd72b9b2c9636605fd12bd1f155a732dc00eb`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 2.4 MB (2447244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6adf627b1ed735741063c5be1784ab27d16f70c6491014fc4d02e802b1691da`  
		Last Modified: Thu, 13 Jul 2017 17:00:30 GMT  
		Size: 76.6 MB (76643268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1e604695b3229a9dd4b844746f7794514133e272a560b6b53b4dcab160273a`  
		Last Modified: Thu, 13 Jul 2017 17:00:14 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5756b556dc03e4573261cc291ef6e78ca34132221733739746df3e75276a7ea4`  
		Last Modified: Thu, 13 Jul 2017 17:01:49 GMT  
		Size: 14.5 MB (14524360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f29c2fe55731bdec3cc190e75c7b79dde7331bffbdd67854eb5eb96f564e6`  
		Last Modified: Thu, 13 Jul 2017 17:01:48 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:d5dca0dd01c321f37f3c3fa1da4c7f52792ab14c1bd744bd66cede7d3585ae68
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259003477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46b6be178e97a5fb1d4d859e6a9dbc4f1ea28f896dbbf88f9b065193914da94`
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
# Fri, 23 Jun 2017 10:48:34 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:48:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:48:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:48:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:48:41 GMT
CMD ["irb"]
# Thu, 13 Jul 2017 16:54:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Jul 2017 16:54:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:54:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 13 Jul 2017 16:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Jul 2017 16:55:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 13 Jul 2017 16:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 13 Jul 2017 16:55:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:55:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Jul 2017 16:55:55 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Jul 2017 16:55:55 GMT
ENV REDMINE_VERSION=3.4.1
# Thu, 13 Jul 2017 16:55:56 GMT
ENV REDMINE_DOWNLOAD_MD5=79b07289c0b591e81180d017dbf6ebf4
# Thu, 13 Jul 2017 16:56:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 13 Jul 2017 16:59:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Jul 2017 16:59:06 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 13 Jul 2017 16:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Jul 2017 16:59:07 GMT
EXPOSE 3000/tcp
# Thu, 13 Jul 2017 16:59:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 13 Jul 2017 16:59:29 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 13 Jul 2017 16:59:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:53 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 13 Jul 2017 17:00:00 GMT
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
	-	`sha256:35959beb44bf6d48d86ca6a185b6a00762f12f72bdaacd83ec6855809b3b0202`  
		Last Modified: Sat, 24 Jun 2017 23:51:33 GMT  
		Size: 677.9 KB (677903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a0fb08216f01a5b1754fa23f7680481bfcaa771407253fb44ba6d7dceb719`  
		Last Modified: Sat, 24 Jun 2017 23:51:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250bfb0f9a30cfd1e869ea1e7c066033204f522f0925f420b1c94650e7531e14`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d5c753999ce0a791fd5b6b1e6add8027af7bed345bee4b753d39ab1256c1c`  
		Last Modified: Thu, 13 Jul 2017 17:00:22 GMT  
		Size: 14.4 MB (14421998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693b99c8a9f1a0f75970c5391267af13f682bf226fc5a837d595f15d9e51cfd`  
		Last Modified: Thu, 13 Jul 2017 17:00:17 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bfab5f8b684e67ad8e4a2292bb8c43ebf539f8372d890446afc83338c02aa7`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96182d6f933e7d32525b91a5d1dfabd4d45a87832472bfc019225a44bac194c7`  
		Last Modified: Thu, 13 Jul 2017 17:00:31 GMT  
		Size: 59.2 MB (59236922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4697cc94f9bc528286af24dfa9d026a111678f19e2b4438b01e57bb886402231`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fb8f7c4709e80785a91c0ab7bdd72b9b2c9636605fd12bd1f155a732dc00eb`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 2.4 MB (2447244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6adf627b1ed735741063c5be1784ab27d16f70c6491014fc4d02e802b1691da`  
		Last Modified: Thu, 13 Jul 2017 17:00:30 GMT  
		Size: 76.6 MB (76643268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1e604695b3229a9dd4b844746f7794514133e272a560b6b53b4dcab160273a`  
		Last Modified: Thu, 13 Jul 2017 17:00:14 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5756b556dc03e4573261cc291ef6e78ca34132221733739746df3e75276a7ea4`  
		Last Modified: Thu, 13 Jul 2017 17:01:49 GMT  
		Size: 14.5 MB (14524360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f29c2fe55731bdec3cc190e75c7b79dde7331bffbdd67854eb5eb96f564e6`  
		Last Modified: Thu, 13 Jul 2017 17:01:48 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:d5dca0dd01c321f37f3c3fa1da4c7f52792ab14c1bd744bd66cede7d3585ae68
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259003477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46b6be178e97a5fb1d4d859e6a9dbc4f1ea28f896dbbf88f9b065193914da94`
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
# Fri, 23 Jun 2017 10:48:34 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:48:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:48:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:48:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:48:41 GMT
CMD ["irb"]
# Thu, 13 Jul 2017 16:54:34 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 13 Jul 2017 16:54:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:54:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 13 Jul 2017 16:55:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 13 Jul 2017 16:55:04 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 13 Jul 2017 16:55:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 13 Jul 2017 16:55:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jul 2017 16:55:54 GMT
ENV RAILS_ENV=production
# Thu, 13 Jul 2017 16:55:55 GMT
WORKDIR /usr/src/redmine
# Thu, 13 Jul 2017 16:55:55 GMT
ENV REDMINE_VERSION=3.4.1
# Thu, 13 Jul 2017 16:55:56 GMT
ENV REDMINE_DOWNLOAD_MD5=79b07289c0b591e81180d017dbf6ebf4
# Thu, 13 Jul 2017 16:56:01 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 13 Jul 2017 16:59:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:05 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 13 Jul 2017 16:59:06 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Thu, 13 Jul 2017 16:59:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 13 Jul 2017 16:59:07 GMT
EXPOSE 3000/tcp
# Thu, 13 Jul 2017 16:59:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 13 Jul 2017 16:59:29 GMT
ENV PASSENGER_VERSION=5.1.5
# Thu, 13 Jul 2017 16:59:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Jul 2017 16:59:53 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 13 Jul 2017 17:00:00 GMT
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
	-	`sha256:35959beb44bf6d48d86ca6a185b6a00762f12f72bdaacd83ec6855809b3b0202`  
		Last Modified: Sat, 24 Jun 2017 23:51:33 GMT  
		Size: 677.9 KB (677903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a0fb08216f01a5b1754fa23f7680481bfcaa771407253fb44ba6d7dceb719`  
		Last Modified: Sat, 24 Jun 2017 23:51:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:250bfb0f9a30cfd1e869ea1e7c066033204f522f0925f420b1c94650e7531e14`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4d5c753999ce0a791fd5b6b1e6add8027af7bed345bee4b753d39ab1256c1c`  
		Last Modified: Thu, 13 Jul 2017 17:00:22 GMT  
		Size: 14.4 MB (14421998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9693b99c8a9f1a0f75970c5391267af13f682bf226fc5a837d595f15d9e51cfd`  
		Last Modified: Thu, 13 Jul 2017 17:00:17 GMT  
		Size: 818.8 KB (818807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bfab5f8b684e67ad8e4a2292bb8c43ebf539f8372d890446afc83338c02aa7`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96182d6f933e7d32525b91a5d1dfabd4d45a87832472bfc019225a44bac194c7`  
		Last Modified: Thu, 13 Jul 2017 17:00:31 GMT  
		Size: 59.2 MB (59236922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4697cc94f9bc528286af24dfa9d026a111678f19e2b4438b01e57bb886402231`  
		Last Modified: Thu, 13 Jul 2017 17:00:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fb8f7c4709e80785a91c0ab7bdd72b9b2c9636605fd12bd1f155a732dc00eb`  
		Last Modified: Thu, 13 Jul 2017 17:00:16 GMT  
		Size: 2.4 MB (2447244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6adf627b1ed735741063c5be1784ab27d16f70c6491014fc4d02e802b1691da`  
		Last Modified: Thu, 13 Jul 2017 17:00:30 GMT  
		Size: 76.6 MB (76643268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1e604695b3229a9dd4b844746f7794514133e272a560b6b53b4dcab160273a`  
		Last Modified: Thu, 13 Jul 2017 17:00:14 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5756b556dc03e4573261cc291ef6e78ca34132221733739746df3e75276a7ea4`  
		Last Modified: Thu, 13 Jul 2017 17:01:49 GMT  
		Size: 14.5 MB (14524360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f29c2fe55731bdec3cc190e75c7b79dde7331bffbdd67854eb5eb96f564e6`  
		Last Modified: Thu, 13 Jul 2017 17:01:48 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:3b7228135d9dccf459dc6b9220f3b69eb30b5f76b8391ffe29e9517fb25f8469
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251538086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e973f42561637e722e27f9c77a0cd73e603f10620968cee5966c343ac46540ba`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Mon, 03 Jul 2017 22:27:12 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 03 Jul 2017 22:27:14 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 03 Jul 2017 22:27:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 03 Jul 2017 22:30:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 22:37:21 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 03 Jul 2017 22:37:22 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Mon, 03 Jul 2017 22:37:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 03 Jul 2017 22:37:24 GMT
EXPOSE 3000/tcp
# Mon, 03 Jul 2017 22:37:25 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836bf1cceb33d6c2b4f13764dfa3d59248950022787e3a82897a4ca17be492ac`  
		Last Modified: Mon, 03 Jul 2017 23:19:14 GMT  
		Size: 2.4 MB (2390075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56572c0cbc1a97ef1c3a271401a37654d8f4dddd34168dd5ba7aaea375c64bc1`  
		Last Modified: Mon, 03 Jul 2017 23:19:33 GMT  
		Size: 77.4 MB (77362627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252eed282e3dcb946134707f95cdcae6291e5950e7e222ef353339a564e6edd6`  
		Last Modified: Mon, 03 Jul 2017 23:19:12 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:3b7228135d9dccf459dc6b9220f3b69eb30b5f76b8391ffe29e9517fb25f8469
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251538086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e973f42561637e722e27f9c77a0cd73e603f10620968cee5966c343ac46540ba`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Mon, 03 Jul 2017 22:27:12 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 03 Jul 2017 22:27:14 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 03 Jul 2017 22:27:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 03 Jul 2017 22:30:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 22:37:21 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 03 Jul 2017 22:37:22 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Mon, 03 Jul 2017 22:37:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 03 Jul 2017 22:37:24 GMT
EXPOSE 3000/tcp
# Mon, 03 Jul 2017 22:37:25 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836bf1cceb33d6c2b4f13764dfa3d59248950022787e3a82897a4ca17be492ac`  
		Last Modified: Mon, 03 Jul 2017 23:19:14 GMT  
		Size: 2.4 MB (2390075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56572c0cbc1a97ef1c3a271401a37654d8f4dddd34168dd5ba7aaea375c64bc1`  
		Last Modified: Mon, 03 Jul 2017 23:19:33 GMT  
		Size: 77.4 MB (77362627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252eed282e3dcb946134707f95cdcae6291e5950e7e222ef353339a564e6edd6`  
		Last Modified: Mon, 03 Jul 2017 23:19:12 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4-passenger`

```console
$ docker pull redmine@sha256:f5fbebaf03e91947eabbaa03bb6175526d9b7f7a168a77ae1bb34ed777bc8b3f
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270279581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad0160a78253a241db7574e7ce6389d298c36ef1c9a03249468d36bf15d1c07`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Mon, 03 Jul 2017 22:27:12 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 03 Jul 2017 22:27:14 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 03 Jul 2017 22:27:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 03 Jul 2017 22:30:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 22:37:21 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 03 Jul 2017 22:37:22 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Mon, 03 Jul 2017 22:37:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 03 Jul 2017 22:37:24 GMT
EXPOSE 3000/tcp
# Mon, 03 Jul 2017 22:37:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 03 Jul 2017 22:37:53 GMT
ENV PASSENGER_VERSION=5.1.5
# Mon, 03 Jul 2017 22:38:11 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 22:38:13 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 03 Jul 2017 22:38:14 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836bf1cceb33d6c2b4f13764dfa3d59248950022787e3a82897a4ca17be492ac`  
		Last Modified: Mon, 03 Jul 2017 23:19:14 GMT  
		Size: 2.4 MB (2390075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56572c0cbc1a97ef1c3a271401a37654d8f4dddd34168dd5ba7aaea375c64bc1`  
		Last Modified: Mon, 03 Jul 2017 23:19:33 GMT  
		Size: 77.4 MB (77362627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252eed282e3dcb946134707f95cdcae6291e5950e7e222ef353339a564e6edd6`  
		Last Modified: Mon, 03 Jul 2017 23:19:12 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b9cc4873aaf06bfbc68686a8d17d472cb574146499634285f17178c8768a2`  
		Last Modified: Mon, 03 Jul 2017 23:28:20 GMT  
		Size: 14.5 MB (14518039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc62a7695bb5632bfb4732c36b8e6ee08d382584fa534019da0217d09311e98`  
		Last Modified: Mon, 03 Jul 2017 23:28:15 GMT  
		Size: 4.2 MB (4223456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:f5fbebaf03e91947eabbaa03bb6175526d9b7f7a168a77ae1bb34ed777bc8b3f
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270279581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad0160a78253a241db7574e7ce6389d298c36ef1c9a03249468d36bf15d1c07`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Mon, 03 Jul 2017 22:27:12 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 03 Jul 2017 22:27:14 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 03 Jul 2017 22:27:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 03 Jul 2017 22:30:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 22:37:21 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 03 Jul 2017 22:37:22 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Mon, 03 Jul 2017 22:37:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 03 Jul 2017 22:37:24 GMT
EXPOSE 3000/tcp
# Mon, 03 Jul 2017 22:37:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 03 Jul 2017 22:37:53 GMT
ENV PASSENGER_VERSION=5.1.5
# Mon, 03 Jul 2017 22:38:11 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 22:38:13 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 03 Jul 2017 22:38:14 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836bf1cceb33d6c2b4f13764dfa3d59248950022787e3a82897a4ca17be492ac`  
		Last Modified: Mon, 03 Jul 2017 23:19:14 GMT  
		Size: 2.4 MB (2390075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56572c0cbc1a97ef1c3a271401a37654d8f4dddd34168dd5ba7aaea375c64bc1`  
		Last Modified: Mon, 03 Jul 2017 23:19:33 GMT  
		Size: 77.4 MB (77362627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252eed282e3dcb946134707f95cdcae6291e5950e7e222ef353339a564e6edd6`  
		Last Modified: Mon, 03 Jul 2017 23:19:12 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46b9cc4873aaf06bfbc68686a8d17d472cb574146499634285f17178c8768a2`  
		Last Modified: Mon, 03 Jul 2017 23:28:20 GMT  
		Size: 14.5 MB (14518039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc62a7695bb5632bfb4732c36b8e6ee08d382584fa534019da0217d09311e98`  
		Last Modified: Mon, 03 Jul 2017 23:28:15 GMT  
		Size: 4.2 MB (4223456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:d486ad0974e331ecdd167496bcc01e193b2be9942163fd016aecc6c4bbde3644
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251500367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeab135b1be6c12c4301178058f481112d90e002caad19e3e7492ec74546518`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Mon, 03 Jul 2017 21:22:57 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 03 Jul 2017 21:22:58 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 03 Jul 2017 21:23:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 03 Jul 2017 21:27:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 21:27:02 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 03 Jul 2017 21:27:04 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Mon, 03 Jul 2017 21:27:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 03 Jul 2017 21:27:06 GMT
EXPOSE 3000/tcp
# Mon, 03 Jul 2017 21:27:07 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5cb423d732b25deedbb6618e18ea30fac41463af790a148914d90a06eca14b`  
		Last Modified: Mon, 03 Jul 2017 23:03:37 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb75c37a13f6ac415fc74760470b83572e289b52f312e6000deb0906fbbb3fa`  
		Last Modified: Mon, 03 Jul 2017 23:03:57 GMT  
		Size: 77.4 MB (77368032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e5d28d65b5f65e0ae333f452a15d0a2593078903746a16e2466010892fccd7`  
		Last Modified: Mon, 03 Jul 2017 23:03:35 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:d486ad0974e331ecdd167496bcc01e193b2be9942163fd016aecc6c4bbde3644
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251500367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aeab135b1be6c12c4301178058f481112d90e002caad19e3e7492ec74546518`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Mon, 03 Jul 2017 21:22:57 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 03 Jul 2017 21:22:58 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 03 Jul 2017 21:23:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 03 Jul 2017 21:27:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 21:27:02 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 03 Jul 2017 21:27:04 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Mon, 03 Jul 2017 21:27:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 03 Jul 2017 21:27:06 GMT
EXPOSE 3000/tcp
# Mon, 03 Jul 2017 21:27:07 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5cb423d732b25deedbb6618e18ea30fac41463af790a148914d90a06eca14b`  
		Last Modified: Mon, 03 Jul 2017 23:03:37 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb75c37a13f6ac415fc74760470b83572e289b52f312e6000deb0906fbbb3fa`  
		Last Modified: Mon, 03 Jul 2017 23:03:57 GMT  
		Size: 77.4 MB (77368032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e5d28d65b5f65e0ae333f452a15d0a2593078903746a16e2466010892fccd7`  
		Last Modified: Mon, 03 Jul 2017 23:03:35 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7-passenger`

```console
$ docker pull redmine@sha256:40ae115e4a921a23378a0c934bdc4537431c9cee2d4c669bae8c7b9a947b93ae
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270241569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fbfe034a2520a4f50f1fa688a89d9cf8318c8349a4796690bf5da95ec5bedd`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Mon, 03 Jul 2017 21:22:57 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 03 Jul 2017 21:22:58 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 03 Jul 2017 21:23:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 03 Jul 2017 21:27:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 21:27:02 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 03 Jul 2017 21:27:04 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Mon, 03 Jul 2017 21:27:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 03 Jul 2017 21:27:06 GMT
EXPOSE 3000/tcp
# Mon, 03 Jul 2017 21:27:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 03 Jul 2017 22:07:33 GMT
ENV PASSENGER_VERSION=5.1.5
# Mon, 03 Jul 2017 22:07:55 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 22:07:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 03 Jul 2017 22:07:58 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5cb423d732b25deedbb6618e18ea30fac41463af790a148914d90a06eca14b`  
		Last Modified: Mon, 03 Jul 2017 23:03:37 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb75c37a13f6ac415fc74760470b83572e289b52f312e6000deb0906fbbb3fa`  
		Last Modified: Mon, 03 Jul 2017 23:03:57 GMT  
		Size: 77.4 MB (77368032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e5d28d65b5f65e0ae333f452a15d0a2593078903746a16e2466010892fccd7`  
		Last Modified: Mon, 03 Jul 2017 23:03:35 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af6e454166b83fef802d65adb2e3734a16ee07a1f45b04adcd3de0cb4fe6c58`  
		Last Modified: Mon, 03 Jul 2017 23:18:09 GMT  
		Size: 14.5 MB (14517742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0b28fa805fd88b116a350132a4db7438efdcff58f736f2bbd09d4eea9df70d`  
		Last Modified: Mon, 03 Jul 2017 23:18:03 GMT  
		Size: 4.2 MB (4223460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:40ae115e4a921a23378a0c934bdc4537431c9cee2d4c669bae8c7b9a947b93ae
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270241569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fbfe034a2520a4f50f1fa688a89d9cf8318c8349a4796690bf5da95ec5bedd`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Mon, 03 Jul 2017 21:22:57 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 03 Jul 2017 21:22:58 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 03 Jul 2017 21:23:04 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 03 Jul 2017 21:27:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 21:27:02 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 03 Jul 2017 21:27:04 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Mon, 03 Jul 2017 21:27:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 03 Jul 2017 21:27:06 GMT
EXPOSE 3000/tcp
# Mon, 03 Jul 2017 21:27:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 03 Jul 2017 22:07:33 GMT
ENV PASSENGER_VERSION=5.1.5
# Mon, 03 Jul 2017 22:07:55 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 03 Jul 2017 22:07:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 03 Jul 2017 22:07:58 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5cb423d732b25deedbb6618e18ea30fac41463af790a148914d90a06eca14b`  
		Last Modified: Mon, 03 Jul 2017 23:03:37 GMT  
		Size: 2.3 MB (2346953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb75c37a13f6ac415fc74760470b83572e289b52f312e6000deb0906fbbb3fa`  
		Last Modified: Mon, 03 Jul 2017 23:03:57 GMT  
		Size: 77.4 MB (77368032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e5d28d65b5f65e0ae333f452a15d0a2593078903746a16e2466010892fccd7`  
		Last Modified: Mon, 03 Jul 2017 23:03:35 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af6e454166b83fef802d65adb2e3734a16ee07a1f45b04adcd3de0cb4fe6c58`  
		Last Modified: Mon, 03 Jul 2017 23:18:09 GMT  
		Size: 14.5 MB (14517742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0b28fa805fd88b116a350132a4db7438efdcff58f736f2bbd09d4eea9df70d`  
		Last Modified: Mon, 03 Jul 2017 23:18:03 GMT  
		Size: 4.2 MB (4223460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:9751ac03669e707cbba8edd2b6a86b56bae84e7f3752fd5f5c314d8eb0fbd59a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.7 MB (241698566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23be4e50538b915d8eea2179edd23f1abfc50bd37160182dbd215f52d6c34c14`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Jun 2017 21:45:47 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 23 Jun 2017 21:45:48 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 23 Jun 2017 21:45:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Jun 2017 21:48:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 21:48:07 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Jun 2017 21:48:09 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Fri, 23 Jun 2017 21:48:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Jun 2017 21:48:10 GMT
EXPOSE 3000/tcp
# Fri, 23 Jun 2017 21:48:11 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8293cf7e0dccbdde3043e12bce2fa2a4e5cc5d097b29f99f7cb990fab396596`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 2.3 MB (2281379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93da5d9ac2776136f84b0716ba1e33e358880b4a747f0795278a7353632e29bd`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 67.6 MB (67631804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60254d7ca6d86efa095c9126e26721b6cd88a53364293c5d36583a5d34bb8f35`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:9751ac03669e707cbba8edd2b6a86b56bae84e7f3752fd5f5c314d8eb0fbd59a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.7 MB (241698566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23be4e50538b915d8eea2179edd23f1abfc50bd37160182dbd215f52d6c34c14`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Jun 2017 21:45:47 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 23 Jun 2017 21:45:48 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 23 Jun 2017 21:45:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Jun 2017 21:48:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 21:48:07 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Jun 2017 21:48:09 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Fri, 23 Jun 2017 21:48:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Jun 2017 21:48:10 GMT
EXPOSE 3000/tcp
# Fri, 23 Jun 2017 21:48:11 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8293cf7e0dccbdde3043e12bce2fa2a4e5cc5d097b29f99f7cb990fab396596`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 2.3 MB (2281379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93da5d9ac2776136f84b0716ba1e33e358880b4a747f0795278a7353632e29bd`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 67.6 MB (67631804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60254d7ca6d86efa095c9126e26721b6cd88a53364293c5d36583a5d34bb8f35`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:1604ddb13e20c7714f2161d9f0f2191623a42e7e5f94a525eef6f70c8884e184
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260439857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03867ff7038847d18cce4f44260eef8cdc76bf4c2c16cb693c12bae069cb9620`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Jun 2017 21:45:47 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 23 Jun 2017 21:45:48 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 23 Jun 2017 21:45:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Jun 2017 21:48:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 21:48:07 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Jun 2017 21:48:09 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Fri, 23 Jun 2017 21:48:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Jun 2017 21:48:10 GMT
EXPOSE 3000/tcp
# Fri, 23 Jun 2017 21:48:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 23 Jun 2017 21:50:00 GMT
ENV PASSENGER_VERSION=5.1.5
# Fri, 23 Jun 2017 21:50:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 21:50:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 23 Jun 2017 21:50:20 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8293cf7e0dccbdde3043e12bce2fa2a4e5cc5d097b29f99f7cb990fab396596`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 2.3 MB (2281379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93da5d9ac2776136f84b0716ba1e33e358880b4a747f0795278a7353632e29bd`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 67.6 MB (67631804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60254d7ca6d86efa095c9126e26721b6cd88a53364293c5d36583a5d34bb8f35`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6409e6e49e4207c365bd8b77e3e6fdbd8fd4304dbf8d14f41c18eaffb43880`  
		Last Modified: Sun, 25 Jun 2017 15:40:08 GMT  
		Size: 14.5 MB (14517835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681756dfcd2dee2482614f5ed7384193c7c20b97b85df3b4f51fe05eca902387`  
		Last Modified: Sun, 25 Jun 2017 15:40:04 GMT  
		Size: 4.2 MB (4223456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:1604ddb13e20c7714f2161d9f0f2191623a42e7e5f94a525eef6f70c8884e184
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260439857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03867ff7038847d18cce4f44260eef8cdc76bf4c2c16cb693c12bae069cb9620`
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
# Fri, 23 Jun 2017 10:33:45 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:33:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:33:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:33:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:33:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:33:52 GMT
CMD ["irb"]
# Fri, 23 Jun 2017 21:44:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Jun 2017 21:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:08 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Jun 2017 21:45:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Jun 2017 21:45:13 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Jun 2017 21:45:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Jun 2017 21:45:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 21:45:46 GMT
ENV RAILS_ENV=production
# Fri, 23 Jun 2017 21:45:47 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Jun 2017 21:45:47 GMT
ENV REDMINE_VERSION=3.1.7
# Fri, 23 Jun 2017 21:45:48 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Fri, 23 Jun 2017 21:45:53 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 23 Jun 2017 21:48:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 21:48:07 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 23 Jun 2017 21:48:09 GMT
COPY file:55741149c9b76872662e676ef050d83811636444cacf9e20ed2af7ccb6d614a4 in / 
# Fri, 23 Jun 2017 21:48:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 23 Jun 2017 21:48:10 GMT
EXPOSE 3000/tcp
# Fri, 23 Jun 2017 21:48:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 23 Jun 2017 21:50:00 GMT
ENV PASSENGER_VERSION=5.1.5
# Fri, 23 Jun 2017 21:50:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 23 Jun 2017 21:50:19 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 23 Jun 2017 21:50:20 GMT
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
	-	`sha256:893629ca85e6cf5bd1592254948814b1417e36d9e2007a0e8f118044d9e5d020`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 677.9 KB (677902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed5f79222f8efec16bd10691aaa610fd29564dc4619597aac97821847463eadb`  
		Last Modified: Sat, 24 Jun 2017 23:41:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575155f269b46eb768a15075f0db2640537b6e9d74e42e6abbc88cbfc7a1988a`  
		Last Modified: Sun, 25 Jun 2017 15:38:26 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4080615b46e142c0ea7a7638c1af34006d7e87f06930e613620ff65c3e78c96`  
		Last Modified: Sun, 25 Jun 2017 15:38:30 GMT  
		Size: 14.4 MB (14421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f6f73f089e18268cec7db3871d4c66c3929c8028df660d71182fcc9ca6dc1a1`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 818.8 KB (818813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4a90627acaccb3cf406ebac74b517ef30e324f32fd214a9fac406bbcf95bdb`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8cdd565ac88cfa3f0ed0d4780cf39b78a79bb08b4b70206b79671591ad1276`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 59.2 MB (59231380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51f10b394dbdbdd5dc5fdae5d627c824a6aa1bb52b862f9faffa31c80a2950e`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8293cf7e0dccbdde3043e12bce2fa2a4e5cc5d097b29f99f7cb990fab396596`  
		Last Modified: Sun, 25 Jun 2017 15:38:25 GMT  
		Size: 2.3 MB (2281379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93da5d9ac2776136f84b0716ba1e33e358880b4a747f0795278a7353632e29bd`  
		Last Modified: Sun, 25 Jun 2017 15:38:45 GMT  
		Size: 67.6 MB (67631804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60254d7ca6d86efa095c9126e26721b6cd88a53364293c5d36583a5d34bb8f35`  
		Last Modified: Sun, 25 Jun 2017 15:38:23 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6409e6e49e4207c365bd8b77e3e6fdbd8fd4304dbf8d14f41c18eaffb43880`  
		Last Modified: Sun, 25 Jun 2017 15:40:08 GMT  
		Size: 14.5 MB (14517835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681756dfcd2dee2482614f5ed7384193c7c20b97b85df3b4f51fe05eca902387`  
		Last Modified: Sun, 25 Jun 2017 15:40:04 GMT  
		Size: 4.2 MB (4223456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
