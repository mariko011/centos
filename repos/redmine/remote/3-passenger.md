## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:3cb67ff8913108742eeb06df39b84ce519e591afe2fe1ab3154db5fb16068dda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:702ed4b8c09d1dc24e0f826d8cacdf1a2fc108ac324579a4cd5e6cef602c4063
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.7 MB (258680554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d722379b006b80ef190ce305862060c2e9f69f32599e338232213bbde89f1c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 13 Nov 2017 16:13:59 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 16:13:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 16:18:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 16:18:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 16:18:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 16:18:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 16:18:29 GMT
CMD ["irb"]
# Mon, 13 Nov 2017 17:39:09 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 13 Nov 2017 17:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:26 GMT
ENV GOSU_VERSION=1.10
# Mon, 13 Nov 2017 17:39:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 13 Nov 2017 17:39:30 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 13 Nov 2017 17:39:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 13 Nov 2017 17:39:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 13 Nov 2017 17:39:59 GMT
ENV RAILS_ENV=production
# Mon, 13 Nov 2017 17:39:59 GMT
WORKDIR /usr/src/redmine
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_VERSION=3.4.3
# Mon, 13 Nov 2017 17:39:59 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Mon, 13 Nov 2017 17:40:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 13 Nov 2017 17:42:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 13 Nov 2017 17:42:24 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 13 Nov 2017 17:42:24 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Mon, 13 Nov 2017 17:42:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 13 Nov 2017 17:42:28 GMT
EXPOSE 3000/tcp
# Mon, 13 Nov 2017 17:42:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 27 Nov 2017 23:51:36 GMT
ENV PASSENGER_VERSION=5.1.12
# Mon, 27 Nov 2017 23:51:56 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 27 Nov 2017 23:51:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 27 Nov 2017 23:51:58 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d01efe902ac83d7ece77d07b1ae734ae6c1a17dba7627f3aeea2c0970893cd`  
		Last Modified: Mon, 13 Nov 2017 16:56:21 GMT  
		Size: 24.7 MB (24691023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e51b00a9a59c7fa333a46e0f593064a28007b574c2f716950619d6fda16b745`  
		Last Modified: Mon, 13 Nov 2017 16:56:10 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c743c043442da02714d3ba47b228d20cc1c6d40f598e1e8b10dfbf6eeda471ac`  
		Last Modified: Mon, 13 Nov 2017 17:50:38 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcf3c9e769a791cd897f3d2f4158b1b5ff7f259b631c122a96f21764475941d`  
		Last Modified: Mon, 13 Nov 2017 17:50:43 GMT  
		Size: 14.7 MB (14650354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bf4ee5ba98ead1720021cf7e4ac3a7a63fffd81c9771b0d663ffe9e149415f`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 500.7 KB (500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d7ee5d63d9f8b75e4f790873957fe599cad3c797af0fffce2effbeb7ace7ee`  
		Last Modified: Mon, 13 Nov 2017 17:50:35 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d2214839a2daf9ad439a6c2a52bc3768e1c1d24468a8fcb021df370fd3be96`  
		Last Modified: Mon, 13 Nov 2017 17:50:50 GMT  
		Size: 59.2 MB (59230431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408b1174a85d904272395109d1fe4ac0d033f5792294d13c90410d9db5c88a2b`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b5b81a236af934557a82edc1866bb50f95197e7d306b62ecbd154eea162b9`  
		Last Modified: Mon, 13 Nov 2017 17:50:33 GMT  
		Size: 2.4 MB (2449736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3a98275aa7769dcd42638bbbad8d326887595bad6bdaf186de172f38f93d01`  
		Last Modified: Mon, 13 Nov 2017 17:51:10 GMT  
		Size: 77.6 MB (77551212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ce725ae048a1d5dc1e85d980b991f7e179c85f1f5856d404098fc1fd3cd1003`  
		Last Modified: Mon, 13 Nov 2017 17:50:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f20672eed675297c391be971e459f0d217dc583ffc86d172d032e55e2aa3459`  
		Last Modified: Mon, 27 Nov 2017 23:53:06 GMT  
		Size: 12.8 MB (12760203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4893fd27962c291e70319a01ff6cba559a7cae9aefd9ad1bc38f4bd23ca1d9a3`  
		Last Modified: Mon, 27 Nov 2017 23:53:05 GMT  
		Size: 4.1 MB (4076938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
