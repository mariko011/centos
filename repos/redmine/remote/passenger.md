## `redmine:passenger`

```console
$ docker pull redmine@sha256:2da8e47de2ef9dafccc12e2bb6a7eb71fcc5ac05021e67caf0f6c25851645fd8
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267611931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc69c7f1445dc40ca24e6372846226bd08bc6ddc0f6d37c1079183659f06b578`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 03:23:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 03:23:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 31 Aug 2016 03:35:09 GMT
ENV RUBY_MAJOR=2.2
# Wed, 31 Aug 2016 03:35:09 GMT
ENV RUBY_VERSION=2.2.5
# Wed, 31 Aug 2016 03:35:10 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Wed, 31 Aug 2016 03:35:10 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 31 Aug 2016 03:37:52 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Wed, 31 Aug 2016 03:37:53 GMT
ENV BUNDLER_VERSION=1.12.5
# Wed, 31 Aug 2016 03:37:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 31 Aug 2016 03:37:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 31 Aug 2016 03:37:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 31 Aug 2016 03:37:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 03:37:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 31 Aug 2016 03:37:56 GMT
CMD ["irb"]
# Wed, 31 Aug 2016 14:09:16 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 31 Aug 2016 14:09:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 31 Aug 2016 14:09:22 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 31 Aug 2016 14:09:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 14:09:25 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 31 Aug 2016 14:09:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 14:09:49 GMT
ENV RAILS_ENV=production
# Wed, 31 Aug 2016 14:09:49 GMT
WORKDIR /usr/src/redmine
# Wed, 31 Aug 2016 14:15:08 GMT
ENV REDMINE_VERSION=3.3.0
# Wed, 31 Aug 2016 14:15:09 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Wed, 31 Aug 2016 20:28:39 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 31 Aug 2016 20:30:51 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 20:30:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 31 Aug 2016 20:30:52 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 31 Aug 2016 20:30:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:30:53 GMT
EXPOSE 3000/tcp
# Wed, 31 Aug 2016 20:30:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 31 Aug 2016 20:30:54 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 31 Aug 2016 20:31:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 20:31:10 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 31 Aug 2016 20:31:10 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e8b87673550f90ea78b9b5bd76d6a3108f59804254744a839549004efe879e`  
		Last Modified: Wed, 31 Aug 2016 20:33:22 GMT  
		Size: 13.7 MB (13655213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b3b9b9b942ed70825e9eddface6b2f4e8e0b80f72b868ae49f4a3a6750a35f`  
		Last Modified: Wed, 31 Aug 2016 20:33:15 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf2009a9db65f416f7c11b22ae6ee03dda1ca6634d2c7e2b0cc9c53d0dd36323`  
		Last Modified: Wed, 31 Aug 2016 20:33:30 GMT  
		Size: 33.6 MB (33632949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32bb7b1645a3500b030e71dccd137e5915806a81a2a2c17cb42498298c0f73`  
		Last Modified: Wed, 31 Aug 2016 20:33:11 GMT  
		Size: 557.3 KB (557256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b246e2df636716265ef3c347aac197c449c663650c98723edf4e068a28e40b53`  
		Last Modified: Wed, 31 Aug 2016 20:33:11 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc88aa08865865a381e8afdd5dabf87c4cd72fba1338fc39525eba3211ddce5`  
		Last Modified: Wed, 31 Aug 2016 20:33:10 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd3638a31823eb220e241d4340168c86d7c834094be043030e71a43e2fc6267`  
		Last Modified: Wed, 31 Aug 2016 20:33:08 GMT  
		Size: 807.9 KB (807927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4093d23aa00d6d27d33d79d57784536198b567b4e87c2b139839a52cfcb05d4`  
		Last Modified: Wed, 31 Aug 2016 20:33:07 GMT  
		Size: 7.1 KB (7115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed76f67933eb8ba6bf034365e8d47643372205adf8197d4319cab600c1c8949c`  
		Last Modified: Wed, 31 Aug 2016 20:33:30 GMT  
		Size: 56.8 MB (56777016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d276c5d2ff5f63013aceb03520a78b65ce1be2157e3ed6ee899ebe5b25d3b4cd`  
		Last Modified: Wed, 31 Aug 2016 20:33:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6596aa73fdc419cea9e5ab4a33dfbab274355f6597694a1362c5b150accbe3da`  
		Last Modified: Wed, 31 Aug 2016 20:35:21 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07304ae14f0db50be8c7e4f610c7e61858259b694afffb43332d888956ab4e4c`  
		Last Modified: Wed, 31 Aug 2016 20:35:33 GMT  
		Size: 76.3 MB (76307032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c016ae299221f2107515d192f1ecac825d12981dcfd90529ef4f69f8ade28e2`  
		Last Modified: Wed, 31 Aug 2016 20:35:19 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5798634a75e1c3004c2f805966d98ac60c971b3cf2db2c343b09123659ed486`  
		Last Modified: Wed, 31 Aug 2016 20:36:11 GMT  
		Size: 21.7 MB (21707625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6587bf81fae885173036cc8e05f93299453e21bad905221059073e54789e80bc`  
		Last Modified: Wed, 31 Aug 2016 20:36:11 GMT  
		Size: 10.4 MB (10418741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
