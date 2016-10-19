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
$ docker pull redmine@sha256:b2aa6de93895a2def8e01cda4c3ef72bc8a7c417df51d19909f79bea10ef2990
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237553233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5001ff71466492c8411005da6126fd97687b49648db2bfe7404ca6b1994380b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 19:15:01 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 19 Oct 2016 19:15:01 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 19 Oct 2016 19:15:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 20:08:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:08:50 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 20:08:51 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 20:08:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 20:08:52 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 20:08:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4eff544255857fb192d1f31bcfe7be6987a50314219a4ac745c83030b54703`  
		Last Modified: Wed, 19 Oct 2016 20:09:02 GMT  
		Size: 2.3 MB (2272999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc88163f1594d187f817eed00244363067368d6c4ebdc8f7061ec493e3ef79a`  
		Last Modified: Wed, 19 Oct 2016 20:09:16 GMT  
		Size: 66.8 MB (66792497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5861cf3d5a2b95bcfebd89d1e737b474444ae93e17ed1d2ca07bb25b24524581`  
		Last Modified: Wed, 19 Oct 2016 20:09:01 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:b2aa6de93895a2def8e01cda4c3ef72bc8a7c417df51d19909f79bea10ef2990
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.6 MB (237553233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5001ff71466492c8411005da6126fd97687b49648db2bfe7404ca6b1994380b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 19:15:01 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 19 Oct 2016 19:15:01 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 19 Oct 2016 19:15:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 20:08:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:08:50 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 20:08:51 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 20:08:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 20:08:52 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 20:08:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4eff544255857fb192d1f31bcfe7be6987a50314219a4ac745c83030b54703`  
		Last Modified: Wed, 19 Oct 2016 20:09:02 GMT  
		Size: 2.3 MB (2272999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc88163f1594d187f817eed00244363067368d6c4ebdc8f7061ec493e3ef79a`  
		Last Modified: Wed, 19 Oct 2016 20:09:16 GMT  
		Size: 66.8 MB (66792497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5861cf3d5a2b95bcfebd89d1e737b474444ae93e17ed1d2ca07bb25b24524581`  
		Last Modified: Wed, 19 Oct 2016 20:09:01 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:24ca6e6240f5df8299469533ae5908fc1708d1e0e53ee171bc9ca5c474f7b3ad
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269681956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914c5e57ed7557794ef1f22d8045440bd43369947a31d8da907269790bcf8bd7`
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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 19:15:01 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 19 Oct 2016 19:15:01 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 19 Oct 2016 19:15:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 20:08:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:08:50 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 20:08:51 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 20:08:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 20:08:52 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 20:08:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 19 Oct 2016 20:09:35 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 19 Oct 2016 20:09:49 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:09:51 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 19 Oct 2016 20:09:51 GMT
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4eff544255857fb192d1f31bcfe7be6987a50314219a4ac745c83030b54703`  
		Last Modified: Wed, 19 Oct 2016 20:09:02 GMT  
		Size: 2.3 MB (2272999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc88163f1594d187f817eed00244363067368d6c4ebdc8f7061ec493e3ef79a`  
		Last Modified: Wed, 19 Oct 2016 20:09:16 GMT  
		Size: 66.8 MB (66792497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5861cf3d5a2b95bcfebd89d1e737b474444ae93e17ed1d2ca07bb25b24524581`  
		Last Modified: Wed, 19 Oct 2016 20:09:01 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16004dc550f9b675f51359cac45dd20b13ebb22f3ddd5afe24760b0fb17132`  
		Last Modified: Wed, 19 Oct 2016 20:10:04 GMT  
		Size: 21.7 MB (21709961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcf12319174c63c204c96d87769be5a79209f34c92a8d470c1f532772068a21`  
		Last Modified: Wed, 19 Oct 2016 20:10:04 GMT  
		Size: 10.4 MB (10418762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:24ca6e6240f5df8299469533ae5908fc1708d1e0e53ee171bc9ca5c474f7b3ad
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269681956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914c5e57ed7557794ef1f22d8045440bd43369947a31d8da907269790bcf8bd7`
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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 19:15:01 GMT
ENV REDMINE_VERSION=3.1.7
# Wed, 19 Oct 2016 19:15:01 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Wed, 19 Oct 2016 19:15:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 20:08:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:08:50 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 20:08:51 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 20:08:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 20:08:52 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 20:08:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 19 Oct 2016 20:09:35 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 19 Oct 2016 20:09:49 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:09:51 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 19 Oct 2016 20:09:51 GMT
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4eff544255857fb192d1f31bcfe7be6987a50314219a4ac745c83030b54703`  
		Last Modified: Wed, 19 Oct 2016 20:09:02 GMT  
		Size: 2.3 MB (2272999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc88163f1594d187f817eed00244363067368d6c4ebdc8f7061ec493e3ef79a`  
		Last Modified: Wed, 19 Oct 2016 20:09:16 GMT  
		Size: 66.8 MB (66792497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5861cf3d5a2b95bcfebd89d1e737b474444ae93e17ed1d2ca07bb25b24524581`  
		Last Modified: Wed, 19 Oct 2016 20:09:01 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b16004dc550f9b675f51359cac45dd20b13ebb22f3ddd5afe24760b0fb17132`  
		Last Modified: Wed, 19 Oct 2016 20:10:04 GMT  
		Size: 21.7 MB (21709961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcf12319174c63c204c96d87769be5a79209f34c92a8d470c1f532772068a21`  
		Last Modified: Wed, 19 Oct 2016 20:10:04 GMT  
		Size: 10.4 MB (10418762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4`

```console
$ docker pull redmine@sha256:5c4e5eb7f9faaff5e7819f736c21732108d6d334166b6995298f1224f0d0cea5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246221947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6898c6fdaf72106f9aee465d4263b0feedefde09119a5551c7fd77862f0ac9a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 20:10:24 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 19 Oct 2016 20:10:24 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 19 Oct 2016 20:10:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 20:26:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:26:04 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 20:26:05 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 20:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 20:26:06 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 20:26:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dec4ac4b8a6df3f5491de1840948eb80e58bef4ebe407c18eb29d45d8e30a7b`  
		Last Modified: Wed, 19 Oct 2016 20:26:17 GMT  
		Size: 2.3 MB (2330253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fbf9082eaa17a5967af8f5826109489de8465929be547f2afb343671eacbe3`  
		Last Modified: Wed, 19 Oct 2016 20:26:32 GMT  
		Size: 75.4 MB (75403956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84375d32b2bc11b599443a582d6381d50799f4cf20d8cff7de45798c0b91a739`  
		Last Modified: Wed, 19 Oct 2016 20:26:16 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:5c4e5eb7f9faaff5e7819f736c21732108d6d334166b6995298f1224f0d0cea5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.2 MB (246221947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6898c6fdaf72106f9aee465d4263b0feedefde09119a5551c7fd77862f0ac9a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 20:10:24 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 19 Oct 2016 20:10:24 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 19 Oct 2016 20:10:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 20:26:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:26:04 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 20:26:05 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 20:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 20:26:06 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 20:26:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dec4ac4b8a6df3f5491de1840948eb80e58bef4ebe407c18eb29d45d8e30a7b`  
		Last Modified: Wed, 19 Oct 2016 20:26:17 GMT  
		Size: 2.3 MB (2330253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fbf9082eaa17a5967af8f5826109489de8465929be547f2afb343671eacbe3`  
		Last Modified: Wed, 19 Oct 2016 20:26:32 GMT  
		Size: 75.4 MB (75403956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84375d32b2bc11b599443a582d6381d50799f4cf20d8cff7de45798c0b91a739`  
		Last Modified: Wed, 19 Oct 2016 20:26:16 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.4-passenger`

```console
$ docker pull redmine@sha256:7c73381edd44a026964792454c0c088010578402b06f2f4ce022c2d322935c93
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.4-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278350784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2eba5964078ecf60b1cda200ea648b39a1dd386329fdeefa774f729d858797`
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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 20:10:24 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 19 Oct 2016 20:10:24 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 19 Oct 2016 20:10:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 20:26:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:26:04 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 20:26:05 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 20:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 20:26:06 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 20:26:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 19 Oct 2016 20:26:53 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 19 Oct 2016 20:27:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:27:10 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 19 Oct 2016 20:27:11 GMT
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dec4ac4b8a6df3f5491de1840948eb80e58bef4ebe407c18eb29d45d8e30a7b`  
		Last Modified: Wed, 19 Oct 2016 20:26:17 GMT  
		Size: 2.3 MB (2330253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fbf9082eaa17a5967af8f5826109489de8465929be547f2afb343671eacbe3`  
		Last Modified: Wed, 19 Oct 2016 20:26:32 GMT  
		Size: 75.4 MB (75403956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84375d32b2bc11b599443a582d6381d50799f4cf20d8cff7de45798c0b91a739`  
		Last Modified: Wed, 19 Oct 2016 20:26:16 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883a1010c1421f6415d8f50a8c7c3918817b9bc0c0f739e6136a73c45cbb17cb`  
		Last Modified: Wed, 19 Oct 2016 20:27:24 GMT  
		Size: 21.7 MB (21710081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed89f4660713c5e88dabefb3e49d99d38b87159b0a069c6798a30076310d1c9c`  
		Last Modified: Wed, 19 Oct 2016 20:27:23 GMT  
		Size: 10.4 MB (10418756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:7c73381edd44a026964792454c0c088010578402b06f2f4ce022c2d322935c93
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278350784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a2eba5964078ecf60b1cda200ea648b39a1dd386329fdeefa774f729d858797`
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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 20:10:24 GMT
ENV REDMINE_VERSION=3.2.4
# Wed, 19 Oct 2016 20:10:24 GMT
ENV REDMINE_DOWNLOAD_MD5=fe9c81d9abdf21ddafd03f5d1c1f8a58
# Wed, 19 Oct 2016 20:10:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 20:26:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:26:04 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 20:26:05 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 20:26:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 20:26:06 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 20:26:06 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 19 Oct 2016 20:26:53 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 19 Oct 2016 20:27:08 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 20:27:10 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 19 Oct 2016 20:27:11 GMT
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dec4ac4b8a6df3f5491de1840948eb80e58bef4ebe407c18eb29d45d8e30a7b`  
		Last Modified: Wed, 19 Oct 2016 20:26:17 GMT  
		Size: 2.3 MB (2330253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fbf9082eaa17a5967af8f5826109489de8465929be547f2afb343671eacbe3`  
		Last Modified: Wed, 19 Oct 2016 20:26:32 GMT  
		Size: 75.4 MB (75403956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84375d32b2bc11b599443a582d6381d50799f4cf20d8cff7de45798c0b91a739`  
		Last Modified: Wed, 19 Oct 2016 20:26:16 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883a1010c1421f6415d8f50a8c7c3918817b9bc0c0f739e6136a73c45cbb17cb`  
		Last Modified: Wed, 19 Oct 2016 20:27:24 GMT  
		Size: 21.7 MB (21710081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed89f4660713c5e88dabefb3e49d99d38b87159b0a069c6798a30076310d1c9c`  
		Last Modified: Wed, 19 Oct 2016 20:27:23 GMT  
		Size: 10.4 MB (10418756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1`

```console
$ docker pull redmine@sha256:d117f0049b6dcc825a9e5822921afbe069c5ae81718f523b4434c4a9aa220671
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246264169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae726973e79944cbf4be483a3533a1fc4c2648afb241c9788bf06ad51c28d4b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 19 Oct 2016 18:12:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 19:12:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:12:32 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 19:12:33 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 19:12:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 19:12:33 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 19:12:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc266b7605641072803ebb08d663b6752c20bb65b0bce122baf157beaf07ef21`  
		Last Modified: Wed, 19 Oct 2016 19:12:44 GMT  
		Size: 2.4 MB (2372941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900ac3c83a0b0c911f7b09802b5c8aa10cc95eb42a6cbce6534ef6b2e27b165`  
		Last Modified: Wed, 19 Oct 2016 19:13:00 GMT  
		Size: 75.4 MB (75403490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b9ea1bab347b03d4cf34429040c99400563110943b84f44bb21d1ab601785`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:d117f0049b6dcc825a9e5822921afbe069c5ae81718f523b4434c4a9aa220671
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246264169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae726973e79944cbf4be483a3533a1fc4c2648afb241c9788bf06ad51c28d4b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 19 Oct 2016 18:12:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 19:12:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:12:32 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 19:12:33 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 19:12:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 19:12:33 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 19:12:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc266b7605641072803ebb08d663b6752c20bb65b0bce122baf157beaf07ef21`  
		Last Modified: Wed, 19 Oct 2016 19:12:44 GMT  
		Size: 2.4 MB (2372941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900ac3c83a0b0c911f7b09802b5c8aa10cc95eb42a6cbce6534ef6b2e27b165`  
		Last Modified: Wed, 19 Oct 2016 19:13:00 GMT  
		Size: 75.4 MB (75403490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b9ea1bab347b03d4cf34429040c99400563110943b84f44bb21d1ab601785`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:d117f0049b6dcc825a9e5822921afbe069c5ae81718f523b4434c4a9aa220671
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246264169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae726973e79944cbf4be483a3533a1fc4c2648afb241c9788bf06ad51c28d4b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 19 Oct 2016 18:12:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 19:12:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:12:32 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 19:12:33 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 19:12:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 19:12:33 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 19:12:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc266b7605641072803ebb08d663b6752c20bb65b0bce122baf157beaf07ef21`  
		Last Modified: Wed, 19 Oct 2016 19:12:44 GMT  
		Size: 2.4 MB (2372941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900ac3c83a0b0c911f7b09802b5c8aa10cc95eb42a6cbce6534ef6b2e27b165`  
		Last Modified: Wed, 19 Oct 2016 19:13:00 GMT  
		Size: 75.4 MB (75403490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b9ea1bab347b03d4cf34429040c99400563110943b84f44bb21d1ab601785`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:d117f0049b6dcc825a9e5822921afbe069c5ae81718f523b4434c4a9aa220671
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.3 MB (246264169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae726973e79944cbf4be483a3533a1fc4c2648afb241c9788bf06ad51c28d4b6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 19 Oct 2016 18:12:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 19:12:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:12:32 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 19:12:33 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 19:12:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 19:12:33 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 19:12:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc266b7605641072803ebb08d663b6752c20bb65b0bce122baf157beaf07ef21`  
		Last Modified: Wed, 19 Oct 2016 19:12:44 GMT  
		Size: 2.4 MB (2372941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900ac3c83a0b0c911f7b09802b5c8aa10cc95eb42a6cbce6534ef6b2e27b165`  
		Last Modified: Wed, 19 Oct 2016 19:13:00 GMT  
		Size: 75.4 MB (75403490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b9ea1bab347b03d4cf34429040c99400563110943b84f44bb21d1ab601785`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.1-passenger`

```console
$ docker pull redmine@sha256:4a801a8e14fa8552bdead1a104957de24f307ff3b6543b42fbebf323630f17f9
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.1-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278392831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e84b3d59db611a73e495eb05fc2b0c1287e242765ae2a0da253a41b109acf2a`
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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 19 Oct 2016 18:12:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 19:12:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:12:32 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 19:12:33 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 19:12:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 19:12:33 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 19:12:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 19 Oct 2016 19:13:44 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 19 Oct 2016 19:13:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:14:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 19 Oct 2016 19:14:01 GMT
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc266b7605641072803ebb08d663b6752c20bb65b0bce122baf157beaf07ef21`  
		Last Modified: Wed, 19 Oct 2016 19:12:44 GMT  
		Size: 2.4 MB (2372941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900ac3c83a0b0c911f7b09802b5c8aa10cc95eb42a6cbce6534ef6b2e27b165`  
		Last Modified: Wed, 19 Oct 2016 19:13:00 GMT  
		Size: 75.4 MB (75403490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b9ea1bab347b03d4cf34429040c99400563110943b84f44bb21d1ab601785`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c963b0fdbaad7c0905dd099cb85ddffd6ed98fdec3de397614b48bfb31ee037d`  
		Last Modified: Wed, 19 Oct 2016 19:14:15 GMT  
		Size: 21.7 MB (21709903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c959aa3dc86731d9677fd389fe500063980ff02d623f1f80fb3713757af3587`  
		Last Modified: Wed, 19 Oct 2016 19:14:14 GMT  
		Size: 10.4 MB (10418759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:4a801a8e14fa8552bdead1a104957de24f307ff3b6543b42fbebf323630f17f9
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278392831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e84b3d59db611a73e495eb05fc2b0c1287e242765ae2a0da253a41b109acf2a`
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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 19 Oct 2016 18:12:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 19:12:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:12:32 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 19:12:33 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 19:12:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 19:12:33 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 19:12:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 19 Oct 2016 19:13:44 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 19 Oct 2016 19:13:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:14:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 19 Oct 2016 19:14:01 GMT
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc266b7605641072803ebb08d663b6752c20bb65b0bce122baf157beaf07ef21`  
		Last Modified: Wed, 19 Oct 2016 19:12:44 GMT  
		Size: 2.4 MB (2372941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900ac3c83a0b0c911f7b09802b5c8aa10cc95eb42a6cbce6534ef6b2e27b165`  
		Last Modified: Wed, 19 Oct 2016 19:13:00 GMT  
		Size: 75.4 MB (75403490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b9ea1bab347b03d4cf34429040c99400563110943b84f44bb21d1ab601785`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c963b0fdbaad7c0905dd099cb85ddffd6ed98fdec3de397614b48bfb31ee037d`  
		Last Modified: Wed, 19 Oct 2016 19:14:15 GMT  
		Size: 21.7 MB (21709903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c959aa3dc86731d9677fd389fe500063980ff02d623f1f80fb3713757af3587`  
		Last Modified: Wed, 19 Oct 2016 19:14:14 GMT  
		Size: 10.4 MB (10418759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:4a801a8e14fa8552bdead1a104957de24f307ff3b6543b42fbebf323630f17f9
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278392831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e84b3d59db611a73e495eb05fc2b0c1287e242765ae2a0da253a41b109acf2a`
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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 19 Oct 2016 18:12:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 19:12:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:12:32 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 19:12:33 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 19:12:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 19:12:33 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 19:12:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 19 Oct 2016 19:13:44 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 19 Oct 2016 19:13:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:14:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 19 Oct 2016 19:14:01 GMT
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc266b7605641072803ebb08d663b6752c20bb65b0bce122baf157beaf07ef21`  
		Last Modified: Wed, 19 Oct 2016 19:12:44 GMT  
		Size: 2.4 MB (2372941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900ac3c83a0b0c911f7b09802b5c8aa10cc95eb42a6cbce6534ef6b2e27b165`  
		Last Modified: Wed, 19 Oct 2016 19:13:00 GMT  
		Size: 75.4 MB (75403490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b9ea1bab347b03d4cf34429040c99400563110943b84f44bb21d1ab601785`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c963b0fdbaad7c0905dd099cb85ddffd6ed98fdec3de397614b48bfb31ee037d`  
		Last Modified: Wed, 19 Oct 2016 19:14:15 GMT  
		Size: 21.7 MB (21709903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c959aa3dc86731d9677fd389fe500063980ff02d623f1f80fb3713757af3587`  
		Last Modified: Wed, 19 Oct 2016 19:14:14 GMT  
		Size: 10.4 MB (10418759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:4a801a8e14fa8552bdead1a104957de24f307ff3b6543b42fbebf323630f17f9
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278392831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e84b3d59db611a73e495eb05fc2b0c1287e242765ae2a0da253a41b109acf2a`
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
# Tue, 18 Oct 2016 22:56:16 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:56:18 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:56:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:56:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:56:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:56:21 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:12:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 19 Oct 2016 18:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:15 GMT
ENV GOSU_VERSION=1.7
# Wed, 19 Oct 2016 18:12:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 19 Oct 2016 18:12:22 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 19 Oct 2016 18:12:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 19 Oct 2016 18:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:12:52 GMT
ENV RAILS_ENV=production
# Wed, 19 Oct 2016 18:12:52 GMT
WORKDIR /usr/src/redmine
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_VERSION=3.3.1
# Wed, 19 Oct 2016 18:12:53 GMT
ENV REDMINE_DOWNLOAD_MD5=cb8aab3e03cae7d21d003a307e51c176
# Wed, 19 Oct 2016 18:12:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 19 Oct 2016 19:12:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:12:32 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 19 Oct 2016 19:12:33 GMT
COPY file:58d2440ac347219d708111ff008abc0f4ff8cb9201b7893105b66b0ccf0a2521 in / 
# Wed, 19 Oct 2016 19:12:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 19 Oct 2016 19:12:33 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 19:12:34 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 19 Oct 2016 19:13:44 GMT
ENV PASSENGER_VERSION=5.0.30
# Wed, 19 Oct 2016 19:13:59 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 19 Oct 2016 19:14:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config install-standalone-runtime
# Wed, 19 Oct 2016 19:14:01 GMT
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
	-	`sha256:6beada8d0056f1d93374949baf13f57fe2a36cb3409bc6543f576ac88c91fbd7`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 612.3 KB (612335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bbfedf6ed71925fbd42de934cc4131a5ad1f27cf3621fa3ee701824104ca98`  
		Last Modified: Tue, 18 Oct 2016 23:03:52 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07d7b95100236f9999ad60313e3b5db455b500d017f32801d3ac96f10a98ca`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 2.0 KB (2048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3990b4137471d84c7629bff68c9c2c477bd4078ba4ff832f24c5d34c17596dbd`  
		Last Modified: Wed, 19 Oct 2016 19:12:53 GMT  
		Size: 13.9 MB (13862113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebc16d717669f69ad52395e459c749dd6fcd8b0d97e614866c67ba2d3e7f9da4`  
		Last Modified: Wed, 19 Oct 2016 19:12:49 GMT  
		Size: 807.9 KB (807932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6d43dc6565f5e486a5b251f37cbfd999e7adad7891214c30642d7e01a2e037`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 7.1 KB (7120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4998c3e9a3762c338ee411a8709c982e91da260b55616fcf736efa82542cf1`  
		Last Modified: Wed, 19 Oct 2016 19:13:02 GMT  
		Size: 58.2 MB (58201797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d300167c0e0d52bef986b28cb809eb96a1f812de27412a94151385080c31a7`  
		Last Modified: Wed, 19 Oct 2016 19:12:43 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc266b7605641072803ebb08d663b6752c20bb65b0bce122baf157beaf07ef21`  
		Last Modified: Wed, 19 Oct 2016 19:12:44 GMT  
		Size: 2.4 MB (2372941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6900ac3c83a0b0c911f7b09802b5c8aa10cc95eb42a6cbce6534ef6b2e27b165`  
		Last Modified: Wed, 19 Oct 2016 19:13:00 GMT  
		Size: 75.4 MB (75403490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3b9ea1bab347b03d4cf34429040c99400563110943b84f44bb21d1ab601785`  
		Last Modified: Wed, 19 Oct 2016 19:12:46 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c963b0fdbaad7c0905dd099cb85ddffd6ed98fdec3de397614b48bfb31ee037d`  
		Last Modified: Wed, 19 Oct 2016 19:14:15 GMT  
		Size: 21.7 MB (21709903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c959aa3dc86731d9677fd389fe500063980ff02d623f1f80fb3713757af3587`  
		Last Modified: Wed, 19 Oct 2016 19:14:14 GMT  
		Size: 10.4 MB (10418759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
