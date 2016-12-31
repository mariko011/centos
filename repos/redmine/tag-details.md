<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.1.7`](#redmine317)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.7-passenger`](#redmine317-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)
-	[`redmine:3.2.4`](#redmine324)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.4-passenger`](#redmine324-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3.1`](#redmine331)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.3.1-passenger`](#redmine331-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:d84ebc3fbd49e681daecfedbaec1005f55627f1961c51fed76d26c328c70d46e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237142101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfe4059659e52ba1ccaeeeb212ae72f630796a2d919fcae45b49563c2d58f6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:37:45 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 28 Dec 2016 23:37:45 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 28 Dec 2016 23:37:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:39:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:39:47 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:34:52 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:34:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:34:53 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:34:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5146fbc767335bd7c911ba53b8d427ed79a3efefdb886e0b83f6814769c0e6`  
		Last Modified: Wed, 28 Dec 2016 23:45:29 GMT  
		Size: 2.3 MB (2273009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84871d9fcb7900a60c720983925adc6b1070394306cdc914d199aa658af1882a`  
		Last Modified: Wed, 28 Dec 2016 23:45:45 GMT  
		Size: 66.8 MB (66751576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd2da2a57c79b4510fee898ccbeaae84c68d1ec1db309a7ddb77c65a679c62c`  
		Last Modified: Sat, 31 Dec 2016 00:36:02 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:d84ebc3fbd49e681daecfedbaec1005f55627f1961c51fed76d26c328c70d46e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.1 MB (237142101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfe4059659e52ba1ccaeeeb212ae72f630796a2d919fcae45b49563c2d58f6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:37:45 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 28 Dec 2016 23:37:45 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 28 Dec 2016 23:37:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:39:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:39:47 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:34:52 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:34:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:34:53 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:34:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5146fbc767335bd7c911ba53b8d427ed79a3efefdb886e0b83f6814769c0e6`  
		Last Modified: Wed, 28 Dec 2016 23:45:29 GMT  
		Size: 2.3 MB (2273009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84871d9fcb7900a60c720983925adc6b1070394306cdc914d199aa658af1882a`  
		Last Modified: Wed, 28 Dec 2016 23:45:45 GMT  
		Size: 66.8 MB (66751576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd2da2a57c79b4510fee898ccbeaae84c68d1ec1db309a7ddb77c65a679c62c`  
		Last Modified: Sat, 31 Dec 2016 00:36:02 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:4a65b04679ebf09b740c175f14d9dc15b0175b593ef38ac196ac05bad56be165
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256707076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf5fc97233055f17b549a5e8360724525be35c82e6f301da8536ced3c0c12f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:37:45 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 28 Dec 2016 23:37:45 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 28 Dec 2016 23:37:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:39:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:39:47 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:34:52 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:34:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:34:53 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:34:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Dec 2016 00:34:54 GMT
ENV PASSENGER_VERSION=5.1.1
# Sat, 31 Dec 2016 00:35:07 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:35:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 31 Dec 2016 00:35:09 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5146fbc767335bd7c911ba53b8d427ed79a3efefdb886e0b83f6814769c0e6`  
		Last Modified: Wed, 28 Dec 2016 23:45:29 GMT  
		Size: 2.3 MB (2273009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84871d9fcb7900a60c720983925adc6b1070394306cdc914d199aa658af1882a`  
		Last Modified: Wed, 28 Dec 2016 23:45:45 GMT  
		Size: 66.8 MB (66751576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd2da2a57c79b4510fee898ccbeaae84c68d1ec1db309a7ddb77c65a679c62c`  
		Last Modified: Sat, 31 Dec 2016 00:36:02 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a64a1c798318ef23c6a3595c9bcee34e90c4bc3c0a4516629dfd037eeed138e`  
		Last Modified: Sat, 31 Dec 2016 00:36:36 GMT  
		Size: 15.5 MB (15498975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191ded1bd88241ccaa25786da3b2303a8c6370f4eee4e2f9e21241f67d23a8f7`  
		Last Modified: Sat, 31 Dec 2016 00:36:35 GMT  
		Size: 4.1 MB (4066000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:4a65b04679ebf09b740c175f14d9dc15b0175b593ef38ac196ac05bad56be165
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256707076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf5fc97233055f17b549a5e8360724525be35c82e6f301da8536ced3c0c12f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:37:45 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 28 Dec 2016 23:37:45 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 28 Dec 2016 23:37:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:39:46 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:39:47 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:34:52 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:34:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:34:53 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:34:54 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Dec 2016 00:34:54 GMT
ENV PASSENGER_VERSION=5.1.1
# Sat, 31 Dec 2016 00:35:07 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:35:09 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 31 Dec 2016 00:35:09 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5146fbc767335bd7c911ba53b8d427ed79a3efefdb886e0b83f6814769c0e6`  
		Last Modified: Wed, 28 Dec 2016 23:45:29 GMT  
		Size: 2.3 MB (2273009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84871d9fcb7900a60c720983925adc6b1070394306cdc914d199aa658af1882a`  
		Last Modified: Wed, 28 Dec 2016 23:45:45 GMT  
		Size: 66.8 MB (66751576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd2da2a57c79b4510fee898ccbeaae84c68d1ec1db309a7ddb77c65a679c62c`  
		Last Modified: Sat, 31 Dec 2016 00:36:02 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a64a1c798318ef23c6a3595c9bcee34e90c4bc3c0a4516629dfd037eeed138e`  
		Last Modified: Sat, 31 Dec 2016 00:36:36 GMT  
		Size: 15.5 MB (15498975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191ded1bd88241ccaa25786da3b2303a8c6370f4eee4e2f9e21241f67d23a8f7`  
		Last Modified: Sat, 31 Dec 2016 00:36:35 GMT  
		Size: 4.1 MB (4066000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4`

```console
$ docker pull redmine@sha256:89c191248cb4f60f82a3d5a2ce190daac03c7e3745a8b74f9593ba0d0a347f6d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245992840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1cf3a9810c146aa84423d89cfd077e09354154cd874fb18fd9cdbdc04d88524`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:40:07 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 28 Dec 2016 23:40:07 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 28 Dec 2016 23:40:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:42:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:42:31 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:10 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:11 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2246c38ead32db16c32cd86e0afa220140ef3b5b181a1a75456b76133cf024b3`  
		Last Modified: Wed, 28 Dec 2016 23:47:00 GMT  
		Size: 2.3 MB (2330245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c0857e80ee0a8c6dbf29aea301ff5e77e0819d64803d2497df563d05318545`  
		Last Modified: Wed, 28 Dec 2016 23:47:13 GMT  
		Size: 75.5 MB (75545080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504748f00c05a5d015ec679f9074a3e5ba7d044ade4e90006ac9f44cb1e15f37`  
		Last Modified: Sat, 31 Dec 2016 00:37:09 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:89c191248cb4f60f82a3d5a2ce190daac03c7e3745a8b74f9593ba0d0a347f6d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245992840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1cf3a9810c146aa84423d89cfd077e09354154cd874fb18fd9cdbdc04d88524`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:40:07 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 28 Dec 2016 23:40:07 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 28 Dec 2016 23:40:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:42:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:42:31 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:10 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:11 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2246c38ead32db16c32cd86e0afa220140ef3b5b181a1a75456b76133cf024b3`  
		Last Modified: Wed, 28 Dec 2016 23:47:00 GMT  
		Size: 2.3 MB (2330245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c0857e80ee0a8c6dbf29aea301ff5e77e0819d64803d2497df563d05318545`  
		Last Modified: Wed, 28 Dec 2016 23:47:13 GMT  
		Size: 75.5 MB (75545080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504748f00c05a5d015ec679f9074a3e5ba7d044ade4e90006ac9f44cb1e15f37`  
		Last Modified: Sat, 31 Dec 2016 00:37:09 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4-passenger`

```console
$ docker pull redmine@sha256:ef9c0bc5db04caf3022493916db54881195f1da04ffc71582460b35d44a1d023
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265557872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a891a03ddda1c872eac122bb2ff7696fe9e76e37eacbda6823a52c4fb7a404`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:40:07 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 28 Dec 2016 23:40:07 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 28 Dec 2016 23:40:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:42:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:42:31 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:10 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:11 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Dec 2016 00:35:12 GMT
ENV PASSENGER_VERSION=5.1.1
# Sat, 31 Dec 2016 00:35:25 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:35:27 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 31 Dec 2016 00:35:27 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2246c38ead32db16c32cd86e0afa220140ef3b5b181a1a75456b76133cf024b3`  
		Last Modified: Wed, 28 Dec 2016 23:47:00 GMT  
		Size: 2.3 MB (2330245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c0857e80ee0a8c6dbf29aea301ff5e77e0819d64803d2497df563d05318545`  
		Last Modified: Wed, 28 Dec 2016 23:47:13 GMT  
		Size: 75.5 MB (75545080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504748f00c05a5d015ec679f9074a3e5ba7d044ade4e90006ac9f44cb1e15f37`  
		Last Modified: Sat, 31 Dec 2016 00:37:09 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20988580909759abb8f75f56b3c26cbb76a211f5c71df85b7beb25f0b8b6c11`  
		Last Modified: Sat, 31 Dec 2016 00:37:44 GMT  
		Size: 15.5 MB (15499015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de38107ca6c1504d28c8de9fab340e9c0dd7db22d0dcbe65087abee88f5c2be`  
		Last Modified: Sat, 31 Dec 2016 00:37:42 GMT  
		Size: 4.1 MB (4066017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:ef9c0bc5db04caf3022493916db54881195f1da04ffc71582460b35d44a1d023
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265557872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a891a03ddda1c872eac122bb2ff7696fe9e76e37eacbda6823a52c4fb7a404`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:40:07 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 28 Dec 2016 23:40:07 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 28 Dec 2016 23:40:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:42:30 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:42:31 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:10 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:11 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Dec 2016 00:35:12 GMT
ENV PASSENGER_VERSION=5.1.1
# Sat, 31 Dec 2016 00:35:25 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:35:27 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 31 Dec 2016 00:35:27 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2246c38ead32db16c32cd86e0afa220140ef3b5b181a1a75456b76133cf024b3`  
		Last Modified: Wed, 28 Dec 2016 23:47:00 GMT  
		Size: 2.3 MB (2330245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c0857e80ee0a8c6dbf29aea301ff5e77e0819d64803d2497df563d05318545`  
		Last Modified: Wed, 28 Dec 2016 23:47:13 GMT  
		Size: 75.5 MB (75545080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504748f00c05a5d015ec679f9074a3e5ba7d044ade4e90006ac9f44cb1e15f37`  
		Last Modified: Sat, 31 Dec 2016 00:37:09 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20988580909759abb8f75f56b3c26cbb76a211f5c71df85b7beb25f0b8b6c11`  
		Last Modified: Sat, 31 Dec 2016 00:37:44 GMT  
		Size: 15.5 MB (15499015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de38107ca6c1504d28c8de9fab340e9c0dd7db22d0dcbe65087abee88f5c2be`  
		Last Modified: Sat, 31 Dec 2016 00:37:42 GMT  
		Size: 4.1 MB (4066017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1`

```console
$ docker pull redmine@sha256:df44593ac08edb9f7e5ab50cfcf610b7af1654b571749b47a991d3660076b47d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (246036169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5171d235d1d645285b580f1af1b6f6298f4ea087be1c34c655303a6c7d2bb485`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 28 Dec 2016 23:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:44:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:44:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:28 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:29 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a3f9ff4e36cfcf608037b7916cea04f7b5d406a1deaf5f6fea7e0017bf9457`  
		Last Modified: Wed, 28 Dec 2016 23:48:21 GMT  
		Size: 2.4 MB (2372939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41ad52abc609c25ba98aeae8ebbb6a1955caa2711b56556b5787344c3b495f`  
		Last Modified: Wed, 28 Dec 2016 23:48:34 GMT  
		Size: 75.5 MB (75545717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e7be954264f13dc9eb41ac29853bc1fd3d21d15b5655aff70000d2799a192`  
		Last Modified: Sat, 31 Dec 2016 00:38:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:df44593ac08edb9f7e5ab50cfcf610b7af1654b571749b47a991d3660076b47d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (246036169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5171d235d1d645285b580f1af1b6f6298f4ea087be1c34c655303a6c7d2bb485`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 28 Dec 2016 23:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:44:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:44:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:28 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:29 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a3f9ff4e36cfcf608037b7916cea04f7b5d406a1deaf5f6fea7e0017bf9457`  
		Last Modified: Wed, 28 Dec 2016 23:48:21 GMT  
		Size: 2.4 MB (2372939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41ad52abc609c25ba98aeae8ebbb6a1955caa2711b56556b5787344c3b495f`  
		Last Modified: Wed, 28 Dec 2016 23:48:34 GMT  
		Size: 75.5 MB (75545717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e7be954264f13dc9eb41ac29853bc1fd3d21d15b5655aff70000d2799a192`  
		Last Modified: Sat, 31 Dec 2016 00:38:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:df44593ac08edb9f7e5ab50cfcf610b7af1654b571749b47a991d3660076b47d
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (246036169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5171d235d1d645285b580f1af1b6f6298f4ea087be1c34c655303a6c7d2bb485`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 28 Dec 2016 23:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:44:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:44:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:28 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:29 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a3f9ff4e36cfcf608037b7916cea04f7b5d406a1deaf5f6fea7e0017bf9457`  
		Last Modified: Wed, 28 Dec 2016 23:48:21 GMT  
		Size: 2.4 MB (2372939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41ad52abc609c25ba98aeae8ebbb6a1955caa2711b56556b5787344c3b495f`  
		Last Modified: Wed, 28 Dec 2016 23:48:34 GMT  
		Size: 75.5 MB (75545717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e7be954264f13dc9eb41ac29853bc1fd3d21d15b5655aff70000d2799a192`  
		Last Modified: Sat, 31 Dec 2016 00:38:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:df44593ac08edb9f7e5ab50cfcf610b7af1654b571749b47a991d3660076b47d
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (246036169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5171d235d1d645285b580f1af1b6f6298f4ea087be1c34c655303a6c7d2bb485`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 28 Dec 2016 23:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:44:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:44:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:28 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:29 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a3f9ff4e36cfcf608037b7916cea04f7b5d406a1deaf5f6fea7e0017bf9457`  
		Last Modified: Wed, 28 Dec 2016 23:48:21 GMT  
		Size: 2.4 MB (2372939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41ad52abc609c25ba98aeae8ebbb6a1955caa2711b56556b5787344c3b495f`  
		Last Modified: Wed, 28 Dec 2016 23:48:34 GMT  
		Size: 75.5 MB (75545717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e7be954264f13dc9eb41ac29853bc1fd3d21d15b5655aff70000d2799a192`  
		Last Modified: Sat, 31 Dec 2016 00:38:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1-passenger`

```console
$ docker pull redmine@sha256:55be04cd2ade9f3a06a147a76388a6c7f4b5f0033102278549a06c7ed7ea1b45
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265601048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58b8fb5308760d24eb5cb6cee813e378006216cc0279418d4c79b614f204e43`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 28 Dec 2016 23:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:44:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:44:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:28 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:29 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Dec 2016 00:35:30 GMT
ENV PASSENGER_VERSION=5.1.1
# Sat, 31 Dec 2016 00:35:44 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:35:45 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 31 Dec 2016 00:35:46 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a3f9ff4e36cfcf608037b7916cea04f7b5d406a1deaf5f6fea7e0017bf9457`  
		Last Modified: Wed, 28 Dec 2016 23:48:21 GMT  
		Size: 2.4 MB (2372939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41ad52abc609c25ba98aeae8ebbb6a1955caa2711b56556b5787344c3b495f`  
		Last Modified: Wed, 28 Dec 2016 23:48:34 GMT  
		Size: 75.5 MB (75545717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e7be954264f13dc9eb41ac29853bc1fd3d21d15b5655aff70000d2799a192`  
		Last Modified: Sat, 31 Dec 2016 00:38:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06899d6b9b5aa3c134c0bf1e8eb65d54101f0fad385031f299b9404358acbbb7`  
		Last Modified: Sat, 31 Dec 2016 00:39:19 GMT  
		Size: 15.5 MB (15498873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2202fef1372ee431515b62640462df07cfb4cf661ab4872f3e00e3829e2ed70`  
		Last Modified: Sat, 31 Dec 2016 00:39:19 GMT  
		Size: 4.1 MB (4066006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:55be04cd2ade9f3a06a147a76388a6c7f4b5f0033102278549a06c7ed7ea1b45
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265601048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58b8fb5308760d24eb5cb6cee813e378006216cc0279418d4c79b614f204e43`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 28 Dec 2016 23:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:44:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:44:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:28 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:29 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Dec 2016 00:35:30 GMT
ENV PASSENGER_VERSION=5.1.1
# Sat, 31 Dec 2016 00:35:44 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:35:45 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 31 Dec 2016 00:35:46 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a3f9ff4e36cfcf608037b7916cea04f7b5d406a1deaf5f6fea7e0017bf9457`  
		Last Modified: Wed, 28 Dec 2016 23:48:21 GMT  
		Size: 2.4 MB (2372939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41ad52abc609c25ba98aeae8ebbb6a1955caa2711b56556b5787344c3b495f`  
		Last Modified: Wed, 28 Dec 2016 23:48:34 GMT  
		Size: 75.5 MB (75545717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e7be954264f13dc9eb41ac29853bc1fd3d21d15b5655aff70000d2799a192`  
		Last Modified: Sat, 31 Dec 2016 00:38:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06899d6b9b5aa3c134c0bf1e8eb65d54101f0fad385031f299b9404358acbbb7`  
		Last Modified: Sat, 31 Dec 2016 00:39:19 GMT  
		Size: 15.5 MB (15498873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2202fef1372ee431515b62640462df07cfb4cf661ab4872f3e00e3829e2ed70`  
		Last Modified: Sat, 31 Dec 2016 00:39:19 GMT  
		Size: 4.1 MB (4066006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:55be04cd2ade9f3a06a147a76388a6c7f4b5f0033102278549a06c7ed7ea1b45
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265601048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58b8fb5308760d24eb5cb6cee813e378006216cc0279418d4c79b614f204e43`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 28 Dec 2016 23:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:44:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:44:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:28 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:29 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Dec 2016 00:35:30 GMT
ENV PASSENGER_VERSION=5.1.1
# Sat, 31 Dec 2016 00:35:44 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:35:45 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 31 Dec 2016 00:35:46 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a3f9ff4e36cfcf608037b7916cea04f7b5d406a1deaf5f6fea7e0017bf9457`  
		Last Modified: Wed, 28 Dec 2016 23:48:21 GMT  
		Size: 2.4 MB (2372939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41ad52abc609c25ba98aeae8ebbb6a1955caa2711b56556b5787344c3b495f`  
		Last Modified: Wed, 28 Dec 2016 23:48:34 GMT  
		Size: 75.5 MB (75545717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e7be954264f13dc9eb41ac29853bc1fd3d21d15b5655aff70000d2799a192`  
		Last Modified: Sat, 31 Dec 2016 00:38:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06899d6b9b5aa3c134c0bf1e8eb65d54101f0fad385031f299b9404358acbbb7`  
		Last Modified: Sat, 31 Dec 2016 00:39:19 GMT  
		Size: 15.5 MB (15498873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2202fef1372ee431515b62640462df07cfb4cf661ab4872f3e00e3829e2ed70`  
		Last Modified: Sat, 31 Dec 2016 00:39:19 GMT  
		Size: 4.1 MB (4066006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:55be04cd2ade9f3a06a147a76388a6c7f4b5f0033102278549a06c7ed7ea1b45
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265601048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c58b8fb5308760d24eb5cb6cee813e378006216cc0279418d4c79b614f204e43`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:35:00 GMT
ENV RUBY_MAJOR=2.2
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_VERSION=2.2.6
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBY_DOWNLOAD_SHA256=de8e192791cb157d610c48a9a9ff6e7f19d67ce86052feae62b82e3682cc675f
# Wed, 14 Dec 2016 19:35:01 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:37:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:15 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:20 GMT
CMD ["irb"]
# Wed, 28 Dec 2016 23:36:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Dec 2016 23:37:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Dec 2016 23:37:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Dec 2016 23:37:10 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Dec 2016 23:37:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Dec 2016 23:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Dec 2016 23:37:44 GMT
ENV RAILS_ENV=production
# Wed, 28 Dec 2016 23:37:44 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 28 Dec 2016 23:42:49 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 28 Dec 2016 23:42:54 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Dec 2016 23:44:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Dec 2016 23:44:54 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 31 Dec 2016 00:35:28 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Sat, 31 Dec 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 31 Dec 2016 00:35:29 GMT
EXPOSE 3000/tcp
# Sat, 31 Dec 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 31 Dec 2016 00:35:30 GMT
ENV PASSENGER_VERSION=5.1.1
# Sat, 31 Dec 2016 00:35:44 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 31 Dec 2016 00:35:45 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 31 Dec 2016 00:35:46 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50db5958fd3a21284388f26fab47d0cb1250f0809d78ccac437364e4d542a9b`  
		Last Modified: Mon, 19 Dec 2016 23:23:36 GMT  
		Size: 33.3 MB (33278876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e5273b5ba6911049594ca997c9d52de1102237decd02bcdd79f6a5b14f1a49`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 612.9 KB (612870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e725b13d10237cc1e599fd094c46f1192f902c84d53f2b1490f989a1e2c921`  
		Last Modified: Wed, 28 Dec 2016 22:31:37 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e981f1e64ec6ee0832af5d79f47de53411655b4e29ee75b16a90d72f524682a`  
		Last Modified: Wed, 28 Dec 2016 23:45:33 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5cf3867ab66a62c94fd6d97f45931fb4c91f60db0d78274dc78d8ce95edc2b`  
		Last Modified: Wed, 28 Dec 2016 23:45:36 GMT  
		Size: 13.9 MB (13863634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875463d1dd116915d9d97932cb7fbe173b4ba42062533d210f66ca42755b4c73`  
		Last Modified: Wed, 28 Dec 2016 23:45:31 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3ff077843e29139b060f86f4ef2bad9f32620c5d2ab6cb035d292423313500`  
		Last Modified: Wed, 28 Dec 2016 23:45:30 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f753482fb1a8311377bc219a9c2d6d3778b7d517b5a98a3baf7f8e2ad2e913a`  
		Last Modified: Wed, 28 Dec 2016 23:45:47 GMT  
		Size: 58.2 MB (58198827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0327514d11893fd81bfc0f68edd43cba5077f2da69ee4dd912c1556d87829473`  
		Last Modified: Wed, 28 Dec 2016 23:45:28 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a3f9ff4e36cfcf608037b7916cea04f7b5d406a1deaf5f6fea7e0017bf9457`  
		Last Modified: Wed, 28 Dec 2016 23:48:21 GMT  
		Size: 2.4 MB (2372939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b41ad52abc609c25ba98aeae8ebbb6a1955caa2711b56556b5787344c3b495f`  
		Last Modified: Wed, 28 Dec 2016 23:48:34 GMT  
		Size: 75.5 MB (75545717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76e7be954264f13dc9eb41ac29853bc1fd3d21d15b5655aff70000d2799a192`  
		Last Modified: Sat, 31 Dec 2016 00:38:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06899d6b9b5aa3c134c0bf1e8eb65d54101f0fad385031f299b9404358acbbb7`  
		Last Modified: Sat, 31 Dec 2016 00:39:19 GMT  
		Size: 15.5 MB (15498873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2202fef1372ee431515b62640462df07cfb4cf661ab4872f3e00e3829e2ed70`  
		Last Modified: Sat, 31 Dec 2016 00:39:19 GMT  
		Size: 4.1 MB (4066006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
