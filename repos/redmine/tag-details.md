<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.1.6`](#redmine316)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.6-passenger`](#redmine316-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)
-	[`redmine:3.2.3`](#redmine323)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.3-passenger`](#redmine323-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3.0`](#redmine330)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.3.0-passenger`](#redmine330-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3.1.6`

```console
$ docker pull redmine@sha256:290a32e02e8efa3aeef7b2e803a3ff1438b541984cd860198e8d35f762092121
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226939908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9aa0caaa3c6e0ad587f234d6f4f064a5bde34d69bb0ff5f9af0013c9e70d6f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Sep 2016 23:25:40 GMT
ENV REDMINE_VERSION=3.1.6
# Wed, 14 Sep 2016 23:25:41 GMT
ENV REDMINE_DOWNLOAD_MD5=ce846787e490ec5121b1c4b960a2a32b
# Wed, 14 Sep 2016 23:25:45 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:29:25 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:29:25 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:29:25 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:29:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:29:26 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:29:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb8533f2216424d2566e9a685b147b120273c6e54db74b5af3a02f345c39c28`  
		Last Modified: Fri, 16 Sep 2016 00:29:33 GMT  
		Size: 2.3 MB (2273968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7adefa6a47c62fa2142710c9019bdd2d9c90e52c6d11cf9a218ac79f42d605`  
		Last Modified: Fri, 16 Sep 2016 00:29:49 GMT  
		Size: 67.8 MB (67806882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054ff80203c37a63f3cc319c749bd6e50c8eb17d981dd9c518de265e0b354fec`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:290a32e02e8efa3aeef7b2e803a3ff1438b541984cd860198e8d35f762092121
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.9 MB (226939908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c9aa0caaa3c6e0ad587f234d6f4f064a5bde34d69bb0ff5f9af0013c9e70d6f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Sep 2016 23:25:40 GMT
ENV REDMINE_VERSION=3.1.6
# Wed, 14 Sep 2016 23:25:41 GMT
ENV REDMINE_DOWNLOAD_MD5=ce846787e490ec5121b1c4b960a2a32b
# Wed, 14 Sep 2016 23:25:45 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:29:25 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:29:25 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:29:25 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:29:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:29:26 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:29:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb8533f2216424d2566e9a685b147b120273c6e54db74b5af3a02f345c39c28`  
		Last Modified: Fri, 16 Sep 2016 00:29:33 GMT  
		Size: 2.3 MB (2273968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7adefa6a47c62fa2142710c9019bdd2d9c90e52c6d11cf9a218ac79f42d605`  
		Last Modified: Fri, 16 Sep 2016 00:29:49 GMT  
		Size: 67.8 MB (67806882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054ff80203c37a63f3cc319c749bd6e50c8eb17d981dd9c518de265e0b354fec`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.6-passenger`

```console
$ docker pull redmine@sha256:f80aacd3366ed0fffa2fb5134543db1268293b6578080fee4a241ca7afeaf087
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.6-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259066260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d079debb7ae161a10edf4b6822a19bcc5a00a2ac0d6c56d0aaf757c8c008fc`
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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Sep 2016 23:25:40 GMT
ENV REDMINE_VERSION=3.1.6
# Wed, 14 Sep 2016 23:25:41 GMT
ENV REDMINE_DOWNLOAD_MD5=ce846787e490ec5121b1c4b960a2a32b
# Wed, 14 Sep 2016 23:25:45 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:29:25 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:29:25 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:29:25 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:29:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:29:26 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:29:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Sep 2016 00:37:30 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 16 Sep 2016 00:37:44 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:37:46 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 16 Sep 2016 00:37:46 GMT
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb8533f2216424d2566e9a685b147b120273c6e54db74b5af3a02f345c39c28`  
		Last Modified: Fri, 16 Sep 2016 00:29:33 GMT  
		Size: 2.3 MB (2273968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7adefa6a47c62fa2142710c9019bdd2d9c90e52c6d11cf9a218ac79f42d605`  
		Last Modified: Fri, 16 Sep 2016 00:29:49 GMT  
		Size: 67.8 MB (67806882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054ff80203c37a63f3cc319c749bd6e50c8eb17d981dd9c518de265e0b354fec`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfa3d1a1e7dc889f28075a63a927db8b80a0d1101a6907e59dcd45cb1ea79c0`  
		Last Modified: Fri, 16 Sep 2016 00:37:56 GMT  
		Size: 21.7 MB (21707599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a07027aad6115f5ba60cad872a53f1936afeb9ad3ac1af36cc8c6256219227`  
		Last Modified: Fri, 16 Sep 2016 00:37:56 GMT  
		Size: 10.4 MB (10418753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:f80aacd3366ed0fffa2fb5134543db1268293b6578080fee4a241ca7afeaf087
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259066260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d079debb7ae161a10edf4b6822a19bcc5a00a2ac0d6c56d0aaf757c8c008fc`
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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Wed, 14 Sep 2016 23:25:40 GMT
ENV REDMINE_VERSION=3.1.6
# Wed, 14 Sep 2016 23:25:41 GMT
ENV REDMINE_DOWNLOAD_MD5=ce846787e490ec5121b1c4b960a2a32b
# Wed, 14 Sep 2016 23:25:45 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:29:25 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:29:25 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:29:25 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:29:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:29:26 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:29:26 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Sep 2016 00:37:30 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 16 Sep 2016 00:37:44 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:37:46 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 16 Sep 2016 00:37:46 GMT
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb8533f2216424d2566e9a685b147b120273c6e54db74b5af3a02f345c39c28`  
		Last Modified: Fri, 16 Sep 2016 00:29:33 GMT  
		Size: 2.3 MB (2273968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7adefa6a47c62fa2142710c9019bdd2d9c90e52c6d11cf9a218ac79f42d605`  
		Last Modified: Fri, 16 Sep 2016 00:29:49 GMT  
		Size: 67.8 MB (67806882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054ff80203c37a63f3cc319c749bd6e50c8eb17d981dd9c518de265e0b354fec`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfa3d1a1e7dc889f28075a63a927db8b80a0d1101a6907e59dcd45cb1ea79c0`  
		Last Modified: Fri, 16 Sep 2016 00:37:56 GMT  
		Size: 21.7 MB (21707599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a07027aad6115f5ba60cad872a53f1936afeb9ad3ac1af36cc8c6256219227`  
		Last Modified: Fri, 16 Sep 2016 00:37:56 GMT  
		Size: 10.4 MB (10418753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.3`

```console
$ docker pull redmine@sha256:477ea393f89647a2ae806beae6463b67cf0569c1d706a46b9d57a3bf43ae6c53
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235444570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885dcc4616b48121f4296019678e6536cacdc604e77e62cd03b1426925527d7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 31 Aug 2016 14:12:33 GMT
ENV REDMINE_VERSION=3.2.3
# Wed, 31 Aug 2016 14:12:33 GMT
ENV REDMINE_DOWNLOAD_MD5=46178231093ed8a90e9d9b6c1e7d42b6
# Wed, 31 Aug 2016 18:04:52 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 31 Aug 2016 20:28:16 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 20:28:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 31 Aug 2016 20:28:17 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 31 Aug 2016 20:28:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:28:17 GMT
EXPOSE 3000/tcp
# Wed, 31 Aug 2016 20:28:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:12f89881ee051b2a267d1ae570c527701ce33188a8f8ade9d930ac2f4cd9c0d2`  
		Last Modified: Wed, 31 Aug 2016 20:34:22 GMT  
		Size: 2.3 MB (2330655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150b20e8b87bd43111c46e01b77318e192a0968af99773c1813bf5f18dddfc4`  
		Last Modified: Wed, 31 Aug 2016 20:34:35 GMT  
		Size: 76.3 MB (76305476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4924ff320636e7b91de5e4e82fa8aba18bec1be58f994f9215a76940ebb49684`  
		Last Modified: Wed, 31 Aug 2016 20:34:20 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:477ea393f89647a2ae806beae6463b67cf0569c1d706a46b9d57a3bf43ae6c53
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235444570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885dcc4616b48121f4296019678e6536cacdc604e77e62cd03b1426925527d7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 31 Aug 2016 14:12:33 GMT
ENV REDMINE_VERSION=3.2.3
# Wed, 31 Aug 2016 14:12:33 GMT
ENV REDMINE_DOWNLOAD_MD5=46178231093ed8a90e9d9b6c1e7d42b6
# Wed, 31 Aug 2016 18:04:52 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 31 Aug 2016 20:28:16 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 20:28:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 31 Aug 2016 20:28:17 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 31 Aug 2016 20:28:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:28:17 GMT
EXPOSE 3000/tcp
# Wed, 31 Aug 2016 20:28:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:12f89881ee051b2a267d1ae570c527701ce33188a8f8ade9d930ac2f4cd9c0d2`  
		Last Modified: Wed, 31 Aug 2016 20:34:22 GMT  
		Size: 2.3 MB (2330655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150b20e8b87bd43111c46e01b77318e192a0968af99773c1813bf5f18dddfc4`  
		Last Modified: Wed, 31 Aug 2016 20:34:35 GMT  
		Size: 76.3 MB (76305476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4924ff320636e7b91de5e4e82fa8aba18bec1be58f994f9215a76940ebb49684`  
		Last Modified: Wed, 31 Aug 2016 20:34:20 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.3-passenger`

```console
$ docker pull redmine@sha256:ae0793b74c5e15e93e06408b31dd301a2aff3f345c430f47d6ffc98e56f8e294
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.3-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267570839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33914efb9fe58e734248f9ee8cd18015db6bbe007e1d07bbf527ddd1d959686f`
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
# Wed, 31 Aug 2016 14:12:33 GMT
ENV REDMINE_VERSION=3.2.3
# Wed, 31 Aug 2016 14:12:33 GMT
ENV REDMINE_DOWNLOAD_MD5=46178231093ed8a90e9d9b6c1e7d42b6
# Wed, 31 Aug 2016 18:04:52 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 31 Aug 2016 20:28:16 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 20:28:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 31 Aug 2016 20:28:17 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 31 Aug 2016 20:28:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:28:17 GMT
EXPOSE 3000/tcp
# Wed, 31 Aug 2016 20:28:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 31 Aug 2016 20:28:18 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 31 Aug 2016 20:28:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 20:28:35 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 31 Aug 2016 20:28:35 GMT
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
	-	`sha256:12f89881ee051b2a267d1ae570c527701ce33188a8f8ade9d930ac2f4cd9c0d2`  
		Last Modified: Wed, 31 Aug 2016 20:34:22 GMT  
		Size: 2.3 MB (2330655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150b20e8b87bd43111c46e01b77318e192a0968af99773c1813bf5f18dddfc4`  
		Last Modified: Wed, 31 Aug 2016 20:34:35 GMT  
		Size: 76.3 MB (76305476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4924ff320636e7b91de5e4e82fa8aba18bec1be58f994f9215a76940ebb49684`  
		Last Modified: Wed, 31 Aug 2016 20:34:20 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387d4b126317695fd5d477c0a9d97986e389a88bee25dfcfd5fc9b673cf45359`  
		Last Modified: Wed, 31 Aug 2016 20:34:59 GMT  
		Size: 21.7 MB (21707519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d368d195b47d3c0bb6a7350d787035dcfcf543c0e54df89169a5cf2fa1fa2fb`  
		Last Modified: Wed, 31 Aug 2016 20:34:59 GMT  
		Size: 10.4 MB (10418750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:ae0793b74c5e15e93e06408b31dd301a2aff3f345c430f47d6ffc98e56f8e294
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.6 MB (267570839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33914efb9fe58e734248f9ee8cd18015db6bbe007e1d07bbf527ddd1d959686f`
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
# Wed, 31 Aug 2016 14:12:33 GMT
ENV REDMINE_VERSION=3.2.3
# Wed, 31 Aug 2016 14:12:33 GMT
ENV REDMINE_DOWNLOAD_MD5=46178231093ed8a90e9d9b6c1e7d42b6
# Wed, 31 Aug 2016 18:04:52 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 31 Aug 2016 20:28:16 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 20:28:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 31 Aug 2016 20:28:17 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 31 Aug 2016 20:28:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Aug 2016 20:28:17 GMT
EXPOSE 3000/tcp
# Wed, 31 Aug 2016 20:28:18 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 31 Aug 2016 20:28:18 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 31 Aug 2016 20:28:33 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 31 Aug 2016 20:28:35 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 31 Aug 2016 20:28:35 GMT
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
	-	`sha256:12f89881ee051b2a267d1ae570c527701ce33188a8f8ade9d930ac2f4cd9c0d2`  
		Last Modified: Wed, 31 Aug 2016 20:34:22 GMT  
		Size: 2.3 MB (2330655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b150b20e8b87bd43111c46e01b77318e192a0968af99773c1813bf5f18dddfc4`  
		Last Modified: Wed, 31 Aug 2016 20:34:35 GMT  
		Size: 76.3 MB (76305476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4924ff320636e7b91de5e4e82fa8aba18bec1be58f994f9215a76940ebb49684`  
		Last Modified: Wed, 31 Aug 2016 20:34:20 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387d4b126317695fd5d477c0a9d97986e389a88bee25dfcfd5fc9b673cf45359`  
		Last Modified: Wed, 31 Aug 2016 20:34:59 GMT  
		Size: 21.7 MB (21707519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d368d195b47d3c0bb6a7350d787035dcfcf543c0e54df89169a5cf2fa1fa2fb`  
		Last Modified: Wed, 31 Aug 2016 20:34:59 GMT  
		Size: 10.4 MB (10418750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.0`

```console
$ docker pull redmine@sha256:a92b3d193c0cbf48909ab96d5f92c1167caa417f3f06ac4b2fb8bceca37f31ea
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235642255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b22066a71b05ed141193b92f4ea6e15fddb1bd638f42daf7cab3c9a36979511`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 16 Sep 2016 00:30:13 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:35:28 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:35:29 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:35:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:35:30 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2885584bd2b86f96d60666cb69a30548dc98257ba347fdb04fd1c7a99cca2cfb`  
		Last Modified: Fri, 16 Sep 2016 00:35:37 GMT  
		Size: 2.4 MB (2370091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0097ddbf1c32c9aa86a8c6cdd297c302203efd8a379d64895bf11f8f6225946`  
		Last Modified: Fri, 16 Sep 2016 00:35:51 GMT  
		Size: 76.4 MB (76413103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df282780eef5076a1835efc24f4d47a3cfc3b5c2c36b598c7ea5fad5ded09de2`  
		Last Modified: Fri, 16 Sep 2016 00:35:36 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:a92b3d193c0cbf48909ab96d5f92c1167caa417f3f06ac4b2fb8bceca37f31ea
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235642255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b22066a71b05ed141193b92f4ea6e15fddb1bd638f42daf7cab3c9a36979511`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 16 Sep 2016 00:30:13 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:35:28 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:35:29 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:35:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:35:30 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2885584bd2b86f96d60666cb69a30548dc98257ba347fdb04fd1c7a99cca2cfb`  
		Last Modified: Fri, 16 Sep 2016 00:35:37 GMT  
		Size: 2.4 MB (2370091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0097ddbf1c32c9aa86a8c6cdd297c302203efd8a379d64895bf11f8f6225946`  
		Last Modified: Fri, 16 Sep 2016 00:35:51 GMT  
		Size: 76.4 MB (76413103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df282780eef5076a1835efc24f4d47a3cfc3b5c2c36b598c7ea5fad5ded09de2`  
		Last Modified: Fri, 16 Sep 2016 00:35:36 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:a92b3d193c0cbf48909ab96d5f92c1167caa417f3f06ac4b2fb8bceca37f31ea
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235642255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b22066a71b05ed141193b92f4ea6e15fddb1bd638f42daf7cab3c9a36979511`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 16 Sep 2016 00:30:13 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:35:28 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:35:29 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:35:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:35:30 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2885584bd2b86f96d60666cb69a30548dc98257ba347fdb04fd1c7a99cca2cfb`  
		Last Modified: Fri, 16 Sep 2016 00:35:37 GMT  
		Size: 2.4 MB (2370091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0097ddbf1c32c9aa86a8c6cdd297c302203efd8a379d64895bf11f8f6225946`  
		Last Modified: Fri, 16 Sep 2016 00:35:51 GMT  
		Size: 76.4 MB (76413103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df282780eef5076a1835efc24f4d47a3cfc3b5c2c36b598c7ea5fad5ded09de2`  
		Last Modified: Fri, 16 Sep 2016 00:35:36 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:a92b3d193c0cbf48909ab96d5f92c1167caa417f3f06ac4b2fb8bceca37f31ea
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235642255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b22066a71b05ed141193b92f4ea6e15fddb1bd638f42daf7cab3c9a36979511`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 16 Sep 2016 00:30:13 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:35:28 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:35:29 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:35:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:35:30 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2885584bd2b86f96d60666cb69a30548dc98257ba347fdb04fd1c7a99cca2cfb`  
		Last Modified: Fri, 16 Sep 2016 00:35:37 GMT  
		Size: 2.4 MB (2370091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0097ddbf1c32c9aa86a8c6cdd297c302203efd8a379d64895bf11f8f6225946`  
		Last Modified: Fri, 16 Sep 2016 00:35:51 GMT  
		Size: 76.4 MB (76413103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df282780eef5076a1835efc24f4d47a3cfc3b5c2c36b598c7ea5fad5ded09de2`  
		Last Modified: Fri, 16 Sep 2016 00:35:36 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.0-passenger`

```console
$ docker pull redmine@sha256:472c9c71567d503afb2508f400f06becebccfaea757e45e2d47790b92af877b3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.0-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267768632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849f5de3912b677e659e2b5e983e2b826ee44b1260eda29136b208d5e594485f`
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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 16 Sep 2016 00:30:13 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:35:28 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:35:29 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:35:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:35:30 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Sep 2016 00:36:32 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 16 Sep 2016 00:36:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:36:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 16 Sep 2016 00:36:48 GMT
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2885584bd2b86f96d60666cb69a30548dc98257ba347fdb04fd1c7a99cca2cfb`  
		Last Modified: Fri, 16 Sep 2016 00:35:37 GMT  
		Size: 2.4 MB (2370091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0097ddbf1c32c9aa86a8c6cdd297c302203efd8a379d64895bf11f8f6225946`  
		Last Modified: Fri, 16 Sep 2016 00:35:51 GMT  
		Size: 76.4 MB (76413103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df282780eef5076a1835efc24f4d47a3cfc3b5c2c36b598c7ea5fad5ded09de2`  
		Last Modified: Fri, 16 Sep 2016 00:35:36 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a7c118bebd054c295cc034bf299e836d0ba1320ba009b2e7b7d640add07319`  
		Last Modified: Fri, 16 Sep 2016 00:36:58 GMT  
		Size: 21.7 MB (21707643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77523e84625e016209e834f5581426b404d2c70eb0a039387f51188b2d4c78c4`  
		Last Modified: Fri, 16 Sep 2016 00:36:58 GMT  
		Size: 10.4 MB (10418734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:472c9c71567d503afb2508f400f06becebccfaea757e45e2d47790b92af877b3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267768632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849f5de3912b677e659e2b5e983e2b826ee44b1260eda29136b208d5e594485f`
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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 16 Sep 2016 00:30:13 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:35:28 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:35:29 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:35:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:35:30 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Sep 2016 00:36:32 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 16 Sep 2016 00:36:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:36:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 16 Sep 2016 00:36:48 GMT
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2885584bd2b86f96d60666cb69a30548dc98257ba347fdb04fd1c7a99cca2cfb`  
		Last Modified: Fri, 16 Sep 2016 00:35:37 GMT  
		Size: 2.4 MB (2370091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0097ddbf1c32c9aa86a8c6cdd297c302203efd8a379d64895bf11f8f6225946`  
		Last Modified: Fri, 16 Sep 2016 00:35:51 GMT  
		Size: 76.4 MB (76413103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df282780eef5076a1835efc24f4d47a3cfc3b5c2c36b598c7ea5fad5ded09de2`  
		Last Modified: Fri, 16 Sep 2016 00:35:36 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a7c118bebd054c295cc034bf299e836d0ba1320ba009b2e7b7d640add07319`  
		Last Modified: Fri, 16 Sep 2016 00:36:58 GMT  
		Size: 21.7 MB (21707643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77523e84625e016209e834f5581426b404d2c70eb0a039387f51188b2d4c78c4`  
		Last Modified: Fri, 16 Sep 2016 00:36:58 GMT  
		Size: 10.4 MB (10418734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:472c9c71567d503afb2508f400f06becebccfaea757e45e2d47790b92af877b3
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267768632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849f5de3912b677e659e2b5e983e2b826ee44b1260eda29136b208d5e594485f`
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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 16 Sep 2016 00:30:13 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:35:28 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:35:29 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:35:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:35:30 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Sep 2016 00:36:32 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 16 Sep 2016 00:36:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:36:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 16 Sep 2016 00:36:48 GMT
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2885584bd2b86f96d60666cb69a30548dc98257ba347fdb04fd1c7a99cca2cfb`  
		Last Modified: Fri, 16 Sep 2016 00:35:37 GMT  
		Size: 2.4 MB (2370091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0097ddbf1c32c9aa86a8c6cdd297c302203efd8a379d64895bf11f8f6225946`  
		Last Modified: Fri, 16 Sep 2016 00:35:51 GMT  
		Size: 76.4 MB (76413103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df282780eef5076a1835efc24f4d47a3cfc3b5c2c36b598c7ea5fad5ded09de2`  
		Last Modified: Fri, 16 Sep 2016 00:35:36 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a7c118bebd054c295cc034bf299e836d0ba1320ba009b2e7b7d640add07319`  
		Last Modified: Fri, 16 Sep 2016 00:36:58 GMT  
		Size: 21.7 MB (21707643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77523e84625e016209e834f5581426b404d2c70eb0a039387f51188b2d4c78c4`  
		Last Modified: Fri, 16 Sep 2016 00:36:58 GMT  
		Size: 10.4 MB (10418734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:472c9c71567d503afb2508f400f06becebccfaea757e45e2d47790b92af877b3
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267768632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:849f5de3912b677e659e2b5e983e2b826ee44b1260eda29136b208d5e594485f`
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
# Wed, 14 Sep 2016 18:00:13 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 14 Sep 2016 18:00:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 14 Sep 2016 18:00:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 14 Sep 2016 18:00:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Sep 2016 18:00:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 14 Sep 2016 18:00:17 GMT
CMD ["irb"]
# Wed, 14 Sep 2016 23:25:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 14 Sep 2016 23:25:05 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Sep 2016 23:25:11 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& curl -fSL -o /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 14 Sep 2016 23:25:11 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 14 Sep 2016 23:25:14 GMT
RUN set -x 	&& curl -fSL -o /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& curl -fSL -o /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 14 Sep 2016 23:25:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Sep 2016 23:25:40 GMT
ENV RAILS_ENV=production
# Wed, 14 Sep 2016 23:25:40 GMT
WORKDIR /usr/src/redmine
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_VERSION=3.3.0
# Fri, 16 Sep 2016 00:30:08 GMT
ENV REDMINE_DOWNLOAD_MD5=0c0abb2d4efde455c3505d8caf01cb2d
# Fri, 16 Sep 2016 00:30:13 GMT
RUN curl -fSL "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" -o redmine.tar.gz 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 16 Sep 2016 00:35:28 GMT
RUN buildDeps='		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:35:29 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 16 Sep 2016 00:35:29 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Fri, 16 Sep 2016 00:35:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 16 Sep 2016 00:35:30 GMT
EXPOSE 3000/tcp
# Fri, 16 Sep 2016 00:35:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 16 Sep 2016 00:36:32 GMT
ENV PASSENGER_VERSION=5.0.30
# Fri, 16 Sep 2016 00:36:46 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Sep 2016 00:36:47 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Fri, 16 Sep 2016 00:36:48 GMT
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
	-	`sha256:c050d1c54e8292a396e866874d11ff550d3b37c58e529dedeebd3feae77ce7aa`  
		Last Modified: Wed, 14 Sep 2016 18:03:40 GMT  
		Size: 609.9 KB (609943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d50d10ea976147bca607f024a71251a6af2ce0e0a57782e74d7eb0d543877d`  
		Last Modified: Wed, 14 Sep 2016 18:03:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f18e564abcc7ff6a9e79d0acf1eae57531d597f9c7af8b72eac49b4f74900da`  
		Last Modified: Fri, 16 Sep 2016 00:29:37 GMT  
		Size: 2.0 KB (2043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f56a25d08c119c6275193b27c6a87cb8e759374910880be9983be9d74aaf79`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 807.9 KB (807921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec8da0fc9d4ce70ed51fa0da0b08828f638603a0db03176ae187e433f0af910`  
		Last Modified: Fri, 16 Sep 2016 00:29:35 GMT  
		Size: 7.1 KB (7113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8c219d0fc8f83a599751c60602b9ac9ada6208bd7ac8aaf228780f215afcac`  
		Last Modified: Fri, 16 Sep 2016 00:29:51 GMT  
		Size: 56.8 MB (56774958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399bd5fc6c3370acfa0de2f0b1a96a5983dd996bd6795430e138a4b3730dba44`  
		Last Modified: Fri, 16 Sep 2016 00:29:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2885584bd2b86f96d60666cb69a30548dc98257ba347fdb04fd1c7a99cca2cfb`  
		Last Modified: Fri, 16 Sep 2016 00:35:37 GMT  
		Size: 2.4 MB (2370091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0097ddbf1c32c9aa86a8c6cdd297c302203efd8a379d64895bf11f8f6225946`  
		Last Modified: Fri, 16 Sep 2016 00:35:51 GMT  
		Size: 76.4 MB (76413103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df282780eef5076a1835efc24f4d47a3cfc3b5c2c36b598c7ea5fad5ded09de2`  
		Last Modified: Fri, 16 Sep 2016 00:35:36 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a7c118bebd054c295cc034bf299e836d0ba1320ba009b2e7b7d640add07319`  
		Last Modified: Fri, 16 Sep 2016 00:36:58 GMT  
		Size: 21.7 MB (21707643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77523e84625e016209e834f5581426b404d2c70eb0a039387f51188b2d4c78c4`  
		Last Modified: Fri, 16 Sep 2016 00:36:58 GMT  
		Size: 10.4 MB (10418734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
