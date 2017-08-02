<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.4.2`](#redmine342)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.4.2-passenger`](#redmine342-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)
-	[`redmine:3.3.4`](#redmine334)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.4-passenger`](#redmine334-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.2.7`](#redmine327)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.7-passenger`](#redmine327-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.1.7`](#redmine317)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.7-passenger`](#redmine317-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)

## `redmine:3.4.2`

```console
$ docker pull redmine@sha256:8b9956db0450bda7db215ffd3a1f39cb9669f04b8421781e28d71574893294ef
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240384419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483320e0078455f6a43db72d76e3a2e233a92d265f193fe8ad3e9065a2fb9b49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:37:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:37:51 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:37:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:37:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:38:33 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:38:33 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 24 Jul 2017 22:38:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:41:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:41:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:41:12 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:41:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:41:12 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:41:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523bd4c61610db59a875a15ec37f6a96bc264aea7019f595088b95b221d2cd46`  
		Last Modified: Mon, 24 Jul 2017 22:52:06 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64466a0b3abafbcf292c0132a552bfe1dcbcbde7d2e1cd367ab0b2a5b05987e2`  
		Last Modified: Mon, 24 Jul 2017 22:52:08 GMT  
		Size: 14.4 MB (14422163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ca64f27a1bb91a847ef1f5cd1fd684b3b75d6143ca869dfd5e918277b65794`  
		Last Modified: Mon, 24 Jul 2017 22:52:05 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f21ddd386d51a7b0dac8052957bfc36ed431810b104970b990ccc69ce85d5`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320acd3fe61117a7da02d4327f2a9c74bfd4592d246fc321f034ce4bd62c60f6`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 59.2 MB (59239613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28708776b7e8b66bd8b345fc460372b7b8bd6594795a509856907bf8549c7d4`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8654abe9915eae5da2e0a70c41258e1f108d76dbc5e1345018bca79ec12806`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 2.4 MB (2447787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9dd10783cb0274a9d8f810a227fd66a8432c2e1c449245dfa7b2a5620d2b3`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 76.8 MB (76751672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db4768992cc55d3cd5192feb1c9503a57c0594b2f489ce974d9f222ed51531c`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:8b9956db0450bda7db215ffd3a1f39cb9669f04b8421781e28d71574893294ef
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240384419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483320e0078455f6a43db72d76e3a2e233a92d265f193fe8ad3e9065a2fb9b49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:37:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:37:51 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:37:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:37:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:38:33 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:38:33 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 24 Jul 2017 22:38:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:41:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:41:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:41:12 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:41:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:41:12 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:41:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523bd4c61610db59a875a15ec37f6a96bc264aea7019f595088b95b221d2cd46`  
		Last Modified: Mon, 24 Jul 2017 22:52:06 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64466a0b3abafbcf292c0132a552bfe1dcbcbde7d2e1cd367ab0b2a5b05987e2`  
		Last Modified: Mon, 24 Jul 2017 22:52:08 GMT  
		Size: 14.4 MB (14422163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ca64f27a1bb91a847ef1f5cd1fd684b3b75d6143ca869dfd5e918277b65794`  
		Last Modified: Mon, 24 Jul 2017 22:52:05 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f21ddd386d51a7b0dac8052957bfc36ed431810b104970b990ccc69ce85d5`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320acd3fe61117a7da02d4327f2a9c74bfd4592d246fc321f034ce4bd62c60f6`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 59.2 MB (59239613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28708776b7e8b66bd8b345fc460372b7b8bd6594795a509856907bf8549c7d4`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8654abe9915eae5da2e0a70c41258e1f108d76dbc5e1345018bca79ec12806`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 2.4 MB (2447787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9dd10783cb0274a9d8f810a227fd66a8432c2e1c449245dfa7b2a5620d2b3`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 76.8 MB (76751672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db4768992cc55d3cd5192feb1c9503a57c0594b2f489ce974d9f222ed51531c`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:8b9956db0450bda7db215ffd3a1f39cb9669f04b8421781e28d71574893294ef
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240384419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483320e0078455f6a43db72d76e3a2e233a92d265f193fe8ad3e9065a2fb9b49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:37:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:37:51 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:37:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:37:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:38:33 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:38:33 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 24 Jul 2017 22:38:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:41:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:41:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:41:12 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:41:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:41:12 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:41:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523bd4c61610db59a875a15ec37f6a96bc264aea7019f595088b95b221d2cd46`  
		Last Modified: Mon, 24 Jul 2017 22:52:06 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64466a0b3abafbcf292c0132a552bfe1dcbcbde7d2e1cd367ab0b2a5b05987e2`  
		Last Modified: Mon, 24 Jul 2017 22:52:08 GMT  
		Size: 14.4 MB (14422163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ca64f27a1bb91a847ef1f5cd1fd684b3b75d6143ca869dfd5e918277b65794`  
		Last Modified: Mon, 24 Jul 2017 22:52:05 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f21ddd386d51a7b0dac8052957bfc36ed431810b104970b990ccc69ce85d5`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320acd3fe61117a7da02d4327f2a9c74bfd4592d246fc321f034ce4bd62c60f6`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 59.2 MB (59239613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28708776b7e8b66bd8b345fc460372b7b8bd6594795a509856907bf8549c7d4`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8654abe9915eae5da2e0a70c41258e1f108d76dbc5e1345018bca79ec12806`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 2.4 MB (2447787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9dd10783cb0274a9d8f810a227fd66a8432c2e1c449245dfa7b2a5620d2b3`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 76.8 MB (76751672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db4768992cc55d3cd5192feb1c9503a57c0594b2f489ce974d9f222ed51531c`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:8b9956db0450bda7db215ffd3a1f39cb9669f04b8421781e28d71574893294ef
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240384419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:483320e0078455f6a43db72d76e3a2e233a92d265f193fe8ad3e9065a2fb9b49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:37:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:37:51 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:37:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:37:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:38:33 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:38:33 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 24 Jul 2017 22:38:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:41:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:41:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:41:12 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:41:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:41:12 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:41:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523bd4c61610db59a875a15ec37f6a96bc264aea7019f595088b95b221d2cd46`  
		Last Modified: Mon, 24 Jul 2017 22:52:06 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64466a0b3abafbcf292c0132a552bfe1dcbcbde7d2e1cd367ab0b2a5b05987e2`  
		Last Modified: Mon, 24 Jul 2017 22:52:08 GMT  
		Size: 14.4 MB (14422163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ca64f27a1bb91a847ef1f5cd1fd684b3b75d6143ca869dfd5e918277b65794`  
		Last Modified: Mon, 24 Jul 2017 22:52:05 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f21ddd386d51a7b0dac8052957bfc36ed431810b104970b990ccc69ce85d5`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320acd3fe61117a7da02d4327f2a9c74bfd4592d246fc321f034ce4bd62c60f6`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 59.2 MB (59239613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28708776b7e8b66bd8b345fc460372b7b8bd6594795a509856907bf8549c7d4`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8654abe9915eae5da2e0a70c41258e1f108d76dbc5e1345018bca79ec12806`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 2.4 MB (2447787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9dd10783cb0274a9d8f810a227fd66a8432c2e1c449245dfa7b2a5620d2b3`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 76.8 MB (76751672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db4768992cc55d3cd5192feb1c9503a57c0594b2f489ce974d9f222ed51531c`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.2-passenger`

```console
$ docker pull redmine@sha256:f4feb7fbb66e95f38b91aa3ffc8ffc58ac9f49d9e411c679a90082dadbb24e50
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259168131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d41d6538c22f58a2230fe673c42a2001b936bbb761496f97a8804c738afa0f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:37:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:37:51 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:37:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:37:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:38:33 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:38:33 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 24 Jul 2017 22:38:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:41:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:41:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:41:12 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:41:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:41:12 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:41:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:05:43 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:06:18 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:06:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:06:22 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523bd4c61610db59a875a15ec37f6a96bc264aea7019f595088b95b221d2cd46`  
		Last Modified: Mon, 24 Jul 2017 22:52:06 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64466a0b3abafbcf292c0132a552bfe1dcbcbde7d2e1cd367ab0b2a5b05987e2`  
		Last Modified: Mon, 24 Jul 2017 22:52:08 GMT  
		Size: 14.4 MB (14422163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ca64f27a1bb91a847ef1f5cd1fd684b3b75d6143ca869dfd5e918277b65794`  
		Last Modified: Mon, 24 Jul 2017 22:52:05 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f21ddd386d51a7b0dac8052957bfc36ed431810b104970b990ccc69ce85d5`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320acd3fe61117a7da02d4327f2a9c74bfd4592d246fc321f034ce4bd62c60f6`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 59.2 MB (59239613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28708776b7e8b66bd8b345fc460372b7b8bd6594795a509856907bf8549c7d4`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8654abe9915eae5da2e0a70c41258e1f108d76dbc5e1345018bca79ec12806`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 2.4 MB (2447787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9dd10783cb0274a9d8f810a227fd66a8432c2e1c449245dfa7b2a5620d2b3`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 76.8 MB (76751672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db4768992cc55d3cd5192feb1c9503a57c0594b2f489ce974d9f222ed51531c`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c2546ddb16077dcdd23c36001a79e0a819b426910fc66e19cbc78c8096f034`  
		Last Modified: Wed, 02 Aug 2017 00:08:49 GMT  
		Size: 14.5 MB (14540247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c348663a248dd19439b82cf53e4a6394e3ffe647ea91ff92138a5d056700a070`  
		Last Modified: Wed, 02 Aug 2017 00:08:48 GMT  
		Size: 4.2 MB (4243465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:f4feb7fbb66e95f38b91aa3ffc8ffc58ac9f49d9e411c679a90082dadbb24e50
```

-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259168131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d41d6538c22f58a2230fe673c42a2001b936bbb761496f97a8804c738afa0f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:37:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:37:51 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:37:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:37:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:38:33 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:38:33 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 24 Jul 2017 22:38:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:41:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:41:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:41:12 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:41:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:41:12 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:41:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:05:43 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:06:18 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:06:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:06:22 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523bd4c61610db59a875a15ec37f6a96bc264aea7019f595088b95b221d2cd46`  
		Last Modified: Mon, 24 Jul 2017 22:52:06 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64466a0b3abafbcf292c0132a552bfe1dcbcbde7d2e1cd367ab0b2a5b05987e2`  
		Last Modified: Mon, 24 Jul 2017 22:52:08 GMT  
		Size: 14.4 MB (14422163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ca64f27a1bb91a847ef1f5cd1fd684b3b75d6143ca869dfd5e918277b65794`  
		Last Modified: Mon, 24 Jul 2017 22:52:05 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f21ddd386d51a7b0dac8052957bfc36ed431810b104970b990ccc69ce85d5`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320acd3fe61117a7da02d4327f2a9c74bfd4592d246fc321f034ce4bd62c60f6`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 59.2 MB (59239613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28708776b7e8b66bd8b345fc460372b7b8bd6594795a509856907bf8549c7d4`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8654abe9915eae5da2e0a70c41258e1f108d76dbc5e1345018bca79ec12806`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 2.4 MB (2447787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9dd10783cb0274a9d8f810a227fd66a8432c2e1c449245dfa7b2a5620d2b3`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 76.8 MB (76751672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db4768992cc55d3cd5192feb1c9503a57c0594b2f489ce974d9f222ed51531c`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c2546ddb16077dcdd23c36001a79e0a819b426910fc66e19cbc78c8096f034`  
		Last Modified: Wed, 02 Aug 2017 00:08:49 GMT  
		Size: 14.5 MB (14540247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c348663a248dd19439b82cf53e4a6394e3ffe647ea91ff92138a5d056700a070`  
		Last Modified: Wed, 02 Aug 2017 00:08:48 GMT  
		Size: 4.2 MB (4243465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:f4feb7fbb66e95f38b91aa3ffc8ffc58ac9f49d9e411c679a90082dadbb24e50
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259168131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d41d6538c22f58a2230fe673c42a2001b936bbb761496f97a8804c738afa0f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:37:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:37:51 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:37:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:37:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:38:33 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:38:33 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 24 Jul 2017 22:38:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:41:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:41:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:41:12 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:41:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:41:12 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:41:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:05:43 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:06:18 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:06:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:06:22 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523bd4c61610db59a875a15ec37f6a96bc264aea7019f595088b95b221d2cd46`  
		Last Modified: Mon, 24 Jul 2017 22:52:06 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64466a0b3abafbcf292c0132a552bfe1dcbcbde7d2e1cd367ab0b2a5b05987e2`  
		Last Modified: Mon, 24 Jul 2017 22:52:08 GMT  
		Size: 14.4 MB (14422163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ca64f27a1bb91a847ef1f5cd1fd684b3b75d6143ca869dfd5e918277b65794`  
		Last Modified: Mon, 24 Jul 2017 22:52:05 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f21ddd386d51a7b0dac8052957bfc36ed431810b104970b990ccc69ce85d5`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320acd3fe61117a7da02d4327f2a9c74bfd4592d246fc321f034ce4bd62c60f6`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 59.2 MB (59239613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28708776b7e8b66bd8b345fc460372b7b8bd6594795a509856907bf8549c7d4`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8654abe9915eae5da2e0a70c41258e1f108d76dbc5e1345018bca79ec12806`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 2.4 MB (2447787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9dd10783cb0274a9d8f810a227fd66a8432c2e1c449245dfa7b2a5620d2b3`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 76.8 MB (76751672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db4768992cc55d3cd5192feb1c9503a57c0594b2f489ce974d9f222ed51531c`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c2546ddb16077dcdd23c36001a79e0a819b426910fc66e19cbc78c8096f034`  
		Last Modified: Wed, 02 Aug 2017 00:08:49 GMT  
		Size: 14.5 MB (14540247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c348663a248dd19439b82cf53e4a6394e3ffe647ea91ff92138a5d056700a070`  
		Last Modified: Wed, 02 Aug 2017 00:08:48 GMT  
		Size: 4.2 MB (4243465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:f4feb7fbb66e95f38b91aa3ffc8ffc58ac9f49d9e411c679a90082dadbb24e50
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259168131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d41d6538c22f58a2230fe673c42a2001b936bbb761496f97a8804c738afa0f5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:37:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:37:51 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:37:55 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:37:55 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:37:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:38:33 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:38:33 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_VERSION=3.4.2
# Mon, 24 Jul 2017 22:38:34 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Mon, 24 Jul 2017 22:38:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:41:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:41:11 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:41:12 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:41:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:41:12 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:41:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:05:43 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:06:18 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:06:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:06:22 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523bd4c61610db59a875a15ec37f6a96bc264aea7019f595088b95b221d2cd46`  
		Last Modified: Mon, 24 Jul 2017 22:52:06 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64466a0b3abafbcf292c0132a552bfe1dcbcbde7d2e1cd367ab0b2a5b05987e2`  
		Last Modified: Mon, 24 Jul 2017 22:52:08 GMT  
		Size: 14.4 MB (14422163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ca64f27a1bb91a847ef1f5cd1fd684b3b75d6143ca869dfd5e918277b65794`  
		Last Modified: Mon, 24 Jul 2017 22:52:05 GMT  
		Size: 818.8 KB (818814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996f21ddd386d51a7b0dac8052957bfc36ed431810b104970b990ccc69ce85d5`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320acd3fe61117a7da02d4327f2a9c74bfd4592d246fc321f034ce4bd62c60f6`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 59.2 MB (59239613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28708776b7e8b66bd8b345fc460372b7b8bd6594795a509856907bf8549c7d4`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8654abe9915eae5da2e0a70c41258e1f108d76dbc5e1345018bca79ec12806`  
		Last Modified: Mon, 24 Jul 2017 22:52:03 GMT  
		Size: 2.4 MB (2447787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9dd10783cb0274a9d8f810a227fd66a8432c2e1c449245dfa7b2a5620d2b3`  
		Last Modified: Mon, 24 Jul 2017 22:52:13 GMT  
		Size: 76.8 MB (76751672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db4768992cc55d3cd5192feb1c9503a57c0594b2f489ce974d9f222ed51531c`  
		Last Modified: Mon, 24 Jul 2017 22:52:02 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32c2546ddb16077dcdd23c36001a79e0a819b426910fc66e19cbc78c8096f034`  
		Last Modified: Wed, 02 Aug 2017 00:08:49 GMT  
		Size: 14.5 MB (14540247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c348663a248dd19439b82cf53e4a6394e3ffe647ea91ff92138a5d056700a070`  
		Last Modified: Wed, 02 Aug 2017 00:08:48 GMT  
		Size: 4.2 MB (4243465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4`

```console
$ docker pull redmine@sha256:0c4e36c3751877a591bcf4f92ad77564ddee1f94d9dcc02ba1f8abc147c64aa5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251606952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8246eac44b3e05e1c51115ef77e5ab558ec4fbedaa461ca9310445015916aaf7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:42:40 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 24 Jul 2017 22:42:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 24 Jul 2017 22:42:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:45:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:45:22 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:45:22 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:45:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:45:23 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:45:23 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd688dea8695acbc864326d6376cdb9618b1566b259c27d9a08aed64c7520c2c`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a00572570eb5f30a5d671d1d1afb917029d93a3237be10e3f188d72b9f9fcfd`  
		Last Modified: Mon, 24 Jul 2017 22:53:17 GMT  
		Size: 77.4 MB (77414543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367114520059b598cf6a019778d8324f7bd2f34319e661452586593b1dfeb4d0`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:0c4e36c3751877a591bcf4f92ad77564ddee1f94d9dcc02ba1f8abc147c64aa5
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251606952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8246eac44b3e05e1c51115ef77e5ab558ec4fbedaa461ca9310445015916aaf7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:42:40 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 24 Jul 2017 22:42:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 24 Jul 2017 22:42:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:45:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:45:22 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:45:22 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:45:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:45:23 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:45:23 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd688dea8695acbc864326d6376cdb9618b1566b259c27d9a08aed64c7520c2c`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a00572570eb5f30a5d671d1d1afb917029d93a3237be10e3f188d72b9f9fcfd`  
		Last Modified: Mon, 24 Jul 2017 22:53:17 GMT  
		Size: 77.4 MB (77414543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367114520059b598cf6a019778d8324f7bd2f34319e661452586593b1dfeb4d0`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.4-passenger`

```console
$ docker pull redmine@sha256:ca1f434d5ef42138dce2c7107ca2b2c259dcd35f5b86d2d3fb1318e70f776839
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.4-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.4 MB (270390604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b155535709cdada3ea1e7732f2dbf7a1d0e6230cc3a7c2f6c9da5acd4ad676d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:42:40 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 24 Jul 2017 22:42:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 24 Jul 2017 22:42:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:45:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:45:22 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:45:22 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:45:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:45:23 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:45:23 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:06:26 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:06:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:06:59 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:07:00 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd688dea8695acbc864326d6376cdb9618b1566b259c27d9a08aed64c7520c2c`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a00572570eb5f30a5d671d1d1afb917029d93a3237be10e3f188d72b9f9fcfd`  
		Last Modified: Mon, 24 Jul 2017 22:53:17 GMT  
		Size: 77.4 MB (77414543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367114520059b598cf6a019778d8324f7bd2f34319e661452586593b1dfeb4d0`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f123f7d9ed129032fd76c0c48a042163e59f7ce79fec9d7ce4b62ef170bb3e`  
		Last Modified: Wed, 02 Aug 2017 00:09:36 GMT  
		Size: 14.5 MB (14540190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf5c2d82c11bc02245e7b0cddefcb5d6a5f995555ef14321efa9620387a5314`  
		Last Modified: Wed, 02 Aug 2017 00:09:35 GMT  
		Size: 4.2 MB (4243462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:ca1f434d5ef42138dce2c7107ca2b2c259dcd35f5b86d2d3fb1318e70f776839
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.4 MB (270390604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b155535709cdada3ea1e7732f2dbf7a1d0e6230cc3a7c2f6c9da5acd4ad676d5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:42:40 GMT
ENV REDMINE_VERSION=3.3.4
# Mon, 24 Jul 2017 22:42:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e5ef015537f0edec3fa942ba42489727
# Mon, 24 Jul 2017 22:42:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:45:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:45:22 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:45:22 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:45:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:45:23 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:45:23 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:06:26 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:06:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:06:59 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:07:00 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd688dea8695acbc864326d6376cdb9618b1566b259c27d9a08aed64c7520c2c`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 2.4 MB (2390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a00572570eb5f30a5d671d1d1afb917029d93a3237be10e3f188d72b9f9fcfd`  
		Last Modified: Mon, 24 Jul 2017 22:53:17 GMT  
		Size: 77.4 MB (77414543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367114520059b598cf6a019778d8324f7bd2f34319e661452586593b1dfeb4d0`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f123f7d9ed129032fd76c0c48a042163e59f7ce79fec9d7ce4b62ef170bb3e`  
		Last Modified: Wed, 02 Aug 2017 00:09:36 GMT  
		Size: 14.5 MB (14540190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf5c2d82c11bc02245e7b0cddefcb5d6a5f995555ef14321efa9620387a5314`  
		Last Modified: Wed, 02 Aug 2017 00:09:35 GMT  
		Size: 4.2 MB (4243462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7`

```console
$ docker pull redmine@sha256:3af99e494d3baef4bdd910549ed8c2553afd8e700717ecb24e099cd5869f099b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251563632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c7c803499ccac94fb02984f212ebd151be1f48c4823faf358a269b241b6762`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:45:53 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 24 Jul 2017 22:45:54 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 24 Jul 2017 22:45:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:48:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:48:32 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:48:33 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:48:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:48:33 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:48:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35ad57d184d3979fc72a1fb91fcc91581591a03ed4964c5d8d5f2e7154008fe`  
		Last Modified: Mon, 24 Jul 2017 22:53:49 GMT  
		Size: 2.3 MB (2346956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d34d72a4e34cd8c31e25c149bd0fc63e8e230bf183d4de13296c7b0db69339`  
		Last Modified: Mon, 24 Jul 2017 22:53:57 GMT  
		Size: 77.4 MB (77414352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0397b09120be4a157295bce2b8b7f8d461fec2e439233b09c5bd685ce6ca6d6d`  
		Last Modified: Mon, 24 Jul 2017 22:53:48 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:3af99e494d3baef4bdd910549ed8c2553afd8e700717ecb24e099cd5869f099b
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.6 MB (251563632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c7c803499ccac94fb02984f212ebd151be1f48c4823faf358a269b241b6762`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:45:53 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 24 Jul 2017 22:45:54 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 24 Jul 2017 22:45:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:48:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:48:32 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:48:33 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:48:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:48:33 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:48:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35ad57d184d3979fc72a1fb91fcc91581591a03ed4964c5d8d5f2e7154008fe`  
		Last Modified: Mon, 24 Jul 2017 22:53:49 GMT  
		Size: 2.3 MB (2346956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d34d72a4e34cd8c31e25c149bd0fc63e8e230bf183d4de13296c7b0db69339`  
		Last Modified: Mon, 24 Jul 2017 22:53:57 GMT  
		Size: 77.4 MB (77414352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0397b09120be4a157295bce2b8b7f8d461fec2e439233b09c5bd685ce6ca6d6d`  
		Last Modified: Mon, 24 Jul 2017 22:53:48 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.7-passenger`

```console
$ docker pull redmine@sha256:9e70d220daf02591934986cf4b61d52b74906202b9d248af668a684998b0495e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270347234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89305a688af82ccf969a481f9c29a3dc3deae65badc11a81b4856104c2bebbf3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:45:53 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 24 Jul 2017 22:45:54 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 24 Jul 2017 22:45:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:48:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:48:32 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:48:33 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:48:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:48:33 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:48:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:07:06 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:07:32 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:07:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:07:37 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35ad57d184d3979fc72a1fb91fcc91581591a03ed4964c5d8d5f2e7154008fe`  
		Last Modified: Mon, 24 Jul 2017 22:53:49 GMT  
		Size: 2.3 MB (2346956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d34d72a4e34cd8c31e25c149bd0fc63e8e230bf183d4de13296c7b0db69339`  
		Last Modified: Mon, 24 Jul 2017 22:53:57 GMT  
		Size: 77.4 MB (77414352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0397b09120be4a157295bce2b8b7f8d461fec2e439233b09c5bd685ce6ca6d6d`  
		Last Modified: Mon, 24 Jul 2017 22:53:48 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affda6b438f16718c868c82a5667ceb7d374c2739a978c874d67b78053ddb60c`  
		Last Modified: Wed, 02 Aug 2017 00:10:07 GMT  
		Size: 14.5 MB (14540141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e7cec0d5abfbdbaf1bf612ea206fa00961856a317dd5aba0d9c0b59268b8c3`  
		Last Modified: Wed, 02 Aug 2017 00:10:05 GMT  
		Size: 4.2 MB (4243461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:9e70d220daf02591934986cf4b61d52b74906202b9d248af668a684998b0495e
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270347234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89305a688af82ccf969a481f9c29a3dc3deae65badc11a81b4856104c2bebbf3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:45:53 GMT
ENV REDMINE_VERSION=3.2.7
# Mon, 24 Jul 2017 22:45:54 GMT
ENV REDMINE_DOWNLOAD_MD5=4fca9ca62f4b6b296be2f35d9222667a
# Mon, 24 Jul 2017 22:45:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:48:32 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:48:32 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:48:33 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:48:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:48:33 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:48:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:07:06 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:07:32 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:07:34 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:07:37 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35ad57d184d3979fc72a1fb91fcc91581591a03ed4964c5d8d5f2e7154008fe`  
		Last Modified: Mon, 24 Jul 2017 22:53:49 GMT  
		Size: 2.3 MB (2346956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d34d72a4e34cd8c31e25c149bd0fc63e8e230bf183d4de13296c7b0db69339`  
		Last Modified: Mon, 24 Jul 2017 22:53:57 GMT  
		Size: 77.4 MB (77414352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0397b09120be4a157295bce2b8b7f8d461fec2e439233b09c5bd685ce6ca6d6d`  
		Last Modified: Mon, 24 Jul 2017 22:53:48 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affda6b438f16718c868c82a5667ceb7d374c2739a978c874d67b78053ddb60c`  
		Last Modified: Wed, 02 Aug 2017 00:10:07 GMT  
		Size: 14.5 MB (14540141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e7cec0d5abfbdbaf1bf612ea206fa00961856a317dd5aba0d9c0b59268b8c3`  
		Last Modified: Wed, 02 Aug 2017 00:10:05 GMT  
		Size: 4.2 MB (4243461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:fc6d076de79ecf1795ca398da7a0bac55c944001f735441c3ff3cd7abd0f7654
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.0 MB (241991520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20adc40d307830fa26994d9e2721a7bb75464e303a9d637d3a0a867e29fa663`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:49:04 GMT
ENV REDMINE_VERSION=3.1.7
# Mon, 24 Jul 2017 22:49:04 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Mon, 24 Jul 2017 22:49:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:51:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:51:27 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:51:27 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:51:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:51:28 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:51:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbee41e0d1cb9eefd5444cba4d6209e30bfc5039c2f890d962a6f29b97bd512`  
		Last Modified: Mon, 24 Jul 2017 22:54:29 GMT  
		Size: 2.3 MB (2281372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14c4fb7d0fd2d83b696599d355de01be130e57d9fd76950b80bc99ad257a78a`  
		Last Modified: Mon, 24 Jul 2017 22:54:38 GMT  
		Size: 67.9 MB (67907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7387f362f18470bde14a615c50f7b9ead8f8a1ba1ef0df9d1c422523fae058`  
		Last Modified: Mon, 24 Jul 2017 22:54:28 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:fc6d076de79ecf1795ca398da7a0bac55c944001f735441c3ff3cd7abd0f7654
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.0 MB (241991520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20adc40d307830fa26994d9e2721a7bb75464e303a9d637d3a0a867e29fa663`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:49:04 GMT
ENV REDMINE_VERSION=3.1.7
# Mon, 24 Jul 2017 22:49:04 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Mon, 24 Jul 2017 22:49:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:51:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:51:27 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:51:27 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:51:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:51:28 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:51:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbee41e0d1cb9eefd5444cba4d6209e30bfc5039c2f890d962a6f29b97bd512`  
		Last Modified: Mon, 24 Jul 2017 22:54:29 GMT  
		Size: 2.3 MB (2281372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14c4fb7d0fd2d83b696599d355de01be130e57d9fd76950b80bc99ad257a78a`  
		Last Modified: Mon, 24 Jul 2017 22:54:38 GMT  
		Size: 67.9 MB (67907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7387f362f18470bde14a615c50f7b9ead8f8a1ba1ef0df9d1c422523fae058`  
		Last Modified: Mon, 24 Jul 2017 22:54:28 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:8104c227a24ff2e0bcc651f27f069b887b60236829a445cb2357bca598326ff3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260775186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e6452627e1498d579be646ae9bcde87a1119b510430f98f9fe22f50abe8139`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:49:04 GMT
ENV REDMINE_VERSION=3.1.7
# Mon, 24 Jul 2017 22:49:04 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Mon, 24 Jul 2017 22:49:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:51:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:51:27 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:51:27 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:51:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:51:28 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:51:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:07:43 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:08:10 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:08:12 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:08:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbee41e0d1cb9eefd5444cba4d6209e30bfc5039c2f890d962a6f29b97bd512`  
		Last Modified: Mon, 24 Jul 2017 22:54:29 GMT  
		Size: 2.3 MB (2281372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14c4fb7d0fd2d83b696599d355de01be130e57d9fd76950b80bc99ad257a78a`  
		Last Modified: Mon, 24 Jul 2017 22:54:38 GMT  
		Size: 67.9 MB (67907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7387f362f18470bde14a615c50f7b9ead8f8a1ba1ef0df9d1c422523fae058`  
		Last Modified: Mon, 24 Jul 2017 22:54:28 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982cd303290671d9f64e59c95bd324d8166ea408728f094afc7ff6440040e036`  
		Last Modified: Wed, 02 Aug 2017 00:10:39 GMT  
		Size: 14.5 MB (14540193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3259d5f6b4f6eb4583e6dcf52f2700a188b517a438c79a907adfffcd97b089`  
		Last Modified: Wed, 02 Aug 2017 00:10:37 GMT  
		Size: 4.2 MB (4243473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:8104c227a24ff2e0bcc651f27f069b887b60236829a445cb2357bca598326ff3
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260775186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e6452627e1498d579be646ae9bcde87a1119b510430f98f9fe22f50abe8139`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 22:41:44 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Mon, 24 Jul 2017 22:42:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:01 GMT
ENV GOSU_VERSION=1.7
# Mon, 24 Jul 2017 22:42:04 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Mon, 24 Jul 2017 22:42:05 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 24 Jul 2017 22:42:07 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Mon, 24 Jul 2017 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 22:42:40 GMT
ENV RAILS_ENV=production
# Mon, 24 Jul 2017 22:42:40 GMT
WORKDIR /usr/src/redmine
# Mon, 24 Jul 2017 22:49:04 GMT
ENV REDMINE_VERSION=3.1.7
# Mon, 24 Jul 2017 22:49:04 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Mon, 24 Jul 2017 22:49:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Mon, 24 Jul 2017 22:51:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Mon, 24 Jul 2017 22:51:27 GMT
VOLUME [/usr/src/redmine/files]
# Mon, 24 Jul 2017 22:51:27 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Mon, 24 Jul 2017 22:51:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Jul 2017 22:51:28 GMT
EXPOSE 3000/tcp
# Mon, 24 Jul 2017 22:51:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 02 Aug 2017 00:07:43 GMT
ENV PASSENGER_VERSION=5.1.7
# Wed, 02 Aug 2017 00:08:10 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 02 Aug 2017 00:08:12 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 02 Aug 2017 00:08:12 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa330c92465a5d11606161d7ae44589552ba7e4a3f00d9b2d5a78e8596ee7a76`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 2.1 KB (2056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77fa7bf34fd0947c108fabd1cb2e220a2ff77bd3842ef0f5149805f8a64110a`  
		Last Modified: Mon, 24 Jul 2017 22:53:12 GMT  
		Size: 14.4 MB (14422190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b8fbe68e72ffca877a6f1a32dea17806ecbd2f3e8e6abc09635c05bd6cda7`  
		Last Modified: Mon, 24 Jul 2017 22:53:09 GMT  
		Size: 818.8 KB (818810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7440340c5cf8beed04c50a4cad37fea6fa9656c6869969c4d0b61ad5b8a301f4`  
		Last Modified: Mon, 24 Jul 2017 22:53:07 GMT  
		Size: 7.3 KB (7290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7146421540c6c99664507b8fe08b3a44f497f344b4bddc82da68edc1b76927e`  
		Last Modified: Mon, 24 Jul 2017 22:53:18 GMT  
		Size: 59.2 MB (59240489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f827739b763c47f3f36661beca7b36355b691b9322a02c71535a61aa6ccae5eb`  
		Last Modified: Mon, 24 Jul 2017 22:53:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbee41e0d1cb9eefd5444cba4d6209e30bfc5039c2f890d962a6f29b97bd512`  
		Last Modified: Mon, 24 Jul 2017 22:54:29 GMT  
		Size: 2.3 MB (2281372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14c4fb7d0fd2d83b696599d355de01be130e57d9fd76950b80bc99ad257a78a`  
		Last Modified: Mon, 24 Jul 2017 22:54:38 GMT  
		Size: 67.9 MB (67907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7387f362f18470bde14a615c50f7b9ead8f8a1ba1ef0df9d1c422523fae058`  
		Last Modified: Mon, 24 Jul 2017 22:54:28 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982cd303290671d9f64e59c95bd324d8166ea408728f094afc7ff6440040e036`  
		Last Modified: Wed, 02 Aug 2017 00:10:39 GMT  
		Size: 14.5 MB (14540193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3259d5f6b4f6eb4583e6dcf52f2700a188b517a438c79a907adfffcd97b089`  
		Last Modified: Wed, 02 Aug 2017 00:10:37 GMT  
		Size: 4.2 MB (4243473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
