## `redmine:latest`

```console
$ docker pull redmine@sha256:fdf0b041fb1eb0010f0f0a202207dfc3d65a89a30726c2a744c7e7ef0445a250
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.9 MB (246852713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97ac7031e11146143936bb769db83e2c8b79b93e673be4b6016ed3972c883b4`
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
# Tue, 28 Feb 2017 23:19:51 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 01 Mar 2017 00:03:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 07 Mar 2017 01:19:52 GMT
ENV BUNDLER_VERSION=1.14.6
# Tue, 07 Mar 2017 01:19:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 07 Mar 2017 01:19:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 07 Mar 2017 01:19:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Mar 2017 01:19:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 07 Mar 2017 01:19:58 GMT
CMD ["irb"]
# Tue, 07 Mar 2017 19:46:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 07 Mar 2017 19:47:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Mar 2017 19:47:09 GMT
ENV GOSU_VERSION=1.7
# Tue, 07 Mar 2017 19:47:14 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 07 Mar 2017 19:47:14 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 07 Mar 2017 19:47:17 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 07 Mar 2017 19:47:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 07 Mar 2017 19:47:44 GMT
ENV RAILS_ENV=production
# Tue, 07 Mar 2017 19:47:45 GMT
WORKDIR /usr/src/redmine
# Tue, 07 Mar 2017 19:53:01 GMT
ENV REDMINE_VERSION=3.3.2
# Tue, 07 Mar 2017 19:53:02 GMT
ENV REDMINE_DOWNLOAD_MD5=8e403981dc3a19a42ee978f055be62ca
# Tue, 07 Mar 2017 19:53:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 07 Mar 2017 19:55:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 07 Mar 2017 19:55:23 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 07 Mar 2017 19:55:23 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 07 Mar 2017 19:55:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Mar 2017 19:55:24 GMT
EXPOSE 3000/tcp
# Tue, 07 Mar 2017 19:55:24 GMT
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
	-	`sha256:c9d75ee894701cb9cc9a1be374d3f374415ece556401fbcc1fc4ec6fcdd02652`  
		Last Modified: Thu, 02 Mar 2017 04:07:27 GMT  
		Size: 33.4 MB (33371396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b068eeb6df998337e5c6d4b0d7f9ee04e378c776dd4bc09ce7ba622e97903c`  
		Last Modified: Tue, 07 Mar 2017 01:24:54 GMT  
		Size: 638.1 KB (638107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d17fc24fe2de0b7d9e626ef8d109cbac6a886db425a582ecaba57ffb78ef59a`  
		Last Modified: Tue, 07 Mar 2017 01:24:53 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4830c1000bc368039eea4ff0c957f89f00a472d6e66294764aa5de615e0a0560`  
		Last Modified: Tue, 07 Mar 2017 19:56:05 GMT  
		Size: 2.0 KB (2042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370c88b187d0154941d554a8cc8409f0233d34ff292c0cd92161f5daae7bb09b`  
		Last Modified: Tue, 07 Mar 2017 19:56:08 GMT  
		Size: 13.9 MB (13863915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ca86b2e099b28229c63622b32a62577d5302d5c6edefe6aada213f45f8752e`  
		Last Modified: Tue, 07 Mar 2017 19:56:04 GMT  
		Size: 807.9 KB (807934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d103bb9c9fa2e86615eddf5073e052d43e8491bd63c63d5aa8648057b38a8399`  
		Last Modified: Tue, 07 Mar 2017 19:56:03 GMT  
		Size: 7.1 KB (7121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1712439fa0f4f1e9050158bcca717d124c1df0f1ce0cef79e5bbc0e2dd5481`  
		Last Modified: Tue, 07 Mar 2017 19:56:19 GMT  
		Size: 58.2 MB (58213201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f8b76261f08a215d78bc3b7af0a9e1f8371c1d8df1f0a62a890aeb11f25d2f`  
		Last Modified: Tue, 07 Mar 2017 19:56:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb7f58632880d952bcbe9abf635eca9101e460839992afeb566c3c778ecd7fa`  
		Last Modified: Tue, 07 Mar 2017 19:59:35 GMT  
		Size: 2.4 MB (2376991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac859674f13e81e47b810f4fe7f1df3398f691a04bff9396a376c1bd8277fb4`  
		Last Modified: Tue, 07 Mar 2017 19:59:48 GMT  
		Size: 76.2 MB (76211430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d15266efc5d3f66951d43542d373550702274f186f51928d7312be09a5e9e5`  
		Last Modified: Tue, 07 Mar 2017 19:59:34 GMT  
		Size: 1.5 KB (1526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
