## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:d499ff92d03e874eb3cfc80a77e1ef6d6487bb49d11f4279e16a6f3ebe5603d7
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279491716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe33da0697b201ffc9c99e15b7356642abd16dff6727cb5be53bcad7b37e3944`
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
# Wed, 28 Sep 2016 21:05:23 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:07:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:07:57 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:07:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:07:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:07:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:07:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:08:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:08:00 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:32:38 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 28 Sep 2016 21:32:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 21:32:48 GMT
ENV GOSU_VERSION=1.7
# Wed, 28 Sep 2016 21:32:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 28 Sep 2016 21:32:54 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 28 Sep 2016 21:32:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 28 Sep 2016 21:33:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Sep 2016 21:33:29 GMT
ENV RAILS_ENV=production
# Wed, 28 Sep 2016 21:33:30 GMT
WORKDIR /usr/src/redmine
# Wed, 28 Sep 2016 21:33:30 GMT
ENV REDMINE_VERSION=3.3.0
# Wed, 28 Sep 2016 21:33:30 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Wed, 28 Sep 2016 21:33:35 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 28 Sep 2016 21:35:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Sep 2016 21:35:59 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 28 Sep 2016 21:35:59 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 28 Sep 2016 21:36:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Sep 2016 21:36:00 GMT
EXPOSE 3000/tcp
# Wed, 28 Sep 2016 21:36:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 28 Sep 2016 21:37:10 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 28 Sep 2016 21:37:25 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 28 Sep 2016 21:37:26 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 28 Sep 2016 21:37:27 GMT
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
	-	`sha256:578f85a35f3d77f4fea435c76fe5d5316f9ec3bc84f65ed5619330b43b521f27`  
		Last Modified: Wed, 28 Sep 2016 21:20:41 GMT  
		Size: 33.7 MB (33658062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf97434d753fb2b358f215fd4ee359334221b4ff35f831e3acacb6dbfaef4884`  
		Last Modified: Wed, 28 Sep 2016 21:20:30 GMT  
		Size: 610.0 KB (609967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151cebef6c785d233dd8cc39e6970835af8bbf79a8e350468170596a381d55f0`  
		Last Modified: Wed, 28 Sep 2016 21:20:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5ca7097d73e83cf474a2b048113f877fab9d88ac5551f19c500afd6f8957c3`  
		Last Modified: Wed, 28 Sep 2016 21:36:15 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9902580d3e8d76adcbd484747eecad027a72d5c5305a052ca224512cb5e57a6`  
		Last Modified: Wed, 28 Sep 2016 21:36:18 GMT  
		Size: 13.9 MB (13862079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c153b875ddd21b63b1e04a90ab13a31de0efad133fceffabfe93b78483bc23`  
		Last Modified: Wed, 28 Sep 2016 21:36:13 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b14072e34788a50d46fbb7498fb636994404e6305759859512d98c380803baa`  
		Last Modified: Wed, 28 Sep 2016 21:36:12 GMT  
		Size: 7.1 KB (7123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb0841c233d471d651f4de1ad106125f45b4ffd782c979ac0bef5aabd81a232`  
		Last Modified: Wed, 28 Sep 2016 21:36:28 GMT  
		Size: 58.2 MB (58200124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3e0705270491cc6567ecf8d86a4d7a49265097ac53a9a605d710c300945569`  
		Last Modified: Wed, 28 Sep 2016 21:36:09 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9855e3e1978b8c32458025ef86d02d5daf0a842990ef62788e06d7513b3a0e4f`  
		Last Modified: Wed, 28 Sep 2016 21:36:10 GMT  
		Size: 2.4 MB (2370090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ada3348f67ffdad66208d9399f99160ca6b18f3debfcf56eff26e74f6c0e885`  
		Last Modified: Wed, 28 Sep 2016 21:36:26 GMT  
		Size: 76.5 MB (76509276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec8bee56097131a33787d25a0bcb7b48778dace2b28d6a8af5557faa01d6f52`  
		Last Modified: Wed, 28 Sep 2016 21:36:09 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5c87abd6815405ebec27154ed677766599913a3376716425b8b501dc021fa3`  
		Last Modified: Wed, 28 Sep 2016 21:37:42 GMT  
		Size: 21.7 MB (21709940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7084205cd036c0374ceed7b7c02711ecd1f8a74bf7d6d337c3a909f56215bc`  
		Last Modified: Wed, 28 Sep 2016 21:37:39 GMT  
		Size: 10.4 MB (10418751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
