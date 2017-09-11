## `redmine:passenger`

```console
$ docker pull redmine@sha256:06270dd08c9026fe2d62318b2e6ee9d1ffb04bbefdeca4ed2c5a1bb793948247
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258926266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da23060cb77f18325bddf83543ea5cc3ba7c725eefe890bc146f9647eea71fe9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 10:41:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:41:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:41:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:44:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:44:33 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:44:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:44:35 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:44:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:44:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:44:36 GMT
CMD ["irb"]
# Mon, 11 Sep 2017 17:33:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 11 Sep 2017 17:34:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:03 GMT
ENV GOSU_VERSION=1.10
# Mon, 11 Sep 2017 17:34:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 11 Sep 2017 17:34:07 GMT
ENV TINI_VERSION=v0.16.1
# Mon, 11 Sep 2017 17:34:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 11 Sep 2017 17:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:34:51 GMT
ENV RAILS_ENV=production
# Mon, 11 Sep 2017 17:34:51 GMT
WORKDIR /usr/src/redmine
# Mon, 11 Sep 2017 17:34:51 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 11 Sep 2017 17:34:52 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 11 Sep 2017 17:34:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 11 Sep 2017 17:37:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:37:37 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 11 Sep 2017 17:37:37 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Mon, 11 Sep 2017 17:37:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 11 Sep 2017 17:37:38 GMT
EXPOSE 3000/tcp
# Mon, 11 Sep 2017 17:37:38 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 11 Sep 2017 17:43:30 GMT
ENV PASSENGER_VERSION=5.1.8
# Mon, 11 Sep 2017 17:43:54 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 11 Sep 2017 17:43:55 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Mon, 11 Sep 2017 17:43:55 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630961cd723d6018156c710c9c1978753cc86057ea04cfc3f1d320a5bfc8b2c4`  
		Last Modified: Mon, 11 Sep 2017 14:55:56 GMT  
		Size: 10.2 MB (10161011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8360ec98d42f0581aa96800260bf802b60b1f101e483cf3636a0a6f96ed8c31c`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d94300f88afbc862bcfbef2b9c98e54a545ba64a4e2072a2e81414047a9d2a6`  
		Last Modified: Mon, 11 Sep 2017 14:56:00 GMT  
		Size: 23.3 MB (23300991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7814d079bee2c9a24d892a6affefdd3e99a2712ac4bb57ed80e0aaab07eeb0a8`  
		Last Modified: Mon, 11 Sep 2017 14:55:52 GMT  
		Size: 675.3 KB (675309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7e0b2eec13916385aade488f521cbc4f09fc7303ec35ac40d453a94c184ad0`  
		Last Modified: Mon, 11 Sep 2017 14:55:51 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d0159d7fec783546dd84a487187c89853eec8cbe1f31d3e80dc89da6eed482`  
		Last Modified: Mon, 11 Sep 2017 17:54:12 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7545bad4c17d000c55a69ba27df1d658a5ae00c7acdc93e779fb97868361948e`  
		Last Modified: Mon, 11 Sep 2017 17:54:16 GMT  
		Size: 14.4 MB (14422173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43842c551d447c4fb6fba9af32238792bda5b000b8b3b3a8a47c85de9a2d753d`  
		Last Modified: Mon, 11 Sep 2017 17:54:13 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf518eaf7ae2bd7da56d9a5a5c64c8de349d8ad76b1db3973ebf696f0f2ca48`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 8.5 KB (8492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8deb1ded6bfa6e6a2df2e91ed0221d7e401e9c8278033868d7f4bf93670086`  
		Last Modified: Mon, 11 Sep 2017 17:54:30 GMT  
		Size: 59.2 MB (59237405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44478ac4f3d78bad67fa7de931084929f7fb965b3487da9aa114eae439f5a2a3`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6434700ae50f814dd34e1e656d949250e1ceb1cb9466705545c08fbca1a412`  
		Last Modified: Mon, 11 Sep 2017 17:54:14 GMT  
		Size: 2.4 MB (2447805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc6474d385b49c05a5627e5680bc79ffce3877b671df8ff319c4e257342597f`  
		Last Modified: Mon, 11 Sep 2017 17:54:31 GMT  
		Size: 76.7 MB (76693488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291cf1bc7caaace579069da280e92008f5763ec3f64c8c30475ee829e592847`  
		Last Modified: Mon, 11 Sep 2017 17:54:10 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7485bae212ff9b90e7ce70b31e80d38e94b6c4ae665768cba6b4a3a957f8010b`  
		Last Modified: Mon, 11 Sep 2017 17:55:27 GMT  
		Size: 14.6 MB (14605221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f9138e075e115e8144740de1210f0e896d3ec27b609330cbbafb0fb1646e6`  
		Last Modified: Mon, 11 Sep 2017 17:55:21 GMT  
		Size: 4.3 MB (4273903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
