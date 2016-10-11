## `redmine:passenger`

```console
$ docker pull redmine@sha256:c2155634b5afbe13364f30c78317b17ef8737e1b15ba718cded11bb80b38149e
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278317443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e585736ae43ed358c84089f87ced19a4f1661c73a6408e51b67529778c0e059`
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
# Sat, 01 Oct 2016 00:29:33 GMT
ENV BUNDLER_VERSION=1.13.2
# Sat, 01 Oct 2016 00:29:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 01 Oct 2016 00:29:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 01 Oct 2016 00:29:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 01 Oct 2016 00:29:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Oct 2016 00:29:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 01 Oct 2016 00:29:38 GMT
CMD ["irb"]
# Mon, 10 Oct 2016 23:41:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 10 Oct 2016 23:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Oct 2016 23:41:50 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Oct 2016 23:41:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 10 Oct 2016 23:41:56 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 10 Oct 2016 23:41:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 10 Oct 2016 23:42:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Oct 2016 23:42:30 GMT
ENV RAILS_ENV=production
# Mon, 10 Oct 2016 23:42:30 GMT
WORKDIR /usr/src/redmine
# Mon, 10 Oct 2016 23:48:08 GMT
ENV REDMINE_VERSION=3.3.1
# Mon, 10 Oct 2016 23:48:08 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Mon, 10 Oct 2016 23:48:12 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 10 Oct 2016 23:50:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Oct 2016 23:50:35 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 10 Oct 2016 23:50:36 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Mon, 10 Oct 2016 23:50:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Oct 2016 23:50:37 GMT
EXPOSE 3000/tcp
# Mon, 10 Oct 2016 23:50:37 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Mon, 10 Oct 2016 23:50:37 GMT
ENV PASSENGER_VERSION=5.0.30
# Mon, 10 Oct 2016 23:50:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 10 Oct 2016 23:50:53 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Mon, 10 Oct 2016 23:50:53 GMT
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
	-	`sha256:4e40b1ee7d0345abfc05dec1f19161435f5fdc0cf442dd853a1219e2231aa4af`  
		Last Modified: Sat, 01 Oct 2016 00:32:31 GMT  
		Size: 611.7 KB (611681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b91d7635a45a293cc68738895fc0833cd7f80e0ed89d5e63663130bbe145f309`  
		Last Modified: Sat, 01 Oct 2016 00:32:29 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c66be832bce5b7eaff9e55ec30aff80f4424ab30ca86785c9ee899b5be59d4`  
		Last Modified: Mon, 10 Oct 2016 23:51:08 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae4431205de7fe962184af62529804236f1cecda7650e7e08bd7748b8da683d`  
		Last Modified: Mon, 10 Oct 2016 23:51:12 GMT  
		Size: 13.9 MB (13862071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a0019218202c004ae0cbb0b90f9a2d48f5d27226ff742fa485af9c1ca9e6fb`  
		Last Modified: Mon, 10 Oct 2016 23:51:05 GMT  
		Size: 807.9 KB (807929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5dd9e7c84410e2bcd095b5a944fb5003d3fc66770f09fe38ad3c34361e3b90a`  
		Last Modified: Mon, 10 Oct 2016 23:51:04 GMT  
		Size: 7.1 KB (7118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5e784c2cfe4c20e7323561c13cbe7d3b38b007aa69162ebb5b84758647f7cd`  
		Last Modified: Mon, 10 Oct 2016 23:51:22 GMT  
		Size: 58.2 MB (58201281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea49bd63e63a6001cd203ae5831721263be70be32c9d4a90109b091a8d44609`  
		Last Modified: Mon, 10 Oct 2016 23:51:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9d3ad7565e09d165427ba4e306ffe38d2738fdab0ed41d066b1d9d186fb80d`  
		Last Modified: Mon, 10 Oct 2016 23:53:30 GMT  
		Size: 2.4 MB (2372934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3351c12ad4cdc009449314057e5d8ef03f0cccbdad7690937017f36aadbdb0`  
		Last Modified: Mon, 10 Oct 2016 23:53:43 GMT  
		Size: 75.3 MB (75329169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e32328616678d5b4fa0d6997d74c63b6e02fb7cabd4b19427554f837dd97ede`  
		Last Modified: Mon, 10 Oct 2016 23:53:30 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02683074258c9ed9e9875cd393eb95090ac6867281f3adab5d0611c5d534c73a`  
		Last Modified: Mon, 10 Oct 2016 23:54:35 GMT  
		Size: 21.7 MB (21710076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eb480c747ff9ab674c822c2a02dab5d7a3b9501e26e7a7df2ceab380eab66d4`  
		Last Modified: Mon, 10 Oct 2016 23:54:35 GMT  
		Size: 10.4 MB (10418750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
