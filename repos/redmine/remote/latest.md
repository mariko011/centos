## `redmine:latest`

```console
$ docker pull redmine@sha256:90514b0b952f45a12a27a3a513f4d81e3756e1cc9054195e4f108079de8dc421
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (247024496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42818db7b7575fe5de655625b97c9196fe5d2107f97d1196732051927e8dff34`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 23:09:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:09:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:19:49 GMT
ENV RUBY_MAJOR=2.2
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_VERSION=2.2.6
# Tue, 28 Feb 2017 23:19:50 GMT
ENV RUBY_DOWNLOAD_SHA256=9414ecc0d09cf71c9a24e8dc82fcc87919ac7359fb08db2791d6c32bfd157339
# Fri, 17 Mar 2017 23:45:28 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Fri, 17 Mar 2017 23:47:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 17 Mar 2017 23:47:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Fri, 17 Mar 2017 23:47:57 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 17 Mar 2017 23:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 17 Mar 2017 23:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 17 Mar 2017 23:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Mar 2017 23:47:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 17 Mar 2017 23:48:00 GMT
CMD ["irb"]
# Mon, 20 Mar 2017 20:35:39 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 20 Mar 2017 20:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Mar 2017 20:35:49 GMT
ENV GOSU_VERSION=1.7
# Mon, 20 Mar 2017 20:35:54 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 20 Mar 2017 20:35:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 20 Mar 2017 20:35:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 20 Mar 2017 20:36:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 20 Mar 2017 20:36:29 GMT
ENV RAILS_ENV=production
# Mon, 20 Mar 2017 20:36:30 GMT
WORKDIR /usr/src/redmine
# Mon, 20 Mar 2017 20:41:32 GMT
ENV REDMINE_VERSION=3.3.2
# Mon, 20 Mar 2017 20:41:33 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Mon, 20 Mar 2017 20:41:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 20 Mar 2017 20:43:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 20 Mar 2017 20:43:51 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 20 Mar 2017 20:43:52 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Mon, 20 Mar 2017 20:43:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Mar 2017 20:43:53 GMT
EXPOSE 3000/tcp
# Mon, 20 Mar 2017 20:43:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55881edebdb6880f6747845ebd8adcadd073651f9f6805e1ce0c7ba81b909e59`  
		Last Modified: Thu, 02 Mar 2017 04:04:49 GMT  
		Size: 10.0 MB (9995180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8151a8527e142cb1a2efc8dff342a57def4131549650b52e65ae88a1d9abe7`  
		Last Modified: Thu, 02 Mar 2017 04:04:43 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0957e0cc9e362ac5f4cf3a9d787bfac744ffc8ed5c1916495d8e32f1f5459139`  
		Last Modified: Sat, 18 Mar 2017 00:11:18 GMT  
		Size: 33.4 MB (33397490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81349c0dae60a05bc423f6ce0c096a36ebfac25ca16afa35da3de02d281df8cc`  
		Last Modified: Sat, 18 Mar 2017 00:11:05 GMT  
		Size: 638.1 KB (638109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f6747e13a9b9994d3dd2afa09019f93de90c01035695f98afb79422a14d612`  
		Last Modified: Sat, 18 Mar 2017 00:11:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16dd368878f9743f37956fc5b4731141e352fdc21fb9e6b0015d95832aba8e62`  
		Last Modified: Mon, 20 Mar 2017 20:45:40 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0befe22e7bd836d9c5c6c55c663236a951ec882d9703b90da1b0792f229f1ae2`  
		Last Modified: Mon, 20 Mar 2017 20:45:44 GMT  
		Size: 13.9 MB (13863888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4345476d50470dda942b4c98d3fe191cba54c126dc4ef7b30bd7289d30905b14`  
		Last Modified: Mon, 20 Mar 2017 20:45:37 GMT  
		Size: 807.9 KB (807935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9312a011c11ea7f030eab1157c8d407ccb494916512a02dd8a734be952012c1`  
		Last Modified: Mon, 20 Mar 2017 20:45:37 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efc3afe5e2bb4c4351bd71108b551fcb4e52d20484c8471d642c494052e2555`  
		Last Modified: Mon, 20 Mar 2017 20:45:56 GMT  
		Size: 58.2 MB (58214187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79c8deef31679ec406122133ffeddf92aacc92df8c327c2f698cbaa2feefc49`  
		Last Modified: Mon, 20 Mar 2017 20:45:34 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bd34a3d26187dbfd72a5930d6e50e26e4f8ada90ce0b159b6541bc54024df3`  
		Last Modified: Mon, 20 Mar 2017 20:49:12 GMT  
		Size: 2.4 MB (2376993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ffe83c94565e234509320a2414052d69d538b8962d555a9a9bcd476b5a54ee`  
		Last Modified: Mon, 20 Mar 2017 20:49:25 GMT  
		Size: 76.4 MB (76356150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896a4aeb8a5532d7de7f6ae6f539cb100daa2e65b02f1fcd7c5e5d1a579eef20`  
		Last Modified: Mon, 20 Mar 2017 20:49:11 GMT  
		Size: 1.5 KB (1527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
