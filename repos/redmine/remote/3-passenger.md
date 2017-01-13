## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:21d7887eaab28f3be4bf954861b09841c130db7d238ad5cbce9cdad1d262be28
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (265995386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b15d0d2bbb342096b4019bd770446dc5abc7818f24fdc394edfc0f0abe182eb`
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
# Wed, 04 Jan 2017 21:44:17 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Wed, 04 Jan 2017 21:44:18 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 21:46:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 21:46:54 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 21:46:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 21:46:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 21:46:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 21:46:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 21:46:58 GMT
CMD ["irb"]
# Fri, 06 Jan 2017 19:07:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 06 Jan 2017 19:07:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:07:55 GMT
ENV GOSU_VERSION=1.7
# Fri, 06 Jan 2017 19:07:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 06 Jan 2017 19:08:00 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 06 Jan 2017 19:08:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 06 Jan 2017 19:08:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 06 Jan 2017 19:08:57 GMT
ENV RAILS_ENV=production
# Fri, 06 Jan 2017 19:08:58 GMT
WORKDIR /usr/src/redmine
# Fri, 13 Jan 2017 19:12:03 GMT
ENV REDMINE_VERSION=3.3.2
# Fri, 13 Jan 2017 19:12:03 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Fri, 13 Jan 2017 19:12:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 13 Jan 2017 19:14:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Jan 2017 19:14:43 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 13 Jan 2017 19:14:43 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Fri, 13 Jan 2017 19:14:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 13 Jan 2017 19:14:44 GMT
EXPOSE 3000/tcp
# Fri, 13 Jan 2017 19:14:45 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 13 Jan 2017 19:14:46 GMT
ENV PASSENGER_VERSION=5.1.1
# Fri, 13 Jan 2017 19:14:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 13 Jan 2017 19:15:01 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 13 Jan 2017 19:15:01 GMT
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
	-	`sha256:257659db5f268997b3e78b801ebe6066f4d2ba03c4e7f9caa36cb215dbaa0c53`  
		Last Modified: Thu, 05 Jan 2017 01:05:08 GMT  
		Size: 33.3 MB (33291664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a342829244cca6fa4eeef8253356273a37fd3ab9e360df913910c5b3a1448d`  
		Last Modified: Thu, 05 Jan 2017 01:04:54 GMT  
		Size: 612.9 KB (612876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654c6533795125255642421c127b0fd21e40df51d30a4a6d78f59b412fcb8adb`  
		Last Modified: Thu, 05 Jan 2017 01:04:53 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d52884166c5cb47a79c30ce6e400f877a0be0b8ceecd0f349eb5495d5c298f6`  
		Last Modified: Fri, 06 Jan 2017 19:17:10 GMT  
		Size: 2.0 KB (2047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3308fe3dee06524e29cffeb1d2b4950aa811efd9e5de411d964857dd893c13`  
		Last Modified: Fri, 06 Jan 2017 19:17:13 GMT  
		Size: 13.9 MB (13863822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa2d33d277d871baa230112c85c372fee5952b2c480ec30f53dd50c9279503f`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 807.9 KB (807928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ba9211badb9110a175a7425ae910b128e03f51fb0d317030f867726b1a387c`  
		Last Modified: Fri, 06 Jan 2017 19:17:07 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e581e651c1b7423841edf5565e6d4eda8cc110c9afc721fb58fed51347e006`  
		Last Modified: Fri, 06 Jan 2017 19:17:25 GMT  
		Size: 58.2 MB (58199594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b363b4c7334d4b474b32563fd8e1e6378cf5b722e34301c60fc3c8b1b4b7265`  
		Last Modified: Fri, 06 Jan 2017 19:17:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd4a3c6ad34b57773963c03bb8fead2f4f83a81761d119d1fc11e1c440f9a40`  
		Last Modified: Fri, 13 Jan 2017 19:17:43 GMT  
		Size: 2.4 MB (2376993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587cb6f8cdfbbe41700e23c249ad3176e82c500cd7a2641a010fd6bef372f502`  
		Last Modified: Fri, 13 Jan 2017 19:17:58 GMT  
		Size: 75.9 MB (75921889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a16a954e0e38f92341aa7142ba5b59afae86467ace52af0db065c2b046c5216`  
		Last Modified: Fri, 13 Jan 2017 19:17:43 GMT  
		Size: 1.5 KB (1528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e0cd6d7c1937bfeb46ca3c959bb8a02b1ef1a19ecd77c62f7f81fbde3e57eb`  
		Last Modified: Fri, 13 Jan 2017 19:19:05 GMT  
		Size: 15.5 MB (15499217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb923be0b1159fd88bcf8100487dd7ecca60f9332fd4e8c1bfd0d276e44b90e`  
		Last Modified: Fri, 13 Jan 2017 19:19:03 GMT  
		Size: 4.1 MB (4066020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
