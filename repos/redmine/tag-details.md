<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3.1.7`](#redmine317)
-	[`redmine:3.1`](#redmine31)
-	[`redmine:3.1.7-passenger`](#redmine317-passenger)
-	[`redmine:3.1-passenger`](#redmine31-passenger)
-	[`redmine:3.2.6`](#redmine326)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.6-passenger`](#redmine326-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3.3`](#redmine333)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3`](#redmine3)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:3.3.3-passenger`](#redmine333-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3.1.7`

```console
$ docker pull redmine@sha256:575cebb369fb4ffd4011775129e1c86602fabaefa5fa1c049b792bcadd0a2e2c
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241164129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24a72efb703633a87b50315881c55ddff12ea98e797489d26c0498011181711`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 19:45:20 GMT
ENV REDMINE_VERSION=3.1.7
# Thu, 11 May 2017 19:45:21 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Thu, 11 May 2017 19:45:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 19:48:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:14:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:14:10 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:14:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:14:11 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:14:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaa4b2d120ce25e46305f89e8f8c55d5e29d84164d836b19b3e093455826b34`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.3 MB (2281373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292b25841a89b6f1960695f987536525cbafcb2b9ffc5dbfe49ad11c4d005f34`  
		Last Modified: Thu, 11 May 2017 21:27:17 GMT  
		Size: 67.2 MB (67197072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc67f061d7c9320950066fe8d7d24ad95cbd4c304b0ef3de722cd1047cef6a1`  
		Last Modified: Thu, 11 May 2017 21:26:57 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1`

```console
$ docker pull redmine@sha256:575cebb369fb4ffd4011775129e1c86602fabaefa5fa1c049b792bcadd0a2e2c
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241164129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24a72efb703633a87b50315881c55ddff12ea98e797489d26c0498011181711`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 19:45:20 GMT
ENV REDMINE_VERSION=3.1.7
# Thu, 11 May 2017 19:45:21 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Thu, 11 May 2017 19:45:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 19:48:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:14:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:14:10 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:14:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:14:11 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:14:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaa4b2d120ce25e46305f89e8f8c55d5e29d84164d836b19b3e093455826b34`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.3 MB (2281373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292b25841a89b6f1960695f987536525cbafcb2b9ffc5dbfe49ad11c4d005f34`  
		Last Modified: Thu, 11 May 2017 21:27:17 GMT  
		Size: 67.2 MB (67197072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc67f061d7c9320950066fe8d7d24ad95cbd4c304b0ef3de722cd1047cef6a1`  
		Last Modified: Thu, 11 May 2017 21:26:57 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1.7-passenger`

```console
$ docker pull redmine@sha256:75c5d36bd9f6cdcf405d258c69dcde3e76e9b335d2e4b206be7bd2a6e7ea4424
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1.7-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260405793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd90a27efd6655518884d25bac9ba9288c9abe616e5edc102c88249e53186ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 19:45:20 GMT
ENV REDMINE_VERSION=3.1.7
# Thu, 11 May 2017 19:45:21 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Thu, 11 May 2017 19:45:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 19:48:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:14:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:14:10 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:14:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:14:11 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:14:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 11 May 2017 21:14:51 GMT
ENV PASSENGER_VERSION=5.1.3
# Thu, 11 May 2017 21:15:15 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:15:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 11 May 2017 21:15:18 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaa4b2d120ce25e46305f89e8f8c55d5e29d84164d836b19b3e093455826b34`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.3 MB (2281373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292b25841a89b6f1960695f987536525cbafcb2b9ffc5dbfe49ad11c4d005f34`  
		Last Modified: Thu, 11 May 2017 21:27:17 GMT  
		Size: 67.2 MB (67197072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc67f061d7c9320950066fe8d7d24ad95cbd4c304b0ef3de722cd1047cef6a1`  
		Last Modified: Thu, 11 May 2017 21:26:57 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2186e0aeec1341bb32916196950c4cac3a26e34e4db7434d9b349f0e701200ac`  
		Last Modified: Thu, 11 May 2017 21:28:10 GMT  
		Size: 15.1 MB (15052107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ad46d0b8a1a50f736255aead1a0ed8120412c647199c01db17a9184e86c2bc`  
		Last Modified: Thu, 11 May 2017 21:28:08 GMT  
		Size: 4.2 MB (4189557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.1-passenger`

```console
$ docker pull redmine@sha256:75c5d36bd9f6cdcf405d258c69dcde3e76e9b335d2e4b206be7bd2a6e7ea4424
```

-	Platforms:
	-	linux; amd64

### `redmine:3.1-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260405793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd90a27efd6655518884d25bac9ba9288c9abe616e5edc102c88249e53186ba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 19:45:20 GMT
ENV REDMINE_VERSION=3.1.7
# Thu, 11 May 2017 19:45:21 GMT
ENV REDMINE_DOWNLOAD_MD5=625b7705b70521a205491a53f6df506a
# Thu, 11 May 2017 19:45:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 19:48:53 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:14:08 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:14:10 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:14:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:14:11 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:14:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 11 May 2017 21:14:51 GMT
ENV PASSENGER_VERSION=5.1.3
# Thu, 11 May 2017 21:15:15 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:15:17 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 11 May 2017 21:15:18 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdaa4b2d120ce25e46305f89e8f8c55d5e29d84164d836b19b3e093455826b34`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.3 MB (2281373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292b25841a89b6f1960695f987536525cbafcb2b9ffc5dbfe49ad11c4d005f34`  
		Last Modified: Thu, 11 May 2017 21:27:17 GMT  
		Size: 67.2 MB (67197072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc67f061d7c9320950066fe8d7d24ad95cbd4c304b0ef3de722cd1047cef6a1`  
		Last Modified: Thu, 11 May 2017 21:26:57 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2186e0aeec1341bb32916196950c4cac3a26e34e4db7434d9b349f0e701200ac`  
		Last Modified: Thu, 11 May 2017 21:28:10 GMT  
		Size: 15.1 MB (15052107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ad46d0b8a1a50f736255aead1a0ed8120412c647199c01db17a9184e86c2bc`  
		Last Modified: Thu, 11 May 2017 21:28:08 GMT  
		Size: 4.2 MB (4189557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.6`

```console
$ docker pull redmine@sha256:136b7803b4535c640018eedf261dc79f6d224ef9b4dcbaac7ae640c7f259f4ae
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250494185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07909c87519ed248679dce0ca4bd7a2479d469fc895f13b21115c2a123465ce4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:16:16 GMT
ENV REDMINE_VERSION=3.2.6
# Thu, 11 May 2017 21:16:17 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Thu, 11 May 2017 21:16:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:19:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:19:33 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:19:34 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:19:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:19:35 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:19:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0e713e0c43c5531fbe6c8a01e235bb29ef02af851982b8e510462b0ff5a56f`  
		Last Modified: Thu, 11 May 2017 21:28:58 GMT  
		Size: 2.3 MB (2345893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3e02c4f5021d3cc56d1238f9c56b0dee02213dee82b6121b51f003bdaac50e`  
		Last Modified: Thu, 11 May 2017 21:29:08 GMT  
		Size: 76.5 MB (76462608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc4eda9f481db99e7ca0e1aebe28378b31f56c93fb0d061fb48bcf910dbdc22`  
		Last Modified: Thu, 11 May 2017 21:28:57 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:136b7803b4535c640018eedf261dc79f6d224ef9b4dcbaac7ae640c7f259f4ae
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250494185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07909c87519ed248679dce0ca4bd7a2479d469fc895f13b21115c2a123465ce4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:16:16 GMT
ENV REDMINE_VERSION=3.2.6
# Thu, 11 May 2017 21:16:17 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Thu, 11 May 2017 21:16:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:19:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:19:33 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:19:34 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:19:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:19:35 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:19:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0e713e0c43c5531fbe6c8a01e235bb29ef02af851982b8e510462b0ff5a56f`  
		Last Modified: Thu, 11 May 2017 21:28:58 GMT  
		Size: 2.3 MB (2345893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3e02c4f5021d3cc56d1238f9c56b0dee02213dee82b6121b51f003bdaac50e`  
		Last Modified: Thu, 11 May 2017 21:29:08 GMT  
		Size: 76.5 MB (76462608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc4eda9f481db99e7ca0e1aebe28378b31f56c93fb0d061fb48bcf910dbdc22`  
		Last Modified: Thu, 11 May 2017 21:28:57 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.6-passenger`

```console
$ docker pull redmine@sha256:b40976da4b608e7a23d79d6f05ed0119f82d5b2a7df4f6371f05210e16bdbefa
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2.6-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269735843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a5e81582bb71321465fad18cb1608224500a8131a446195095ca8e5aae8973`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:16:16 GMT
ENV REDMINE_VERSION=3.2.6
# Thu, 11 May 2017 21:16:17 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Thu, 11 May 2017 21:16:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:19:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:19:33 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:19:34 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:19:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:19:35 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:19:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 11 May 2017 21:20:16 GMT
ENV PASSENGER_VERSION=5.1.3
# Thu, 11 May 2017 21:20:34 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:20:40 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 11 May 2017 21:20:41 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0e713e0c43c5531fbe6c8a01e235bb29ef02af851982b8e510462b0ff5a56f`  
		Last Modified: Thu, 11 May 2017 21:28:58 GMT  
		Size: 2.3 MB (2345893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3e02c4f5021d3cc56d1238f9c56b0dee02213dee82b6121b51f003bdaac50e`  
		Last Modified: Thu, 11 May 2017 21:29:08 GMT  
		Size: 76.5 MB (76462608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc4eda9f481db99e7ca0e1aebe28378b31f56c93fb0d061fb48bcf910dbdc22`  
		Last Modified: Thu, 11 May 2017 21:28:57 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e9a757097178818473bfb7eb341893396f02b38f499973862fc19478f653448`  
		Last Modified: Thu, 11 May 2017 21:30:01 GMT  
		Size: 15.1 MB (15052093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5100e0159b48d73a4d2457bf90d251cae06851313b0f284290880c4d5fd52182`  
		Last Modified: Thu, 11 May 2017 21:30:01 GMT  
		Size: 4.2 MB (4189565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:b40976da4b608e7a23d79d6f05ed0119f82d5b2a7df4f6371f05210e16bdbefa
```

-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269735843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6a5e81582bb71321465fad18cb1608224500a8131a446195095ca8e5aae8973`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:16:16 GMT
ENV REDMINE_VERSION=3.2.6
# Thu, 11 May 2017 21:16:17 GMT
ENV REDMINE_DOWNLOAD_MD5=72ae9d5854ee417d4d66afbfd221970d
# Thu, 11 May 2017 21:16:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:19:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:19:33 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:19:34 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:19:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:19:35 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:19:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 11 May 2017 21:20:16 GMT
ENV PASSENGER_VERSION=5.1.3
# Thu, 11 May 2017 21:20:34 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:20:40 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 11 May 2017 21:20:41 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0e713e0c43c5531fbe6c8a01e235bb29ef02af851982b8e510462b0ff5a56f`  
		Last Modified: Thu, 11 May 2017 21:28:58 GMT  
		Size: 2.3 MB (2345893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3e02c4f5021d3cc56d1238f9c56b0dee02213dee82b6121b51f003bdaac50e`  
		Last Modified: Thu, 11 May 2017 21:29:08 GMT  
		Size: 76.5 MB (76462608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc4eda9f481db99e7ca0e1aebe28378b31f56c93fb0d061fb48bcf910dbdc22`  
		Last Modified: Thu, 11 May 2017 21:28:57 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e9a757097178818473bfb7eb341893396f02b38f499973862fc19478f653448`  
		Last Modified: Thu, 11 May 2017 21:30:01 GMT  
		Size: 15.1 MB (15052093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5100e0159b48d73a4d2457bf90d251cae06851313b0f284290880c4d5fd52182`  
		Last Modified: Thu, 11 May 2017 21:30:01 GMT  
		Size: 4.2 MB (4189565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.3`

```console
$ docker pull redmine@sha256:d0ad9f2079a337429f844e4329c6979635c18682859b50fa15a66be0093c6100
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250522961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9814271c6ed816ad3068671c6e6cbb5dcc850b0f8a3dde1763f6eeeda5ee77ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:21:01 GMT
ENV REDMINE_VERSION=3.3.3
# Thu, 11 May 2017 21:21:02 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Thu, 11 May 2017 21:21:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:23:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:23:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:23:31 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:23:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:23:32 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:23:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d0a088b21967cc557a47b4fc3efa95d8ecd31dc4a92af34673d9e74d0826fe`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 2.4 MB (2388321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa73662c6897f079ad526cb70e68c01e68d5fc1a9dfc2c8875ad99a4a54189e`  
		Last Modified: Thu, 11 May 2017 21:30:59 GMT  
		Size: 76.4 MB (76448958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8039249e3c6885a5282c344be10ced8f0531f1376591d7424ebf16465c3aeded`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:d0ad9f2079a337429f844e4329c6979635c18682859b50fa15a66be0093c6100
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250522961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9814271c6ed816ad3068671c6e6cbb5dcc850b0f8a3dde1763f6eeeda5ee77ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:21:01 GMT
ENV REDMINE_VERSION=3.3.3
# Thu, 11 May 2017 21:21:02 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Thu, 11 May 2017 21:21:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:23:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:23:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:23:31 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:23:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:23:32 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:23:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d0a088b21967cc557a47b4fc3efa95d8ecd31dc4a92af34673d9e74d0826fe`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 2.4 MB (2388321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa73662c6897f079ad526cb70e68c01e68d5fc1a9dfc2c8875ad99a4a54189e`  
		Last Modified: Thu, 11 May 2017 21:30:59 GMT  
		Size: 76.4 MB (76448958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8039249e3c6885a5282c344be10ced8f0531f1376591d7424ebf16465c3aeded`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3`

```console
$ docker pull redmine@sha256:d0ad9f2079a337429f844e4329c6979635c18682859b50fa15a66be0093c6100
```

-	Platforms:
	-	linux; amd64

### `redmine:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250522961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9814271c6ed816ad3068671c6e6cbb5dcc850b0f8a3dde1763f6eeeda5ee77ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:21:01 GMT
ENV REDMINE_VERSION=3.3.3
# Thu, 11 May 2017 21:21:02 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Thu, 11 May 2017 21:21:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:23:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:23:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:23:31 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:23:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:23:32 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:23:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d0a088b21967cc557a47b4fc3efa95d8ecd31dc4a92af34673d9e74d0826fe`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 2.4 MB (2388321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa73662c6897f079ad526cb70e68c01e68d5fc1a9dfc2c8875ad99a4a54189e`  
		Last Modified: Thu, 11 May 2017 21:30:59 GMT  
		Size: 76.4 MB (76448958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8039249e3c6885a5282c344be10ced8f0531f1376591d7424ebf16465c3aeded`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:f136b89ad1702f37e11cb1ea223ca09f2b48e30fd74c5d48f8910f1105b28b26
```

-	Platforms:
	-	linux; amd64

### `redmine:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250400926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de108d1d415cfee00a7bcf29fc25a2e8bdefdc7c235ae2d5fe2c20f02ff19d21`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 05:03:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 05:04:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Apr 2017 05:13:56 GMT
ENV RUBY_MAJOR=2.2
# Tue, 25 Apr 2017 05:13:57 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 25 Apr 2017 05:13:58 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 01 May 2017 23:03:29 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 01 May 2017 23:06:56 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 01 May 2017 23:06:56 GMT
ENV BUNDLER_VERSION=1.14.6
# Mon, 01 May 2017 23:06:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 01 May 2017 23:06:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 01 May 2017 23:06:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 01 May 2017 23:07:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 01 May 2017 23:07:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 01 May 2017 23:07:02 GMT
CMD ["irb"]
# Tue, 02 May 2017 16:44:13 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 02 May 2017 16:44:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:44:42 GMT
ENV GOSU_VERSION=1.7
# Tue, 02 May 2017 16:44:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 02 May 2017 16:45:03 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 02 May 2017 16:45:06 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 02 May 2017 16:45:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 May 2017 16:45:58 GMT
ENV RAILS_ENV=production
# Tue, 02 May 2017 16:45:59 GMT
WORKDIR /usr/src/redmine
# Tue, 02 May 2017 17:01:43 GMT
ENV REDMINE_VERSION=3.3.3
# Tue, 02 May 2017 17:01:44 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Tue, 02 May 2017 17:01:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 02 May 2017 17:04:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 02 May 2017 17:04:16 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 02 May 2017 17:04:17 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Tue, 02 May 2017 17:04:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 02 May 2017 17:04:36 GMT
EXPOSE 3000/tcp
# Tue, 02 May 2017 17:04:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea96cd36085f92e2bca9c69c2e4348ff3b20fd7ada591f8e40c07e392a5b4e`  
		Last Modified: Tue, 25 Apr 2017 21:38:13 GMT  
		Size: 10.1 MB (10146547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99fb3eb32f5fc1217625fa7d5bd81fe6a022d28fc0e2cee3dd7711d325dae90b`  
		Last Modified: Tue, 25 Apr 2017 21:38:09 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0417dd3c2401d84878e6a302f12378a2743e489d8e8ee548d04422258e1c12`  
		Last Modified: Mon, 01 May 2017 23:41:19 GMT  
		Size: 33.8 MB (33811643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a94ca9d80984b49874051380a9426b8390e84905328845dbed3eef99ff8d293`  
		Last Modified: Mon, 01 May 2017 23:41:07 GMT  
		Size: 639.5 KB (639522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dab4ed5c14f83205571a727522889a1c9d5b18c0322b8b2207fb6109f7af92b4`  
		Last Modified: Mon, 01 May 2017 23:41:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f643020a2ecd94cb20afe926c956e7cf6b57f8d0d8ed9388d4373a0770b93bee`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 2.1 KB (2059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82acabbfdc8b8536f063b4d3fea06325ec413029f5c1bff8c4200eb937b9d6de`  
		Last Modified: Tue, 02 May 2017 17:06:02 GMT  
		Size: 14.4 MB (14425049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f306827524df84bde6dd5b702a570b567903556dc293e2d1aa2092f2e7684f`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 818.8 KB (818812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f80d524831fa95a7d7a7e42748044271894f9204104baac7e97887f0f26ac8`  
		Last Modified: Tue, 02 May 2017 17:05:58 GMT  
		Size: 7.3 KB (7293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49fd6bc5de1b11a1d79e0f8e801f54a023ceff2349a64d22c17cfc9df87440a`  
		Last Modified: Tue, 02 May 2017 17:06:20 GMT  
		Size: 59.2 MB (59233419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b407b76253d8c657ad55d7da901176fd11b0455eaf480102c1432009551f910`  
		Last Modified: Tue, 02 May 2017 17:05:59 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1554360e517a79e0a09f70dc63e3d76f5e70a4147c61c238685dc04bc70a8a7a`  
		Last Modified: Tue, 02 May 2017 17:11:12 GMT  
		Size: 2.4 MB (2388307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c292bebf026e351c9ce58c6eed3fd517c7caf8321bf5c9a8460aed40b0f24fd`  
		Last Modified: Tue, 02 May 2017 17:11:21 GMT  
		Size: 76.4 MB (76375968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327b0f9a7623236cd2d506eb9fc2ab5d3464c9d2ec1ea3f5858b4e90cdfe51b`  
		Last Modified: Tue, 02 May 2017 17:11:10 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.3-passenger`

```console
$ docker pull redmine@sha256:d7f465bb96ee6a55ffe5c9fe9d0b211e606e36459d9e73418b13108107792663
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3.3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269764235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6142a2795f15ea7dfdb067d22c943e7b97781c6037fdeda034b391f304e032e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:21:01 GMT
ENV REDMINE_VERSION=3.3.3
# Thu, 11 May 2017 21:21:02 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Thu, 11 May 2017 21:21:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:23:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:23:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:23:31 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:23:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:23:32 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:23:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 11 May 2017 21:26:15 GMT
ENV PASSENGER_VERSION=5.1.3
# Thu, 11 May 2017 21:26:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:26:33 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 11 May 2017 21:26:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d0a088b21967cc557a47b4fc3efa95d8ecd31dc4a92af34673d9e74d0826fe`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 2.4 MB (2388321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa73662c6897f079ad526cb70e68c01e68d5fc1a9dfc2c8875ad99a4a54189e`  
		Last Modified: Thu, 11 May 2017 21:30:59 GMT  
		Size: 76.4 MB (76448958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8039249e3c6885a5282c344be10ced8f0531f1376591d7424ebf16465c3aeded`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f71f743d28dbf7318e098c44b2d68f80d811a3b67cdacc3951d9b279faba8e7`  
		Last Modified: Thu, 11 May 2017 21:32:34 GMT  
		Size: 15.1 MB (15051712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d80e381d707e70b24fefc263e7733d9fc95a4b5beb815b90718f6d08a746cfa`  
		Last Modified: Thu, 11 May 2017 21:32:33 GMT  
		Size: 4.2 MB (4189562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:d7f465bb96ee6a55ffe5c9fe9d0b211e606e36459d9e73418b13108107792663
```

-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269764235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6142a2795f15ea7dfdb067d22c943e7b97781c6037fdeda034b391f304e032e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:21:01 GMT
ENV REDMINE_VERSION=3.3.3
# Thu, 11 May 2017 21:21:02 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Thu, 11 May 2017 21:21:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:23:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:23:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:23:31 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:23:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:23:32 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:23:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 11 May 2017 21:26:15 GMT
ENV PASSENGER_VERSION=5.1.3
# Thu, 11 May 2017 21:26:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:26:33 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 11 May 2017 21:26:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d0a088b21967cc557a47b4fc3efa95d8ecd31dc4a92af34673d9e74d0826fe`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 2.4 MB (2388321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa73662c6897f079ad526cb70e68c01e68d5fc1a9dfc2c8875ad99a4a54189e`  
		Last Modified: Thu, 11 May 2017 21:30:59 GMT  
		Size: 76.4 MB (76448958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8039249e3c6885a5282c344be10ced8f0531f1376591d7424ebf16465c3aeded`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f71f743d28dbf7318e098c44b2d68f80d811a3b67cdacc3951d9b279faba8e7`  
		Last Modified: Thu, 11 May 2017 21:32:34 GMT  
		Size: 15.1 MB (15051712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d80e381d707e70b24fefc263e7733d9fc95a4b5beb815b90718f6d08a746cfa`  
		Last Modified: Thu, 11 May 2017 21:32:33 GMT  
		Size: 4.2 MB (4189562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:d7f465bb96ee6a55ffe5c9fe9d0b211e606e36459d9e73418b13108107792663
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269764235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6142a2795f15ea7dfdb067d22c943e7b97781c6037fdeda034b391f304e032e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:21:01 GMT
ENV REDMINE_VERSION=3.3.3
# Thu, 11 May 2017 21:21:02 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Thu, 11 May 2017 21:21:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:23:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:23:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:23:31 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:23:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:23:32 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:23:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 11 May 2017 21:26:15 GMT
ENV PASSENGER_VERSION=5.1.3
# Thu, 11 May 2017 21:26:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:26:33 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 11 May 2017 21:26:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d0a088b21967cc557a47b4fc3efa95d8ecd31dc4a92af34673d9e74d0826fe`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 2.4 MB (2388321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa73662c6897f079ad526cb70e68c01e68d5fc1a9dfc2c8875ad99a4a54189e`  
		Last Modified: Thu, 11 May 2017 21:30:59 GMT  
		Size: 76.4 MB (76448958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8039249e3c6885a5282c344be10ced8f0531f1376591d7424ebf16465c3aeded`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f71f743d28dbf7318e098c44b2d68f80d811a3b67cdacc3951d9b279faba8e7`  
		Last Modified: Thu, 11 May 2017 21:32:34 GMT  
		Size: 15.1 MB (15051712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d80e381d707e70b24fefc263e7733d9fc95a4b5beb815b90718f6d08a746cfa`  
		Last Modified: Thu, 11 May 2017 21:32:33 GMT  
		Size: 4.2 MB (4189562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:d7f465bb96ee6a55ffe5c9fe9d0b211e606e36459d9e73418b13108107792663
```

-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269764235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6142a2795f15ea7dfdb067d22c943e7b97781c6037fdeda034b391f304e032e0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_MAJOR=2.2
# Wed, 10 May 2017 16:00:06 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 10 May 2017 16:00:07 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Wed, 10 May 2017 16:00:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 18:47:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 18:47:34 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 18:47:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 18:47:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 18:47:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 18:47:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 18:47:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 18:47:42 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:44:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 11 May 2017 19:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:44:18 GMT
ENV GOSU_VERSION=1.7
# Thu, 11 May 2017 19:44:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 11 May 2017 19:44:25 GMT
ENV TINI_VERSION=v0.9.0
# Thu, 11 May 2017 19:44:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 11 May 2017 19:45:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 19:45:17 GMT
ENV RAILS_ENV=production
# Thu, 11 May 2017 19:45:19 GMT
WORKDIR /usr/src/redmine
# Thu, 11 May 2017 21:21:01 GMT
ENV REDMINE_VERSION=3.3.3
# Thu, 11 May 2017 21:21:02 GMT
ENV REDMINE_DOWNLOAD_MD5=c946839c9a51dba48ae7c34c5351f677
# Thu, 11 May 2017 21:21:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 11 May 2017 21:23:29 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:23:30 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 11 May 2017 21:23:31 GMT
COPY file:5efb6ca648b54af01740423ca0fdde905eae0ce732d8f2683c79dcf93e0e86c5 in / 
# Thu, 11 May 2017 21:23:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 May 2017 21:23:32 GMT
EXPOSE 3000/tcp
# Thu, 11 May 2017 21:23:33 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 11 May 2017 21:26:15 GMT
ENV PASSENGER_VERSION=5.1.3
# Thu, 11 May 2017 21:26:31 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 11 May 2017 21:26:33 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 11 May 2017 21:26:34 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c399ee88adc9c41869a4d43d7adf200cd366d681b8a37e8496ce79f80a14b2`  
		Last Modified: Thu, 11 May 2017 19:27:58 GMT  
		Size: 33.8 MB (33805598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5ccd387319782eeaddcf31a8eeeb50455c70fd4b17cf692d026dc03b28d9ea`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 639.5 KB (639471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c40912eb7260242149274ddcd3239d42ec8deba28d6ca6829cf6673f7bc6c57`  
		Last Modified: Thu, 11 May 2017 19:27:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec70fe50a2dd25761b7b4a81f82c388ba4476be52e73cf217d23bd9e9853bf8d`  
		Last Modified: Thu, 11 May 2017 21:27:00 GMT  
		Size: 2.1 KB (2068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177aee627b5c161c0f62416c3a438b2edb391b96e3959ae62e78289150f299c5`  
		Last Modified: Thu, 11 May 2017 21:27:04 GMT  
		Size: 14.4 MB (14426550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb123e2b5ed128671cd129961e7ce7221586a27bd4455dba0102abf98c8f8717`  
		Last Modified: Thu, 11 May 2017 21:27:01 GMT  
		Size: 818.8 KB (818811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81a122790e3ed72a5d37e1a0a22fdd325667fc4cac22b60195e9b7a0a758dab`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 7.3 KB (7291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6901716757e38e7d064b904801e4b1e899f912ed28ab5f2762bf0442d85d8c9`  
		Last Modified: Thu, 11 May 2017 21:27:15 GMT  
		Size: 59.2 MB (59239865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d37924d8f63da2bda573f3add2b587ff933466ab175288fb4e01580ac63348`  
		Last Modified: Thu, 11 May 2017 21:26:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d0a088b21967cc557a47b4fc3efa95d8ecd31dc4a92af34673d9e74d0826fe`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 2.4 MB (2388321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa73662c6897f079ad526cb70e68c01e68d5fc1a9dfc2c8875ad99a4a54189e`  
		Last Modified: Thu, 11 May 2017 21:30:59 GMT  
		Size: 76.4 MB (76448958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8039249e3c6885a5282c344be10ced8f0531f1376591d7424ebf16465c3aeded`  
		Last Modified: Thu, 11 May 2017 21:30:50 GMT  
		Size: 1.5 KB (1535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f71f743d28dbf7318e098c44b2d68f80d811a3b67cdacc3951d9b279faba8e7`  
		Last Modified: Thu, 11 May 2017 21:32:34 GMT  
		Size: 15.1 MB (15051712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d80e381d707e70b24fefc263e7733d9fc95a4b5beb815b90718f6d08a746cfa`  
		Last Modified: Thu, 11 May 2017 21:32:33 GMT  
		Size: 4.2 MB (4189562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
