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
$ docker pull redmine@sha256:e1d4f1e59d0b3ce5f4f2bcc4986ae1db6d30f4b62b89617b765ace19286c5c8a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237750079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcb671fc4fb6750ff3172a28b843a0c2b20912251d4b42a1b295eea12d9ca21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:30:20 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 01 Nov 2016 21:30:20 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 01 Nov 2016 21:30:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:32:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:32:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:32:38 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:32:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:32:38 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:32:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e8308252f0000b1efded9b1ce356d158b2978b8dd2a8779936c0c3c7ec3d42`  
		Last Modified: Tue, 01 Nov 2016 21:32:51 GMT  
		Size: 2.3 MB (2272996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1087b166ee9ade68ea84c9e7532f42c4b361e631f3b1707d666cc2455540c4eb`  
		Last Modified: Tue, 01 Nov 2016 21:33:04 GMT  
		Size: 66.9 MB (66909174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4879ab2c5cf0a84c3da5e61b66442e96782dfceea5754849a4354b161fcc2ed9`  
		Last Modified: Tue, 01 Nov 2016 21:32:50 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:e1d4f1e59d0b3ce5f4f2bcc4986ae1db6d30f4b62b89617b765ace19286c5c8a
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237750079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcb671fc4fb6750ff3172a28b843a0c2b20912251d4b42a1b295eea12d9ca21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:30:20 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 01 Nov 2016 21:30:20 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 01 Nov 2016 21:30:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:32:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:32:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:32:38 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:32:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:32:38 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:32:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e8308252f0000b1efded9b1ce356d158b2978b8dd2a8779936c0c3c7ec3d42`  
		Last Modified: Tue, 01 Nov 2016 21:32:51 GMT  
		Size: 2.3 MB (2272996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1087b166ee9ade68ea84c9e7532f42c4b361e631f3b1707d666cc2455540c4eb`  
		Last Modified: Tue, 01 Nov 2016 21:33:04 GMT  
		Size: 66.9 MB (66909174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4879ab2c5cf0a84c3da5e61b66442e96782dfceea5754849a4354b161fcc2ed9`  
		Last Modified: Tue, 01 Nov 2016 21:32:50 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:78305c682f4d5028da6c06adc21a1b3ad3002a89e2c83f61832789867918f628
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269878562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bcdba1d9e02f1243affb93e7b8821e075647c477e075d532513d8154e26c045`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:30:20 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 01 Nov 2016 21:30:20 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 01 Nov 2016 21:30:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:32:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:32:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:32:38 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:32:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:32:38 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:32:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 01 Nov 2016 21:33:26 GMT
ENV PASSENGER_VERSION=5.0.30
# Tue, 01 Nov 2016 21:33:41 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:33:42 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 01 Nov 2016 21:33:43 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e8308252f0000b1efded9b1ce356d158b2978b8dd2a8779936c0c3c7ec3d42`  
		Last Modified: Tue, 01 Nov 2016 21:32:51 GMT  
		Size: 2.3 MB (2272996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1087b166ee9ade68ea84c9e7532f42c4b361e631f3b1707d666cc2455540c4eb`  
		Last Modified: Tue, 01 Nov 2016 21:33:04 GMT  
		Size: 66.9 MB (66909174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4879ab2c5cf0a84c3da5e61b66442e96782dfceea5754849a4354b161fcc2ed9`  
		Last Modified: Tue, 01 Nov 2016 21:32:50 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887fdcc1ec9765cc4b3bb23e17fbb1c787edbc9538e60c165c12fdd8f771d986`  
		Last Modified: Tue, 01 Nov 2016 21:33:58 GMT  
		Size: 21.7 MB (21709714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3557cabc61faf5e717d8a4ab7b0f9d1015fa2bccb13ee6c26d8e8afa00dcbe17`  
		Last Modified: Tue, 01 Nov 2016 21:33:57 GMT  
		Size: 10.4 MB (10418769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:78305c682f4d5028da6c06adc21a1b3ad3002a89e2c83f61832789867918f628
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269878562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bcdba1d9e02f1243affb93e7b8821e075647c477e075d532513d8154e26c045`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:30:20 GMT
ENV REDMINE_VERSION=3.1.7
# Tue, 01 Nov 2016 21:30:20 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Tue, 01 Nov 2016 21:30:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:32:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:32:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:32:38 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:32:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:32:38 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:32:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 01 Nov 2016 21:33:26 GMT
ENV PASSENGER_VERSION=5.0.30
# Tue, 01 Nov 2016 21:33:41 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:33:42 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 01 Nov 2016 21:33:43 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e8308252f0000b1efded9b1ce356d158b2978b8dd2a8779936c0c3c7ec3d42`  
		Last Modified: Tue, 01 Nov 2016 21:32:51 GMT  
		Size: 2.3 MB (2272996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1087b166ee9ade68ea84c9e7532f42c4b361e631f3b1707d666cc2455540c4eb`  
		Last Modified: Tue, 01 Nov 2016 21:33:04 GMT  
		Size: 66.9 MB (66909174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4879ab2c5cf0a84c3da5e61b66442e96782dfceea5754849a4354b161fcc2ed9`  
		Last Modified: Tue, 01 Nov 2016 21:32:50 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887fdcc1ec9765cc4b3bb23e17fbb1c787edbc9538e60c165c12fdd8f771d986`  
		Last Modified: Tue, 01 Nov 2016 21:33:58 GMT  
		Size: 21.7 MB (21709714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3557cabc61faf5e717d8a4ab7b0f9d1015fa2bccb13ee6c26d8e8afa00dcbe17`  
		Last Modified: Tue, 01 Nov 2016 21:33:57 GMT  
		Size: 10.4 MB (10418769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4`

```console
$ docker pull redmine@sha256:21e06e8c57bd759a7f61986d5566207739bbc36d325b16c1d9622c56419b6b71
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.4 MB (246418937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd0c7b4c0c8d332da0760ee3913445c3a7c6889daf8689d72f0044606b65d95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:34:19 GMT
ENV REDMINE_VERSION=3.2.4
# Tue, 01 Nov 2016 21:34:20 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Tue, 01 Nov 2016 21:34:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:36:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:36:28 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:36:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:36:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:36:30 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:36:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac84eb37d022c5a9a7e7a76e3bd3e673e9702e413970b5e8736cca2ea9f377f5`  
		Last Modified: Tue, 01 Nov 2016 21:36:43 GMT  
		Size: 2.3 MB (2330257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279acdf42d4bf7e45c4f052743f9ea2458901b1292cd91b4796882d5f754271`  
		Last Modified: Tue, 01 Nov 2016 21:36:57 GMT  
		Size: 75.5 MB (75520772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd23d2e8bb5b352fa7e6fde179cd3e2747df4161067c3687562445a64c9d518c`  
		Last Modified: Tue, 01 Nov 2016 21:36:41 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:21e06e8c57bd759a7f61986d5566207739bbc36d325b16c1d9622c56419b6b71
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.4 MB (246418937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd0c7b4c0c8d332da0760ee3913445c3a7c6889daf8689d72f0044606b65d95`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:34:19 GMT
ENV REDMINE_VERSION=3.2.4
# Tue, 01 Nov 2016 21:34:20 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Tue, 01 Nov 2016 21:34:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:36:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:36:28 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:36:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:36:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:36:30 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:36:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac84eb37d022c5a9a7e7a76e3bd3e673e9702e413970b5e8736cca2ea9f377f5`  
		Last Modified: Tue, 01 Nov 2016 21:36:43 GMT  
		Size: 2.3 MB (2330257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279acdf42d4bf7e45c4f052743f9ea2458901b1292cd91b4796882d5f754271`  
		Last Modified: Tue, 01 Nov 2016 21:36:57 GMT  
		Size: 75.5 MB (75520772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd23d2e8bb5b352fa7e6fde179cd3e2747df4161067c3687562445a64c9d518c`  
		Last Modified: Tue, 01 Nov 2016 21:36:41 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4-passenger`

```console
$ docker pull redmine@sha256:a9e489d468241da54ebdee9080eda823ec4e4433913d4ffb5c6844cfa08a450e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4-passenger` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278547446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b1e9298ef45f85c98cb08d742566295ebd42e8da94b81d7fae019a452e4395`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:34:19 GMT
ENV REDMINE_VERSION=3.2.4
# Tue, 01 Nov 2016 21:34:20 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Tue, 01 Nov 2016 21:34:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:36:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:36:28 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:36:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:36:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:36:30 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:36:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 01 Nov 2016 21:37:20 GMT
ENV PASSENGER_VERSION=5.0.30
# Tue, 01 Nov 2016 21:37:34 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:37:36 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 01 Nov 2016 21:37:36 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac84eb37d022c5a9a7e7a76e3bd3e673e9702e413970b5e8736cca2ea9f377f5`  
		Last Modified: Tue, 01 Nov 2016 21:36:43 GMT  
		Size: 2.3 MB (2330257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279acdf42d4bf7e45c4f052743f9ea2458901b1292cd91b4796882d5f754271`  
		Last Modified: Tue, 01 Nov 2016 21:36:57 GMT  
		Size: 75.5 MB (75520772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd23d2e8bb5b352fa7e6fde179cd3e2747df4161067c3687562445a64c9d518c`  
		Last Modified: Tue, 01 Nov 2016 21:36:41 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18d37c1dee2abea25b401211db344090e7616192bf55ac668e1ef16182046c5`  
		Last Modified: Tue, 01 Nov 2016 21:37:51 GMT  
		Size: 21.7 MB (21709750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1c8db77942b0068f80bed90b906a51c05f1c4a2c004f1831961920d51dbef8`  
		Last Modified: Tue, 01 Nov 2016 21:37:51 GMT  
		Size: 10.4 MB (10418759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:a9e489d468241da54ebdee9080eda823ec4e4433913d4ffb5c6844cfa08a450e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278547446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8b1e9298ef45f85c98cb08d742566295ebd42e8da94b81d7fae019a452e4395`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:34:19 GMT
ENV REDMINE_VERSION=3.2.4
# Tue, 01 Nov 2016 21:34:20 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Tue, 01 Nov 2016 21:34:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:36:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:36:28 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:36:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:36:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:36:30 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:36:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 01 Nov 2016 21:37:20 GMT
ENV PASSENGER_VERSION=5.0.30
# Tue, 01 Nov 2016 21:37:34 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:37:36 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 01 Nov 2016 21:37:36 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac84eb37d022c5a9a7e7a76e3bd3e673e9702e413970b5e8736cca2ea9f377f5`  
		Last Modified: Tue, 01 Nov 2016 21:36:43 GMT  
		Size: 2.3 MB (2330257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279acdf42d4bf7e45c4f052743f9ea2458901b1292cd91b4796882d5f754271`  
		Last Modified: Tue, 01 Nov 2016 21:36:57 GMT  
		Size: 75.5 MB (75520772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd23d2e8bb5b352fa7e6fde179cd3e2747df4161067c3687562445a64c9d518c`  
		Last Modified: Tue, 01 Nov 2016 21:36:41 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18d37c1dee2abea25b401211db344090e7616192bf55ac668e1ef16182046c5`  
		Last Modified: Tue, 01 Nov 2016 21:37:51 GMT  
		Size: 21.7 MB (21709750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f1c8db77942b0068f80bed90b906a51c05f1c4a2c004f1831961920d51dbef8`  
		Last Modified: Tue, 01 Nov 2016 21:37:51 GMT  
		Size: 10.4 MB (10418759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1`

```console
$ docker pull redmine@sha256:607e85f386ba633f0af370b779aa5c5c4b350c104df2205fc363773f1a56058f
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246461402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfba59e097baac9d022ffcc1a8fee501af97bcb29907c674c92c8a1db1860a80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:25:29 GMT
ENV REDMINE_VERSION=3.3.1
# Tue, 01 Nov 2016 21:25:30 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Tue, 01 Nov 2016 21:25:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:27:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:27:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:27:40 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:27:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:27:41 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:27:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019c6a320d37536fe7b1716b167ec1f69cbae860693f4de23e3d78fd7ce7ef8`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 2.4 MB (2372933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70f44b2fb288d9faa49095d259ae652cbbb6b63c6297885ca04eb5d2fcc6b3a`  
		Last Modified: Tue, 01 Nov 2016 21:28:10 GMT  
		Size: 75.5 MB (75520561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af3ad8c6f1e24ec33330340ee6f7f6e576af2851469d9e4fc23a2a534aba92`  
		Last Modified: Tue, 01 Nov 2016 21:27:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:607e85f386ba633f0af370b779aa5c5c4b350c104df2205fc363773f1a56058f
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246461402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfba59e097baac9d022ffcc1a8fee501af97bcb29907c674c92c8a1db1860a80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:25:29 GMT
ENV REDMINE_VERSION=3.3.1
# Tue, 01 Nov 2016 21:25:30 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Tue, 01 Nov 2016 21:25:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:27:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:27:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:27:40 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:27:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:27:41 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:27:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019c6a320d37536fe7b1716b167ec1f69cbae860693f4de23e3d78fd7ce7ef8`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 2.4 MB (2372933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70f44b2fb288d9faa49095d259ae652cbbb6b63c6297885ca04eb5d2fcc6b3a`  
		Last Modified: Tue, 01 Nov 2016 21:28:10 GMT  
		Size: 75.5 MB (75520561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af3ad8c6f1e24ec33330340ee6f7f6e576af2851469d9e4fc23a2a534aba92`  
		Last Modified: Tue, 01 Nov 2016 21:27:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:607e85f386ba633f0af370b779aa5c5c4b350c104df2205fc363773f1a56058f
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246461402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfba59e097baac9d022ffcc1a8fee501af97bcb29907c674c92c8a1db1860a80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:25:29 GMT
ENV REDMINE_VERSION=3.3.1
# Tue, 01 Nov 2016 21:25:30 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Tue, 01 Nov 2016 21:25:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:27:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:27:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:27:40 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:27:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:27:41 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:27:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019c6a320d37536fe7b1716b167ec1f69cbae860693f4de23e3d78fd7ce7ef8`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 2.4 MB (2372933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70f44b2fb288d9faa49095d259ae652cbbb6b63c6297885ca04eb5d2fcc6b3a`  
		Last Modified: Tue, 01 Nov 2016 21:28:10 GMT  
		Size: 75.5 MB (75520561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af3ad8c6f1e24ec33330340ee6f7f6e576af2851469d9e4fc23a2a534aba92`  
		Last Modified: Tue, 01 Nov 2016 21:27:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:607e85f386ba633f0af370b779aa5c5c4b350c104df2205fc363773f1a56058f
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.5 MB (246461402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfba59e097baac9d022ffcc1a8fee501af97bcb29907c674c92c8a1db1860a80`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:25:29 GMT
ENV REDMINE_VERSION=3.3.1
# Tue, 01 Nov 2016 21:25:30 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Tue, 01 Nov 2016 21:25:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:27:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:27:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:27:40 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:27:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:27:41 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:27:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019c6a320d37536fe7b1716b167ec1f69cbae860693f4de23e3d78fd7ce7ef8`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 2.4 MB (2372933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70f44b2fb288d9faa49095d259ae652cbbb6b63c6297885ca04eb5d2fcc6b3a`  
		Last Modified: Tue, 01 Nov 2016 21:28:10 GMT  
		Size: 75.5 MB (75520561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af3ad8c6f1e24ec33330340ee6f7f6e576af2851469d9e4fc23a2a534aba92`  
		Last Modified: Tue, 01 Nov 2016 21:27:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1-passenger`

```console
$ docker pull redmine@sha256:849500f6abd5a8261de9e5b5b91c94661471c6d8ff2d62c973c5d6dbcb03895d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1-passenger` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278589699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0559ff159fcffd41b41135ca4f28560b2e384b9b0d3a73e98eafced33096e2df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:25:29 GMT
ENV REDMINE_VERSION=3.3.1
# Tue, 01 Nov 2016 21:25:30 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Tue, 01 Nov 2016 21:25:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:27:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:27:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:27:40 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:27:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:27:41 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:27:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 01 Nov 2016 21:29:01 GMT
ENV PASSENGER_VERSION=5.0.30
# Tue, 01 Nov 2016 21:29:15 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:29:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 01 Nov 2016 21:29:18 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019c6a320d37536fe7b1716b167ec1f69cbae860693f4de23e3d78fd7ce7ef8`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 2.4 MB (2372933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70f44b2fb288d9faa49095d259ae652cbbb6b63c6297885ca04eb5d2fcc6b3a`  
		Last Modified: Tue, 01 Nov 2016 21:28:10 GMT  
		Size: 75.5 MB (75520561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af3ad8c6f1e24ec33330340ee6f7f6e576af2851469d9e4fc23a2a534aba92`  
		Last Modified: Tue, 01 Nov 2016 21:27:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402475f29463abc9e5ac37aa308bdedea5d9bede1fccbb0c0fd0fa25fc54240d`  
		Last Modified: Tue, 01 Nov 2016 21:29:33 GMT  
		Size: 21.7 MB (21709539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1924067edcc258020070c3f52e53ffc08b4acd84c9c0d837daacb2a8cc54959`  
		Last Modified: Tue, 01 Nov 2016 21:29:32 GMT  
		Size: 10.4 MB (10418758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:849500f6abd5a8261de9e5b5b91c94661471c6d8ff2d62c973c5d6dbcb03895d
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278589699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0559ff159fcffd41b41135ca4f28560b2e384b9b0d3a73e98eafced33096e2df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:25:29 GMT
ENV REDMINE_VERSION=3.3.1
# Tue, 01 Nov 2016 21:25:30 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Tue, 01 Nov 2016 21:25:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:27:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:27:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:27:40 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:27:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:27:41 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:27:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 01 Nov 2016 21:29:01 GMT
ENV PASSENGER_VERSION=5.0.30
# Tue, 01 Nov 2016 21:29:15 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:29:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 01 Nov 2016 21:29:18 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019c6a320d37536fe7b1716b167ec1f69cbae860693f4de23e3d78fd7ce7ef8`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 2.4 MB (2372933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70f44b2fb288d9faa49095d259ae652cbbb6b63c6297885ca04eb5d2fcc6b3a`  
		Last Modified: Tue, 01 Nov 2016 21:28:10 GMT  
		Size: 75.5 MB (75520561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af3ad8c6f1e24ec33330340ee6f7f6e576af2851469d9e4fc23a2a534aba92`  
		Last Modified: Tue, 01 Nov 2016 21:27:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402475f29463abc9e5ac37aa308bdedea5d9bede1fccbb0c0fd0fa25fc54240d`  
		Last Modified: Tue, 01 Nov 2016 21:29:33 GMT  
		Size: 21.7 MB (21709539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1924067edcc258020070c3f52e53ffc08b4acd84c9c0d837daacb2a8cc54959`  
		Last Modified: Tue, 01 Nov 2016 21:29:32 GMT  
		Size: 10.4 MB (10418758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:849500f6abd5a8261de9e5b5b91c94661471c6d8ff2d62c973c5d6dbcb03895d
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278589699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0559ff159fcffd41b41135ca4f28560b2e384b9b0d3a73e98eafced33096e2df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:25:29 GMT
ENV REDMINE_VERSION=3.3.1
# Tue, 01 Nov 2016 21:25:30 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Tue, 01 Nov 2016 21:25:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:27:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:27:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:27:40 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:27:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:27:41 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:27:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 01 Nov 2016 21:29:01 GMT
ENV PASSENGER_VERSION=5.0.30
# Tue, 01 Nov 2016 21:29:15 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:29:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 01 Nov 2016 21:29:18 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019c6a320d37536fe7b1716b167ec1f69cbae860693f4de23e3d78fd7ce7ef8`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 2.4 MB (2372933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70f44b2fb288d9faa49095d259ae652cbbb6b63c6297885ca04eb5d2fcc6b3a`  
		Last Modified: Tue, 01 Nov 2016 21:28:10 GMT  
		Size: 75.5 MB (75520561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af3ad8c6f1e24ec33330340ee6f7f6e576af2851469d9e4fc23a2a534aba92`  
		Last Modified: Tue, 01 Nov 2016 21:27:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402475f29463abc9e5ac37aa308bdedea5d9bede1fccbb0c0fd0fa25fc54240d`  
		Last Modified: Tue, 01 Nov 2016 21:29:33 GMT  
		Size: 21.7 MB (21709539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1924067edcc258020070c3f52e53ffc08b4acd84c9c0d837daacb2a8cc54959`  
		Last Modified: Tue, 01 Nov 2016 21:29:32 GMT  
		Size: 10.4 MB (10418758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:849500f6abd5a8261de9e5b5b91c94661471c6d8ff2d62c973c5d6dbcb03895d
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278589699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0559ff159fcffd41b41135ca4f28560b2e384b9b0d3a73e98eafced33096e2df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:22:05 GMT
ENV RUBY_MAJOR=2.2
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_VERSION=2.2.5
# Sat, 22 Oct 2016 01:22:06 GMT
ENV RUBY_DOWNLOAD_SHA256=30c4b31697a4ca4ea0c8db8ad30cf45e6690a0f09687e5d483c933c03ca335e3
# Tue, 01 Nov 2016 18:12:28 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Tue, 01 Nov 2016 18:14:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 18:14:58 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 18:14:59 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 18:14:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 18:15:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 18:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 18:15:01 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 21:24:48 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 01 Nov 2016 21:24:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:24:56 GMT
ENV GOSU_VERSION=1.7
# Tue, 01 Nov 2016 21:25:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 01 Nov 2016 21:25:02 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 21:25:05 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 01 Nov 2016 21:25:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 21:25:29 GMT
ENV RAILS_ENV=production
# Tue, 01 Nov 2016 21:25:29 GMT
WORKDIR /usr/src/redmine
# Tue, 01 Nov 2016 21:25:29 GMT
ENV REDMINE_VERSION=3.3.1
# Tue, 01 Nov 2016 21:25:30 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Tue, 01 Nov 2016 21:25:34 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 01 Nov 2016 21:27:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:27:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 01 Nov 2016 21:27:40 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Tue, 01 Nov 2016 21:27:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Nov 2016 21:27:41 GMT
EXPOSE 3000/tcp
# Tue, 01 Nov 2016 21:27:41 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 01 Nov 2016 21:29:01 GMT
ENV PASSENGER_VERSION=5.0.30
# Tue, 01 Nov 2016 21:29:15 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 01 Nov 2016 21:29:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Tue, 01 Nov 2016 21:29:18 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a87ecf9d6683a3aab1f7ab1d682d65a55275c0980beaf63f8f0d41b103d2df4`  
		Last Modified: Tue, 01 Nov 2016 18:29:17 GMT  
		Size: 33.7 MB (33740212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6bf31906f2792229d99699479f9ad3c53c9db42c5161e425320f07f221dc48`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 612.6 KB (612594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb458546923259fe02da1f22183208a77a275b166f97a994b74cad6618cf826c`  
		Last Modified: Tue, 01 Nov 2016 18:29:03 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fbbbcf7c91c1c884410a3a62c1681adfd82e7eda45248ffde7275742ef9cc7`  
		Last Modified: Tue, 01 Nov 2016 21:28:01 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dee5a73735c5cedc15431f445e6f456b493d24ebcc13dcd19d9d607670b828b`  
		Last Modified: Tue, 01 Nov 2016 21:28:03 GMT  
		Size: 13.9 MB (13862040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d6244f7da92db4b6ea24b7d6bac139b8c8be1baa4342743f3c56f87c964d9`  
		Last Modified: Tue, 01 Nov 2016 21:27:57 GMT  
		Size: 807.9 KB (807931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f145b0fc99baf8722de7a5df3c0cea205bd98d909fb21be697cdc5a82e78743a`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 7.1 KB (7122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3bd80605d41e919f1e44c19f2a2d7fa7e2c9617c2388a621e9978d21a4ef41`  
		Last Modified: Tue, 01 Nov 2016 21:28:14 GMT  
		Size: 58.2 MB (58200851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1c163807e0098a0ae89498a517106d62a86235ef92c244c48f1c90894d01c9`  
		Last Modified: Tue, 01 Nov 2016 21:27:54 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9019c6a320d37536fe7b1716b167ec1f69cbae860693f4de23e3d78fd7ce7ef8`  
		Last Modified: Tue, 01 Nov 2016 21:27:56 GMT  
		Size: 2.4 MB (2372933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a70f44b2fb288d9faa49095d259ae652cbbb6b63c6297885ca04eb5d2fcc6b3a`  
		Last Modified: Tue, 01 Nov 2016 21:28:10 GMT  
		Size: 75.5 MB (75520561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07af3ad8c6f1e24ec33330340ee6f7f6e576af2851469d9e4fc23a2a534aba92`  
		Last Modified: Tue, 01 Nov 2016 21:27:53 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402475f29463abc9e5ac37aa308bdedea5d9bede1fccbb0c0fd0fa25fc54240d`  
		Last Modified: Tue, 01 Nov 2016 21:29:33 GMT  
		Size: 21.7 MB (21709539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1924067edcc258020070c3f52e53ffc08b4acd84c9c0d837daacb2a8cc54959`  
		Last Modified: Tue, 01 Nov 2016 21:29:32 GMT  
		Size: 10.4 MB (10418758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
