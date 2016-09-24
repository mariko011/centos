## `redmine:passenger`

```console
$ docker pull redmine@sha256:02dd8c0baf1b87b60f56f95251971b57949cc4919911af52c99a76428ab8b922
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279460383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a53c2dc0fa218a98bb73b5575c061fb5f127927b1cdd0f03d3cf5ef00313c787`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 23:14:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:14:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Sep 2016 23:22:54 GMT
ENV RUBY_MAJOR=2.2
# Fri, 23 Sep 2016 23:22:58 GMT
ENV RUBY_VERSION=2.2.5
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Fri, 23 Sep 2016 23:22:59 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 23 Sep 2016 23:25:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Sep 2016 23:25:52 GMT
ENV BUNDLER_VERSION=1.13.1
# Fri, 23 Sep 2016 23:25:53 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Sep 2016 23:25:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Sep 2016 23:25:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 23:25:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Sep 2016 23:25:59 GMT
CMD ["irb"]
# Fri, 23 Sep 2016 23:30:28 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Fri, 23 Sep 2016 23:30:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:30:37 GMT
ENV GOSU_VERSION=1.7
# Fri, 23 Sep 2016 23:30:42 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Fri, 23 Sep 2016 23:30:43 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:30:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Fri, 23 Sep 2016 23:31:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:31:33 GMT
ENV RAILS_ENV=production
# Fri, 23 Sep 2016 23:31:34 GMT
WORKDIR /usr/src/redmine
# Fri, 23 Sep 2016 23:37:14 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 23 Sep 2016 23:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 23 Sep 2016 23:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 24 Sep 2016 05:37:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:37:09 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 24 Sep 2016 05:37:10 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Sat, 24 Sep 2016 05:37:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 24 Sep 2016 05:37:11 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 05:37:11 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 24 Sep 2016 05:38:21 GMT
ENV PASSENGER_VERSION=5.0.30
# Sat, 24 Sep 2016 05:38:36 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 24 Sep 2016 05:38:37 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Sat, 24 Sep 2016 05:38:38 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26398b0d5f92a7c6df0c722a6663280118da9cbb18d0211b261461a8019aae58`  
		Last Modified: Fri, 23 Sep 2016 23:18:04 GMT  
		Size: 10.0 MB (9980312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8e18bc2bdcb1277f1adafc4acd74b960c8dcfc9b04f0f82be17c99b001a969`  
		Last Modified: Fri, 23 Sep 2016 23:18:00 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4bb6ee92c7b80c4cb14d83c10fbea640b3b6c2731d50e456460574e72a036d`  
		Last Modified: Fri, 23 Sep 2016 23:26:18 GMT  
		Size: 33.7 MB (33653534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178687c0c0a47e0560c57896f6db314c229fdb7ccce57602e107cd81f86678cb`  
		Last Modified: Fri, 23 Sep 2016 23:26:08 GMT  
		Size: 609.9 KB (609928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5763d1068754cdece3fc4d19085177546651d2daa4bda8dbffab458163cfc2`  
		Last Modified: Fri, 23 Sep 2016 23:26:06 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ab3d88f914879c807dff7071145c3930597cba1a3deb8593e669d6d0d2e3ab`  
		Last Modified: Sat, 24 Sep 2016 05:37:25 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2a420c550bdfa05d38ae3beb09d06cfc57ed0cd0a7c74ef3c041f8c61fe0a5`  
		Last Modified: Sat, 24 Sep 2016 05:37:30 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db5f8d21cb0b288f6f3d7691543f4a50ccd66d86159aa3077a9e1011d17f6f9`  
		Last Modified: Sat, 24 Sep 2016 05:37:23 GMT  
		Size: 807.9 KB (807933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7fd6785cf4be42f959a2c4d5dfdfcb765df3c6bf4d4e37a04887077a354304`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0524c629a1037b780a7134ebb131706b2dd9a8ccdc622c6aaaa15e425152cf`  
		Last Modified: Sat, 24 Sep 2016 05:37:44 GMT  
		Size: 58.2 MB (58201338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea987bd2b9e0dd8136ad780e10e271de878eaa0e67d278e5d497dd75b1be147c`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230cbc3e1a4ee1edce2f74074a1bbec3c5aded15b658324063c297bab25bbd04`  
		Last Modified: Sat, 24 Sep 2016 05:37:22 GMT  
		Size: 2.4 MB (2370093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1239de192a28e7a93d89cb0dfce59973689ef5ee4b5ae5a63da052e4bde883`  
		Last Modified: Sat, 24 Sep 2016 05:37:36 GMT  
		Size: 76.5 MB (76481224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3653ae21627fc1e8616b3f0a479be8b1ad6c0845f75f8f741958f81664274dd7`  
		Last Modified: Sat, 24 Sep 2016 05:37:19 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9add483e7c69e271885d7ee1c91401851a767645bde001b5ef2153a46582fd5b`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 21.7 MB (21710045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf772dbad9c80ae4fb4b6c4cdc60313292a1ea24be7894dcf875c1928ca9a81`  
		Last Modified: Sat, 24 Sep 2016 05:38:50 GMT  
		Size: 10.4 MB (10418752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
