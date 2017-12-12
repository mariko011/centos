<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.8`](#redmine328)
-	[`redmine:3.2.8-passenger`](#redmine328-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.5`](#redmine335)
-	[`redmine:3.3.5-passenger`](#redmine335-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.3`](#redmine343)
-	[`redmine:3.4.3-passenger`](#redmine343-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:d0ddf6408a4c4e1b47d05b9a5a2194544a564c06d647f70520c51c08973db52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3` - linux; amd64

```console
$ docker pull redmine@sha256:ed398a8b18462d7ae488c8d2e92f38f4b94323cfc939e8fd9d4234ab3df5d60b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242090916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996723b2271d20dad57f3d31ad1a6269af16ab3c07fcfc796890ba1c7c5d20ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:29:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:32:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:32:50 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:08:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:08:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:08:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:08:46 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:08:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:09:23 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:09:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 11:09:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:11:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:11:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:11:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:11:55 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:11:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f604ae96ee784438143980e4b4e0f22d17634362066650aa6c64b937ef0ca635`  
		Last Modified: Tue, 12 Dec 2017 07:42:47 GMT  
		Size: 24.7 MB (24724295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ccbae1ae11177967fda6b128cd5d281eec517b5c779ee61aa2f942f4c628c`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9d2d007a1b4cc24e295c787ef116c98d33a535067b231fd854b30881061567`  
		Last Modified: Tue, 12 Dec 2017 11:39:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2afbd34df6cd1b991197242543e8970916dcd74d9d492a011b561ddc83af06`  
		Last Modified: Tue, 12 Dec 2017 11:39:30 GMT  
		Size: 14.7 MB (14650317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99ec2634066d865eebd3286f22edb86c11ec8ac751c0f05eed26cff83eff42`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ff622f1969cb74fbe88f2dcce45047c513bfd4703bc265b86193240b437f3`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 8.5 KB (8501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fd6a369e8e1edd2500cd654d0a56df124e05d84bf6955533bf3db877ef28c7`  
		Last Modified: Tue, 12 Dec 2017 11:39:37 GMT  
		Size: 59.3 MB (59266619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4b37a5f1f5f0d1ab67c8bb322d927ab5d14e9322bf4b197c04b295981897ed`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35b0d8b2fbcfeaa5a2a941906fc5e441da01b59bb23df8c53798850dc8cb40`  
		Last Modified: Tue, 12 Dec 2017 11:39:24 GMT  
		Size: 2.4 MB (2449724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf99175dd2d3ed595b3ac6ae9c8c78551e653e827d77259fb5ac4e42dd210ae`  
		Last Modified: Tue, 12 Dec 2017 11:39:39 GMT  
		Size: 77.7 MB (77701966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c21de491f6015951426f1795dcecfc68622ec03db3152dacdefbfe7ad05042`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6f968d8e81bf004895e883770f372914254e16afa830419d53809262f0dddefa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235135170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e5a12bfb3cc8e8ed47db1f07bacff191a64daade3cebbc7931cbda57b6643f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 02:45:34 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:45:34 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:51:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:51:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:51:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:51:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:35:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:36:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:36:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:36:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:36:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:37:15 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:37:15 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179ea4737244be5f572da462b3c5705bab2143befb6455e4336bcd8d0e407760`  
		Last Modified: Wed, 29 Nov 2017 03:15:10 GMT  
		Size: 24.5 MB (24483509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ced734833d0751f11706a7c22921175ad89ab3abdfbf8fb0f0dea144ecd5ea`  
		Last Modified: Wed, 29 Nov 2017 03:15:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ee29af941d7de19d192ab4259ea30796ff26211bea73b25e76987e71eb29a`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cba304d0f2c108938d18959720674f353aec0ac38de3b665de962528498423`  
		Last Modified: Wed, 29 Nov 2017 03:53:09 GMT  
		Size: 14.3 MB (14347359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593e1fe9d4684177d51cccc210e4730aeec65b083f553f1a06ecf6ee8889d0e4`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1a96819f4195e3a2ebde299f49b32dbe208a1b8cdb14dbfb2e6127c85ab0c0`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355e66b9387dcf98fa1a7a0894720236d9d0944e17e37b51205fcb102b378d82`  
		Last Modified: Wed, 29 Nov 2017 03:53:26 GMT  
		Size: 56.6 MB (56571351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3754cf5b9d29327dd282bb5698cb31cd4db874059c4cf19ac91dc3db78b4195c`  
		Last Modified: Wed, 29 Nov 2017 03:53:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67b5d283d650a6af8d3e7dc7d8e0ad5b5175d8a22abc50740665aac632e7110`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e509a1affd384340033278c59bcf749e1666df622600502e366b835d47e9b174`  
		Last Modified: Wed, 29 Nov 2017 03:53:21 GMT  
		Size: 76.8 MB (76787012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e61d6a1508e609ec515fc36271ef779118a525489372468278a0ea6ec0898`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:68f9abb0c5f1c4e0fbe19ebf167ea6e5d0eacc4b0a09000eb2805d87c0a738fe
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229590045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cce26d7f9acb68b26cd7d40ff346dc3856c755a9e10512fcda4cd989a47afc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 17:08:34 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 17:08:44 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 17:08:54 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 17:08:54 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 17:14:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 17:14:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 17:14:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 17:15:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 17:15:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 17:15:17 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 18:32:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 18:33:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:33:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:33:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:33:08 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 18:33:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 18:34:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:34:12 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 18:34:12 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 18:34:12 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 18:34:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 18:34:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 18:38:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 18:38:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 18:38:37 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 18:38:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:38:48 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 18:38:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c72aedb8b4b2a0b291b1bc898df0d835218c40f8735512eb8ca7e1933208ef`  
		Last Modified: Tue, 12 Dec 2017 17:46:18 GMT  
		Size: 24.4 MB (24358002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad109c8960fde3d54a85b6a8799ffa23af42788d495b35aa613931ae3a76b8a`  
		Last Modified: Tue, 12 Dec 2017 17:46:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b1027829d187f6c0828f1ac76d5294db76e8a5c70157a83697e3c14633e7f`  
		Last Modified: Tue, 12 Dec 2017 18:51:25 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a56916c0018f784f10535bcf91b9e8234b7bbe1cfcd67eafd8296bdd47a43`  
		Last Modified: Tue, 12 Dec 2017 18:51:29 GMT  
		Size: 14.1 MB (14134516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759c29e24f85dad0b2499a4e31292f7f62eeadfe6c6323ba354fa0e842192ba8`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7a801c933c32dbaa8067af92939c6badccd9b25ca4310a11207a1c71a867e6`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d126b20f90f0a5f9d4e769907a634d26c6e8b465848822d35ab6049cb2c01efe`  
		Last Modified: Tue, 12 Dec 2017 18:51:40 GMT  
		Size: 54.3 MB (54343951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05655c680f8a7db6fa3266e880ef324c3c80966b163485b5d570bd72c0cff43e`  
		Last Modified: Tue, 12 Dec 2017 18:51:22 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6da5b6b62f3ea514b458d43899d8cf600cb2e05add7d76ea06d428d56d0353`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 2.5 MB (2450398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb5da03c73f85986c5e5cb9822c0472be125309cf7a1df413021b998c6ea159`  
		Last Modified: Tue, 12 Dec 2017 18:51:41 GMT  
		Size: 76.3 MB (76340376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8798ae73dd16d3c3f987a538a61ad7114afd2b16da68268b4470ef7f1360c71d`  
		Last Modified: Tue, 12 Dec 2017 18:51:22 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:addc09881c85f8c3b7b6bce7a534ad84591ac4786042afe803638db11b5dd907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (233959349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f95606782166eb745c0f9fd18c973435b8001a87e8c36489f10942b26c8463e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:42:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 22:21:48 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 22:21:48 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 22:31:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 22:31:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 22:31:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 22:31:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 22:31:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 22:31:19 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 23:48:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 23:49:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 23:49:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 23:49:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 23:49:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 23:49:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 23:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 23:51:13 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 23:51:14 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 23:51:14 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 23:51:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 23:51:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 30 Nov 2017 00:00:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 30 Nov 2017 00:00:07 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 30 Nov 2017 00:00:08 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 30 Nov 2017 00:00:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:00:12 GMT
EXPOSE 3000/tcp
# Thu, 30 Nov 2017 00:00:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2227776c3ec6362e4c4f1121e213193523f8a94c5f8defdf3b91df017f3b967c`  
		Last Modified: Wed, 29 Nov 2017 23:21:06 GMT  
		Size: 24.7 MB (24668103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc0e07c76e0a26ce16cd49f66c955e3f72d18a23e070407f99adf4ab437013b`  
		Last Modified: Wed, 29 Nov 2017 23:20:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0165ddc176cd64bd625c505f61d69d2a3f645a1c26b320f743dc16daa554189`  
		Last Modified: Thu, 30 Nov 2017 00:24:51 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eba3fd7779d562b974f54c293d74359359001a94edc6e162c8571019c4d6c62`  
		Last Modified: Thu, 30 Nov 2017 00:24:56 GMT  
		Size: 14.5 MB (14462643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30962df026b0aa96467c33a73c4a6b5f0ef32474648912afb933e874bd745f34`  
		Last Modified: Thu, 30 Nov 2017 00:24:50 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c17b2fb08e724f6095008dfccfd09c20edda89bfe9ca8ad3504356f607e8279`  
		Last Modified: Thu, 30 Nov 2017 00:24:49 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e7d93c0a0bfa419b38d7f97569bd22fdd62741875f8110f848f550e11594ed`  
		Last Modified: Thu, 30 Nov 2017 00:25:08 GMT  
		Size: 55.8 MB (55785821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63eaa6a04fd57b4a631961253f269382287bcc81044dfb300e129bed1f97f796`  
		Last Modified: Thu, 30 Nov 2017 00:24:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6479aff9188e35ce25b4bb917cccb36e30ef8a0f3fd37e6805b1df7bad0e49e`  
		Last Modified: Thu, 30 Nov 2017 00:24:49 GMT  
		Size: 2.4 MB (2449729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c92b90f267f25da42232a69ede1c2ca36d44eb73356c2f0b4c2138ae5d1b38`  
		Last Modified: Thu, 30 Nov 2017 00:26:05 GMT  
		Size: 76.8 MB (76849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e520587212c6f106b8425234d9ef89aee370fea11175d9e1350f3b69f5f425a`  
		Last Modified: Thu, 30 Nov 2017 00:24:47 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:44b13c8d466c6445c050a1bb2c4dc64f31f84faffad4f4328888c78fc383800f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245866473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86389fee9180696c76db1a6a637972ba4b26d3fe2ef698950aafef50b3b6a270`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 04:08:08 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:08:08 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:12:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:12:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:12:10 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:11:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:11:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:11:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:11:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:12:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:12:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 05:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:15:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:15:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:15:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:15:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:15:39 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:15:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d606874a95f77a281a95ea62aecc6652e267ab2ad0d20ee2abe625c0108ea6a`  
		Last Modified: Wed, 29 Nov 2017 04:47:48 GMT  
		Size: 23.7 MB (23707414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b3b5e60949389e180d533eefbb7fb23c3814ffe2dc87fb4d356431d68e097`  
		Last Modified: Wed, 29 Nov 2017 04:47:40 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6290ab79572fcdca52bc6d4dedfe3f2a6c32bbd8fa40110ee26b2b650a6fdc14`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8907d7b491156601acd90d0bbd05dcf53369287764f4f32decae43da940dfe`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 14.8 MB (14817396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0bdebc662d70bd06cecd81a4c20122dd591b2ba2ace4e6f085a0b7b4cce465`  
		Last Modified: Wed, 29 Nov 2017 05:36:25 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea035533dab2cebad7ee27b3db7987cebb653a0129f7ed3121fe8e07961f1e1`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9bed729e63931113d8749301a61b0789c36c5555e389ae0426c271f612478`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 60.1 MB (60111462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2d57c91aa6b268ad6bfc48c017655c9cdf076e23092da03a220fb7d787bd9`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23cfd68b0fc24d07e4046edfc414d177dff85d55d28bbafd83d9e4fa3493baf`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 2.4 MB (2449741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e2e1eda9fbe74fd148246a53dfbac200c88c6dc7602ee40ad3b95dbdec5b1`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 76.9 MB (76885610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa498c25050d6fd9f7d3e7fe9378b05c0c96f7a9ed7c7d8f38b352fa23b486`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:06b583e1b1ba3ab83c95222d31184dd87711df70a0a36b4024d07c963dfc7fd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240752720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d896b06c401427d9c3645302c885c62deb465818dfa2bb287c7c9ace6b77e606`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:31:20 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:31:22 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:31:24 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:31:27 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:46:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:46:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:46:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:46:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:46:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:46:54 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 13:32:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 13:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:32:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 13:32:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 13:32:54 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 13:32:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 13:36:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:36:21 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 13:36:22 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 13:36:23 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 13:36:25 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 13:36:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 13:47:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 13:47:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 13:47:13 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 13:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 13:47:16 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 13:47:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc821e42be3df18a8ebd892a9228209f29a4c16812da6e9d1576ede0677e525`  
		Last Modified: Tue, 12 Dec 2017 08:36:07 GMT  
		Size: 25.2 MB (25169131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09da9bd5b0a1dbf8b88924e45347110a717a7bd381d81e45da4904889d36fb9f`  
		Last Modified: Tue, 12 Dec 2017 08:35:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f301e969c0236a54bc20c8892975762c767a0a0e01fba7ad7314aad4f9da7`  
		Last Modified: Tue, 12 Dec 2017 14:15:16 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518dcbc66e6ed4cc87bae6a527d3e67d01760db78314f45e0b000a32e19cc7bc`  
		Last Modified: Tue, 12 Dec 2017 14:15:17 GMT  
		Size: 14.7 MB (14720904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac56c23f77fac25e7aaed9da38c980070e1c636ae764ded679f6251f71ec83`  
		Last Modified: Tue, 12 Dec 2017 14:15:12 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f957941330ff684841723121af364da2c9af59b04f4c696da87dc17e128f63`  
		Last Modified: Tue, 12 Dec 2017 14:15:12 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95004aeb23849070241696c0d4ee230663894d1ab2fe2696008c167ad3825fdb`  
		Last Modified: Tue, 12 Dec 2017 14:15:25 GMT  
		Size: 58.1 MB (58127224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fca6de94f887ce0c08d6e05ae290a5de8a7ba610b38336b040108746cde80bd`  
		Last Modified: Tue, 12 Dec 2017 14:15:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d05030113c23fb46f2145c57d58167aa0add6e0d4285a45002cbcc31a6d93c6`  
		Last Modified: Tue, 12 Dec 2017 14:15:10 GMT  
		Size: 2.5 MB (2450387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9cb62f3f47435d80994c72c3273bf43e99df4d7a5ed957f7218b2fa295a10`  
		Last Modified: Tue, 12 Dec 2017 14:15:25 GMT  
		Size: 77.8 MB (77837201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a719e77ea2befeaff5c8a4cdf5941e1de9ecf05c0d28acccc8beb9245b54e61`  
		Last Modified: Tue, 12 Dec 2017 14:15:10 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:ba1b54883525b9f3c508e9b4ac4ee392ce4702ae27ed0c15e41cc32688537b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.2` - linux; amd64

```console
$ docker pull redmine@sha256:81dc0b67f7a6680d5d6d5d4a0a36863839810bf1bbf52d82920ae1216e07d581
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253276085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c743b41af37b82dff5dd7f20edf578afd53517cdcf88c564df7e7e2d4937bcc6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:36:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:40:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:40:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:40:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:40:15 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:18:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:18:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:19:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:19:01 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:19:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:19:39 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:19:40 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:29:35 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 12 Dec 2017 11:29:35 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 12 Dec 2017 11:29:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:31:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:38:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:38:15 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:38:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:38:16 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:38:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cdaf9dadc7bea51cac0d763e29019c4b1dc84a5da25b97902e735bbeb7f773`  
		Last Modified: Tue, 12 Dec 2017 07:45:42 GMT  
		Size: 35.3 MB (35338188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9c55fe09a9319ff4c6cb3a5c0913763148a04341cf4896fbb0c373c5ebe7a6`  
		Last Modified: Tue, 12 Dec 2017 07:45:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e460c7fa1cf19fa86bf8dd49fc032e71f3b031e16ad1129fd8aaee0cbdb0d4`  
		Last Modified: Tue, 12 Dec 2017 11:47:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f3e8028a6117959ad5da4d4154cfc019cbd5375a4ee91c3eb7784c3a228ba2`  
		Last Modified: Tue, 12 Dec 2017 11:47:12 GMT  
		Size: 14.7 MB (14650247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1f86600dcae56854c0141ef13be0333748d913be81744dbd20d91438e040a1`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0255eb0afc74a7cb4eae4ecbd354292f22e6dd2287b81b2da00e0ac2d828d0`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac602a5a2d84c47ca2992a013231b7e0a565bbca8a3fcfa577a89bad113319b1`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 59.3 MB (59266988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af30e8ebf5e3bc96d8cd33e319b930f68ba80a56d9affc4c6d98b19cc4f545b`  
		Last Modified: Tue, 12 Dec 2017 11:47:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722911050d3e765cf9cd9ff199848892429eb024132447a90b2e7a253faf06a4`  
		Last Modified: Tue, 12 Dec 2017 11:48:19 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7488f6ac9abfa5812994044d1b7ebefb7495c3e30c6757bd0020fb44715e3caf`  
		Last Modified: Tue, 12 Dec 2017 11:48:33 GMT  
		Size: 78.4 MB (78375659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106d12df1272de165130d6ff70fa03d3bff36ee80425a4e7e8c7018805e74a5e`  
		Last Modified: Tue, 12 Dec 2017 11:48:17 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:57b7f21efe56ce793d162d649cc3878287d13a5ca1ed1c1c00c071f21e253dcc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245494007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fb052b85d0a5c3d7660ca5765c6e6d0b4a25c31d3ec8bcb9f6d94c0375852c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 03:05:49 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 03:05:49 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 03:10:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 03:10:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 03:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 03:10:11 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:42:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:42:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:42:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:42:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:42:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:43:42 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:43:42 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:48:18 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:48:18 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:48:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:52:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:52:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:52:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:52:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:52:46 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:52:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f4c5069a15a9169e6b75f04b7fe4b119fc3c9f81fc886a4c53a2183257eade`  
		Last Modified: Wed, 29 Nov 2017 03:19:21 GMT  
		Size: 34.2 MB (34234357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ec099af78a26d93cdd7007035051c17691e1b9faab1ffbfe78399c2eb75602`  
		Last Modified: Wed, 29 Nov 2017 03:19:08 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a85becc36eb60546600e29f2c0b5d082e240d7cd9e1e743e04baa98e4a351fb`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14992a532c63f7fda479776fd3c19ce325883c773d15f6a37caea8e4011a7211`  
		Last Modified: Wed, 29 Nov 2017 03:54:06 GMT  
		Size: 14.3 MB (14347386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf47abf880eeb5ba1e91ed40769eab5e35542e3bb5591ee97eb5c9a02d5b7fc`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96535285c8491db58d6a752a8e5c38440d2ff27e4c62f30698ce395f40776cf`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8d1f79799b47ea0e62cc6164bc36b168ac44b8a012982c71e48126a2f1534c`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 56.6 MB (56571372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902acc612035f56eb2529117e2118c5746163dc645e2631c6c21d08b5849f0b7`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d28c38c2fe5f8f7053349a275c5a25c7f4a7d03ac8561d8e0e571824334be7`  
		Last Modified: Wed, 29 Nov 2017 03:54:39 GMT  
		Size: 2.3 MB (2347347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ffdeef11a8f35dbcc91dbe757a93bd011def053cd644c8c07fb59cafcc4f25`  
		Last Modified: Wed, 29 Nov 2017 03:54:57 GMT  
		Size: 77.5 MB (77497998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ce12780cee07459117932a52dd441616dc2ee240d863c2a48a05e80ea174de`  
		Last Modified: Wed, 29 Nov 2017 03:54:38 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f9ad9993bac5ccf74f724c3c23ef26741269e752077b0f4c8c28be3eff61a5bc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239865066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3decaf69dfbc1fa6965c983ce15d4244dd246dcc1e6fdbc89bdfc96aeff2db5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 17:33:43 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 17:33:43 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 17:38:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 17:38:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 17:38:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 17:38:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 17:38:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 17:38:07 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 18:39:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 18:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:39:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:39:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:40:07 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 18:40:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 18:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:41:14 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 18:41:14 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 18:45:45 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 12 Dec 2017 18:45:46 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 12 Dec 2017 18:45:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 18:50:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 18:50:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 18:50:51 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 18:51:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:51:02 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 18:51:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed180ea6c6ca2dd6c06dd917a0c6a4589fc07dfd801ea037f14a534df243b5b7`  
		Last Modified: Tue, 12 Dec 2017 17:52:37 GMT  
		Size: 34.0 MB (34035889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178619499ac36ee2b841d9f2d547575afcf9ba04947053c6387fc4b2597b3f6d`  
		Last Modified: Tue, 12 Dec 2017 17:52:21 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a6f20e547916f99d774b0d5f12b9a1e43784d3ed4692a6d405743aa0d9bf1`  
		Last Modified: Tue, 12 Dec 2017 18:52:36 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d39b60c4b94c3ea5c0b67f8fbfc4226d9b43b8cb1c6eacf3adbf1b88747534`  
		Last Modified: Tue, 12 Dec 2017 18:52:39 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5760d573a8863bcd3264f4d7685adf1a798056881c264a690b03695e0fe86e`  
		Last Modified: Tue, 12 Dec 2017 18:52:35 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206c1c1d00185a0eede4fe411ff8bae0003c5989a4256794a9d4915d6c6b38be`  
		Last Modified: Tue, 12 Dec 2017 18:52:34 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1b2f4ad021c3851f3a150987628a0d58b52f995c46fd4eaed0e17ccdd5b2ce`  
		Last Modified: Tue, 12 Dec 2017 18:52:50 GMT  
		Size: 54.3 MB (54344201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eb37476a20a0a08eae63732eb963203a0a38800d5268e9b60f7573cd8ec8fc`  
		Last Modified: Tue, 12 Dec 2017 18:52:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e99daececa8c8badfba40856bf494865b1af525d7a45bd0b6d71bf3a3aee39`  
		Last Modified: Tue, 12 Dec 2017 18:53:31 GMT  
		Size: 2.3 MB (2347344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd7804f7963ad9f2fd237167734afe2dafff49dc5abb12f1b2f4dd2c5c8ee9`  
		Last Modified: Tue, 12 Dec 2017 18:53:49 GMT  
		Size: 77.0 MB (77040324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5139ee94a038d8af26028554cf614f417939232d66a1c469bc71a59884e55e`  
		Last Modified: Tue, 12 Dec 2017 18:53:29 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:377972ffa184147a602b6844229593a46e47e1973279e4fde9d58cedff793cd9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245309217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd5df010a28d44e915c02b0466ca475c53c8b9683d7e7ee670d1ecdcd4dec98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 08:21:32 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 23:00:23 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 23:00:24 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 23:07:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 23:07:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 23:07:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 23:07:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 23:07:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 23:07:41 GMT
CMD ["irb"]
# Thu, 30 Nov 2017 00:00:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 30 Nov 2017 00:01:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Nov 2017 00:01:16 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 Nov 2017 00:01:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 Nov 2017 00:01:21 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 30 Nov 2017 00:01:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 30 Nov 2017 00:03:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Nov 2017 00:03:06 GMT
ENV RAILS_ENV=production
# Thu, 30 Nov 2017 00:03:06 GMT
WORKDIR /usr/src/redmine
# Thu, 30 Nov 2017 00:14:37 GMT
ENV REDMINE_VERSION=3.2.8
# Thu, 30 Nov 2017 00:14:37 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Thu, 30 Nov 2017 00:14:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 30 Nov 2017 00:24:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 30 Nov 2017 00:24:14 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 30 Nov 2017 00:24:15 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 30 Nov 2017 00:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:24:16 GMT
EXPOSE 3000/tcp
# Thu, 30 Nov 2017 00:24:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bb60b496f2609cca4ac7c59bd898d0d6d4fa6ebd75252772e5603e529613d5`  
		Last Modified: Wed, 29 Nov 2017 23:31:21 GMT  
		Size: 35.4 MB (35437009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588a4528192ac0916e6c886e02b70caa1caedba42f2df1f78a29474190d45c38`  
		Last Modified: Wed, 29 Nov 2017 23:31:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c80fcbd8adc280417b8b2fa5e5262e0dbe3a8058c8008aff1bc964d422e55b9`  
		Last Modified: Thu, 30 Nov 2017 00:27:21 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0068c7c4d98c7183a0420136e486c36dddd73d17948e929222ed86caa3943c1`  
		Last Modified: Thu, 30 Nov 2017 00:27:25 GMT  
		Size: 14.5 MB (14462619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c726a512a405288a3be536de14be43c887c3aab5962558f8ec051d970c9f779f`  
		Last Modified: Thu, 30 Nov 2017 00:27:20 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92717df2e81100a9d42c4461aa231f5e5ed0985bc84c609d84619883a38060f1`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075bdc9b979b48a71fcaf877254037dc70ac7598183e74d78dffa39909a7ca04`  
		Last Modified: Thu, 30 Nov 2017 00:27:37 GMT  
		Size: 55.8 MB (55785730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eecbd3470ca7162307e42d48c277d69f4ec36efb4c103d53680ebea5eaef6acc`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16da1cb597048489912d4f4c388c83ad385f55fb9b69eba04567480cb372395`  
		Last Modified: Thu, 30 Nov 2017 00:28:20 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c907b85fd4cac9f88a1c0d27047d2ce40a5ba832ae53a050f8f1873aa8151aa`  
		Last Modified: Thu, 30 Nov 2017 00:28:41 GMT  
		Size: 77.5 MB (77533531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98efe5aa6e3064de858d3188812f57c9ff44a0d4200df7d4024bf2f2128897e`  
		Last Modified: Thu, 30 Nov 2017 00:28:18 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:2136bb23f0587dc2257f181af5b2652525d294dc99b309a0815f0bb1d55a3df3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255500340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049ecfc842efcd3b3490a712c1339b6ab0c01ad9bab0d355b84a546279b6bf7a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 04:34:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:34:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:38:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:38:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:38:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:38:36 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:20:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:21:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:21:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:21:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:22:19 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:22:19 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:31:35 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 05:31:35 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 05:31:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:34:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:34:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:34:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:34:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:34:29 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:34:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00efa31fbb98327286c3de74249f7bf7ab95473a62e6f8f0586873941882dc4`  
		Last Modified: Wed, 29 Nov 2017 04:54:35 GMT  
		Size: 32.8 MB (32789971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8020015056d7323fc2e9ac8cd2b5a499314caba43938fce8fe896506fdf74da`  
		Last Modified: Wed, 29 Nov 2017 04:54:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569528b524a95935a9f123c15ebe9e14f0a15c829efe7b2de8f2cb24c5cabc`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66482e58af170311dfa114cb7bf30628141b65250f84f1fa2a76947ddc455222`  
		Last Modified: Wed, 29 Nov 2017 05:38:00 GMT  
		Size: 14.8 MB (14817387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8a1dc86b52251b85356e9eaef349fd2648c4eb8fd69495365e1ee003a1dad3`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea689cdecbe69943dbe797b331903ba672ee707aec95359e5bc0a0d70f1f86b4`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a49d919caeadca01b2f5dfeb5460d46e56c20843e23826ffe28efd3b834d668`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 60.1 MB (60110795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abd66ace22b267b82eed69d1a9bcad1a82dc27beed38c4a6997c9be3e4125f`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03052b4774c8f18d8e84bd7340ecc46790d679eea897bbb3e4b9e441a6ed30f6`  
		Last Modified: Wed, 29 Nov 2017 05:44:24 GMT  
		Size: 2.3 MB (2346999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41686d74e94c545b9bec1af07b6f314522cfd509cb82914d95654951d7f9ec65`  
		Last Modified: Wed, 29 Nov 2017 05:44:41 GMT  
		Size: 77.5 MB (77540337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b12fe06e96d8f3f90a7f5c05f42e8eca2dd0b1ebcbddf40b7c44a4d6da3f4a8`  
		Last Modified: Wed, 29 Nov 2017 05:44:21 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:99bfa5f4765ef3e93285cf933ddc255232d7bf635554a0b3a418bc630f44c0a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252507643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadd4e0ffb92e2282498bf7f893cf63124c8f9c3dbc03c1959063d033585f588`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 08:12:39 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 08:12:40 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 08:12:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 08:12:42 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 08:21:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 08:21:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 08:21:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 08:21:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 08:21:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 08:21:23 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 13:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 13:48:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:48:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 13:48:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 13:48:22 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 13:48:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 13:51:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:51:47 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 13:51:49 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 14:03:18 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 12 Dec 2017 14:03:20 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 12 Dec 2017 14:03:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 14:14:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:14:44 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 14:14:45 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 14:14:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 14:14:51 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 14:14:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2687145283fe9cbc3ccc35534c79d151fcadcf068055add284e14d1f8b74de75`  
		Last Modified: Tue, 12 Dec 2017 09:10:03 GMT  
		Size: 36.3 MB (36340835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d922f8a45138864979f84d6080302bd4448c816cc14afd4d3b2d42e8fa5a6`  
		Last Modified: Tue, 12 Dec 2017 09:09:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6f64e92bef67b990b923c5621dfca067c4f9ddcb32b9573ee420db8dec35c`  
		Last Modified: Tue, 12 Dec 2017 14:16:03 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb5dd3fc21f41acdf33aaf75eaf0552a9ae8c4da930b73b05ad6e2a674da845`  
		Last Modified: Tue, 12 Dec 2017 14:16:05 GMT  
		Size: 14.7 MB (14720546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb361a8bbd5ff71fdde215bded7ab39812616e465a318a6ab0a161e85c8b890`  
		Last Modified: Tue, 12 Dec 2017 14:16:01 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e79e7da0ebcf69b51daeb421422c72e012fd6a8f9aec8f1b097996a9cac6cdd`  
		Last Modified: Tue, 12 Dec 2017 14:16:00 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a3724d54c6e1e53d7b2e1765cdfc71f174b9992a74a18afe16ee655c3cb33b`  
		Last Modified: Tue, 12 Dec 2017 14:16:14 GMT  
		Size: 58.1 MB (58126841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e538baf74422a8c0d49a94490c4818b2a938924958c06ecf851cf3d2146a5c`  
		Last Modified: Tue, 12 Dec 2017 14:15:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f4947dfeb21b7548c2bd745962c23a8b27b5a8e5535e0592a162813f949e15`  
		Last Modified: Tue, 12 Dec 2017 14:16:35 GMT  
		Size: 2.3 MB (2347348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c925060a275e1dafdc3c278d41d6f1dbf45a19c6934307fc78754f4ab982a7c`  
		Last Modified: Tue, 12 Dec 2017 14:16:49 GMT  
		Size: 78.5 MB (78524199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b14a10ef2e32d87bd42e99548be540d51fa06ecf7845727452fd8a8d352e49`  
		Last Modified: Tue, 12 Dec 2017 14:16:34 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:1ebe61e156d1c4e487becce430ffe5552eed7b0195eafd8f32c8a207e5460118
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259098016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ba5558d2ecc3540f4f39a1b3f7289a5b2f37bb27d07d6d77bfe1e910bf0454`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 10:33:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:35:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:35:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:35:45 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:35:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:35:45 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:35:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577331182a33b55ded369cd171053fb8cc16581c9aca29b6b3b0d0612849973e`  
		Last Modified: Wed, 29 Nov 2017 10:37:12 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e3e3b2f2a888aaf2fa791d7df219b6625a4e900f6a89e2b373f840e21aeb6e`  
		Last Modified: Wed, 29 Nov 2017 10:37:23 GMT  
		Size: 80.6 MB (80635377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4a8aad7e42b845e507039f6c4e485a258111be94f68b2a1fd5a36dbc951ca9`  
		Last Modified: Wed, 29 Nov 2017 10:37:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8`

```console
$ docker pull redmine@sha256:ba1b54883525b9f3c508e9b4ac4ee392ce4702ae27ed0c15e41cc32688537b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.2.8` - linux; amd64

```console
$ docker pull redmine@sha256:81dc0b67f7a6680d5d6d5d4a0a36863839810bf1bbf52d82920ae1216e07d581
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253276085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c743b41af37b82dff5dd7f20edf578afd53517cdcf88c564df7e7e2d4937bcc6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:36:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:40:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:40:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:40:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:40:15 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:18:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:18:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:19:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:19:01 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:19:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:19:39 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:19:40 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:29:35 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 12 Dec 2017 11:29:35 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 12 Dec 2017 11:29:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:31:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:38:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:38:15 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:38:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:38:16 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:38:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cdaf9dadc7bea51cac0d763e29019c4b1dc84a5da25b97902e735bbeb7f773`  
		Last Modified: Tue, 12 Dec 2017 07:45:42 GMT  
		Size: 35.3 MB (35338188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9c55fe09a9319ff4c6cb3a5c0913763148a04341cf4896fbb0c373c5ebe7a6`  
		Last Modified: Tue, 12 Dec 2017 07:45:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e460c7fa1cf19fa86bf8dd49fc032e71f3b031e16ad1129fd8aaee0cbdb0d4`  
		Last Modified: Tue, 12 Dec 2017 11:47:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f3e8028a6117959ad5da4d4154cfc019cbd5375a4ee91c3eb7784c3a228ba2`  
		Last Modified: Tue, 12 Dec 2017 11:47:12 GMT  
		Size: 14.7 MB (14650247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1f86600dcae56854c0141ef13be0333748d913be81744dbd20d91438e040a1`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0255eb0afc74a7cb4eae4ecbd354292f22e6dd2287b81b2da00e0ac2d828d0`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac602a5a2d84c47ca2992a013231b7e0a565bbca8a3fcfa577a89bad113319b1`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 59.3 MB (59266988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af30e8ebf5e3bc96d8cd33e319b930f68ba80a56d9affc4c6d98b19cc4f545b`  
		Last Modified: Tue, 12 Dec 2017 11:47:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722911050d3e765cf9cd9ff199848892429eb024132447a90b2e7a253faf06a4`  
		Last Modified: Tue, 12 Dec 2017 11:48:19 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7488f6ac9abfa5812994044d1b7ebefb7495c3e30c6757bd0020fb44715e3caf`  
		Last Modified: Tue, 12 Dec 2017 11:48:33 GMT  
		Size: 78.4 MB (78375659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106d12df1272de165130d6ff70fa03d3bff36ee80425a4e7e8c7018805e74a5e`  
		Last Modified: Tue, 12 Dec 2017 11:48:17 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:57b7f21efe56ce793d162d649cc3878287d13a5ca1ed1c1c00c071f21e253dcc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245494007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fb052b85d0a5c3d7660ca5765c6e6d0b4a25c31d3ec8bcb9f6d94c0375852c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 03:05:49 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 03:05:49 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 03:10:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 03:10:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 03:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 03:10:11 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:42:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:42:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:42:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:42:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:42:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:43:42 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:43:42 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:48:18 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 03:48:18 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 03:48:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:52:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:52:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:52:46 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:52:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:52:46 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:52:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f4c5069a15a9169e6b75f04b7fe4b119fc3c9f81fc886a4c53a2183257eade`  
		Last Modified: Wed, 29 Nov 2017 03:19:21 GMT  
		Size: 34.2 MB (34234357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ec099af78a26d93cdd7007035051c17691e1b9faab1ffbfe78399c2eb75602`  
		Last Modified: Wed, 29 Nov 2017 03:19:08 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a85becc36eb60546600e29f2c0b5d082e240d7cd9e1e743e04baa98e4a351fb`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14992a532c63f7fda479776fd3c19ce325883c773d15f6a37caea8e4011a7211`  
		Last Modified: Wed, 29 Nov 2017 03:54:06 GMT  
		Size: 14.3 MB (14347386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf47abf880eeb5ba1e91ed40769eab5e35542e3bb5591ee97eb5c9a02d5b7fc`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96535285c8491db58d6a752a8e5c38440d2ff27e4c62f30698ce395f40776cf`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8d1f79799b47ea0e62cc6164bc36b168ac44b8a012982c71e48126a2f1534c`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 56.6 MB (56571372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902acc612035f56eb2529117e2118c5746163dc645e2631c6c21d08b5849f0b7`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d28c38c2fe5f8f7053349a275c5a25c7f4a7d03ac8561d8e0e571824334be7`  
		Last Modified: Wed, 29 Nov 2017 03:54:39 GMT  
		Size: 2.3 MB (2347347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ffdeef11a8f35dbcc91dbe757a93bd011def053cd644c8c07fb59cafcc4f25`  
		Last Modified: Wed, 29 Nov 2017 03:54:57 GMT  
		Size: 77.5 MB (77497998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ce12780cee07459117932a52dd441616dc2ee240d863c2a48a05e80ea174de`  
		Last Modified: Wed, 29 Nov 2017 03:54:38 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v7

```console
$ docker pull redmine@sha256:f9ad9993bac5ccf74f724c3c23ef26741269e752077b0f4c8c28be3eff61a5bc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239865066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3decaf69dfbc1fa6965c983ce15d4244dd246dcc1e6fdbc89bdfc96aeff2db5d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 17:33:43 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 17:33:43 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 17:38:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 17:38:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 17:38:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 17:38:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 17:38:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 17:38:07 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 18:39:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 18:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:39:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:39:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:40:07 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 18:40:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 18:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:41:14 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 18:41:14 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 18:45:45 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 12 Dec 2017 18:45:46 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 12 Dec 2017 18:45:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 18:50:39 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 18:50:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 18:50:51 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 18:51:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:51:02 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 18:51:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed180ea6c6ca2dd6c06dd917a0c6a4589fc07dfd801ea037f14a534df243b5b7`  
		Last Modified: Tue, 12 Dec 2017 17:52:37 GMT  
		Size: 34.0 MB (34035889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178619499ac36ee2b841d9f2d547575afcf9ba04947053c6387fc4b2597b3f6d`  
		Last Modified: Tue, 12 Dec 2017 17:52:21 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a6f20e547916f99d774b0d5f12b9a1e43784d3ed4692a6d405743aa0d9bf1`  
		Last Modified: Tue, 12 Dec 2017 18:52:36 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d39b60c4b94c3ea5c0b67f8fbfc4226d9b43b8cb1c6eacf3adbf1b88747534`  
		Last Modified: Tue, 12 Dec 2017 18:52:39 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5760d573a8863bcd3264f4d7685adf1a798056881c264a690b03695e0fe86e`  
		Last Modified: Tue, 12 Dec 2017 18:52:35 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206c1c1d00185a0eede4fe411ff8bae0003c5989a4256794a9d4915d6c6b38be`  
		Last Modified: Tue, 12 Dec 2017 18:52:34 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1b2f4ad021c3851f3a150987628a0d58b52f995c46fd4eaed0e17ccdd5b2ce`  
		Last Modified: Tue, 12 Dec 2017 18:52:50 GMT  
		Size: 54.3 MB (54344201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eb37476a20a0a08eae63732eb963203a0a38800d5268e9b60f7573cd8ec8fc`  
		Last Modified: Tue, 12 Dec 2017 18:52:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e99daececa8c8badfba40856bf494865b1af525d7a45bd0b6d71bf3a3aee39`  
		Last Modified: Tue, 12 Dec 2017 18:53:31 GMT  
		Size: 2.3 MB (2347344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd7804f7963ad9f2fd237167734afe2dafff49dc5abb12f1b2f4dd2c5c8ee9`  
		Last Modified: Tue, 12 Dec 2017 18:53:49 GMT  
		Size: 77.0 MB (77040324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5139ee94a038d8af26028554cf614f417939232d66a1c469bc71a59884e55e`  
		Last Modified: Tue, 12 Dec 2017 18:53:29 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:377972ffa184147a602b6844229593a46e47e1973279e4fde9d58cedff793cd9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245309217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd5df010a28d44e915c02b0466ca475c53c8b9683d7e7ee670d1ecdcd4dec98`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 08:21:32 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 23:00:23 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 23:00:24 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 23:07:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 23:07:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 23:07:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 23:07:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 23:07:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 23:07:41 GMT
CMD ["irb"]
# Thu, 30 Nov 2017 00:00:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 30 Nov 2017 00:01:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Nov 2017 00:01:16 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 Nov 2017 00:01:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 Nov 2017 00:01:21 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 30 Nov 2017 00:01:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 30 Nov 2017 00:03:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Nov 2017 00:03:06 GMT
ENV RAILS_ENV=production
# Thu, 30 Nov 2017 00:03:06 GMT
WORKDIR /usr/src/redmine
# Thu, 30 Nov 2017 00:14:37 GMT
ENV REDMINE_VERSION=3.2.8
# Thu, 30 Nov 2017 00:14:37 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Thu, 30 Nov 2017 00:14:43 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 30 Nov 2017 00:24:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 30 Nov 2017 00:24:14 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 30 Nov 2017 00:24:15 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 30 Nov 2017 00:24:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:24:16 GMT
EXPOSE 3000/tcp
# Thu, 30 Nov 2017 00:24:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bb60b496f2609cca4ac7c59bd898d0d6d4fa6ebd75252772e5603e529613d5`  
		Last Modified: Wed, 29 Nov 2017 23:31:21 GMT  
		Size: 35.4 MB (35437009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588a4528192ac0916e6c886e02b70caa1caedba42f2df1f78a29474190d45c38`  
		Last Modified: Wed, 29 Nov 2017 23:31:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c80fcbd8adc280417b8b2fa5e5262e0dbe3a8058c8008aff1bc964d422e55b9`  
		Last Modified: Thu, 30 Nov 2017 00:27:21 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0068c7c4d98c7183a0420136e486c36dddd73d17948e929222ed86caa3943c1`  
		Last Modified: Thu, 30 Nov 2017 00:27:25 GMT  
		Size: 14.5 MB (14462619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c726a512a405288a3be536de14be43c887c3aab5962558f8ec051d970c9f779f`  
		Last Modified: Thu, 30 Nov 2017 00:27:20 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92717df2e81100a9d42c4461aa231f5e5ed0985bc84c609d84619883a38060f1`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075bdc9b979b48a71fcaf877254037dc70ac7598183e74d78dffa39909a7ca04`  
		Last Modified: Thu, 30 Nov 2017 00:27:37 GMT  
		Size: 55.8 MB (55785730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eecbd3470ca7162307e42d48c277d69f4ec36efb4c103d53680ebea5eaef6acc`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a16da1cb597048489912d4f4c388c83ad385f55fb9b69eba04567480cb372395`  
		Last Modified: Thu, 30 Nov 2017 00:28:20 GMT  
		Size: 2.3 MB (2347000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c907b85fd4cac9f88a1c0d27047d2ce40a5ba832ae53a050f8f1873aa8151aa`  
		Last Modified: Thu, 30 Nov 2017 00:28:41 GMT  
		Size: 77.5 MB (77533531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98efe5aa6e3064de858d3188812f57c9ff44a0d4200df7d4024bf2f2128897e`  
		Last Modified: Thu, 30 Nov 2017 00:28:18 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; 386

```console
$ docker pull redmine@sha256:2136bb23f0587dc2257f181af5b2652525d294dc99b309a0815f0bb1d55a3df3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255500340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049ecfc842efcd3b3490a712c1339b6ab0c01ad9bab0d355b84a546279b6bf7a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 04:34:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:34:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:38:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:38:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:38:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:38:36 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:20:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:21:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:21:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:21:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:22:19 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:22:19 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:31:35 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 05:31:35 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 05:31:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:34:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:34:29 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:34:29 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:34:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:34:29 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:34:30 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00efa31fbb98327286c3de74249f7bf7ab95473a62e6f8f0586873941882dc4`  
		Last Modified: Wed, 29 Nov 2017 04:54:35 GMT  
		Size: 32.8 MB (32789971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8020015056d7323fc2e9ac8cd2b5a499314caba43938fce8fe896506fdf74da`  
		Last Modified: Wed, 29 Nov 2017 04:54:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569528b524a95935a9f123c15ebe9e14f0a15c829efe7b2de8f2cb24c5cabc`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66482e58af170311dfa114cb7bf30628141b65250f84f1fa2a76947ddc455222`  
		Last Modified: Wed, 29 Nov 2017 05:38:00 GMT  
		Size: 14.8 MB (14817387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8a1dc86b52251b85356e9eaef349fd2648c4eb8fd69495365e1ee003a1dad3`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea689cdecbe69943dbe797b331903ba672ee707aec95359e5bc0a0d70f1f86b4`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a49d919caeadca01b2f5dfeb5460d46e56c20843e23826ffe28efd3b834d668`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 60.1 MB (60110795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abd66ace22b267b82eed69d1a9bcad1a82dc27beed38c4a6997c9be3e4125f`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03052b4774c8f18d8e84bd7340ecc46790d679eea897bbb3e4b9e441a6ed30f6`  
		Last Modified: Wed, 29 Nov 2017 05:44:24 GMT  
		Size: 2.3 MB (2346999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41686d74e94c545b9bec1af07b6f314522cfd509cb82914d95654951d7f9ec65`  
		Last Modified: Wed, 29 Nov 2017 05:44:41 GMT  
		Size: 77.5 MB (77540337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b12fe06e96d8f3f90a7f5c05f42e8eca2dd0b1ebcbddf40b7c44a4d6da3f4a8`  
		Last Modified: Wed, 29 Nov 2017 05:44:21 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:99bfa5f4765ef3e93285cf933ddc255232d7bf635554a0b3a418bc630f44c0a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252507643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadd4e0ffb92e2282498bf7f893cf63124c8f9c3dbc03c1959063d033585f588`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 08:12:39 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 08:12:40 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 08:12:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 08:12:42 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 08:21:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 08:21:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 08:21:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 08:21:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 08:21:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 08:21:23 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 13:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 13:48:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:48:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 13:48:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 13:48:22 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 13:48:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 13:51:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:51:47 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 13:51:49 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 14:03:18 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 12 Dec 2017 14:03:20 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 12 Dec 2017 14:03:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 14:14:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:14:44 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 14:14:45 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 14:14:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 14:14:51 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 14:14:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2687145283fe9cbc3ccc35534c79d151fcadcf068055add284e14d1f8b74de75`  
		Last Modified: Tue, 12 Dec 2017 09:10:03 GMT  
		Size: 36.3 MB (36340835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d922f8a45138864979f84d6080302bd4448c816cc14afd4d3b2d42e8fa5a6`  
		Last Modified: Tue, 12 Dec 2017 09:09:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6f64e92bef67b990b923c5621dfca067c4f9ddcb32b9573ee420db8dec35c`  
		Last Modified: Tue, 12 Dec 2017 14:16:03 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb5dd3fc21f41acdf33aaf75eaf0552a9ae8c4da930b73b05ad6e2a674da845`  
		Last Modified: Tue, 12 Dec 2017 14:16:05 GMT  
		Size: 14.7 MB (14720546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb361a8bbd5ff71fdde215bded7ab39812616e465a318a6ab0a161e85c8b890`  
		Last Modified: Tue, 12 Dec 2017 14:16:01 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e79e7da0ebcf69b51daeb421422c72e012fd6a8f9aec8f1b097996a9cac6cdd`  
		Last Modified: Tue, 12 Dec 2017 14:16:00 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a3724d54c6e1e53d7b2e1765cdfc71f174b9992a74a18afe16ee655c3cb33b`  
		Last Modified: Tue, 12 Dec 2017 14:16:14 GMT  
		Size: 58.1 MB (58126841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e538baf74422a8c0d49a94490c4818b2a938924958c06ecf851cf3d2146a5c`  
		Last Modified: Tue, 12 Dec 2017 14:15:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f4947dfeb21b7548c2bd745962c23a8b27b5a8e5535e0592a162813f949e15`  
		Last Modified: Tue, 12 Dec 2017 14:16:35 GMT  
		Size: 2.3 MB (2347348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c925060a275e1dafdc3c278d41d6f1dbf45a19c6934307fc78754f4ab982a7c`  
		Last Modified: Tue, 12 Dec 2017 14:16:49 GMT  
		Size: 78.5 MB (78524199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b14a10ef2e32d87bd42e99548be540d51fa06ecf7845727452fd8a8d352e49`  
		Last Modified: Tue, 12 Dec 2017 14:16:34 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; s390x

```console
$ docker pull redmine@sha256:1ebe61e156d1c4e487becce430ffe5552eed7b0195eafd8f32c8a207e5460118
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259098016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ba5558d2ecc3540f4f39a1b3f7289a5b2f37bb27d07d6d77bfe1e910bf0454`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 29 Nov 2017 10:33:29 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 29 Nov 2017 10:33:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:35:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:35:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:35:45 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:35:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:35:45 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:35:46 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577331182a33b55ded369cd171053fb8cc16581c9aca29b6b3b0d0612849973e`  
		Last Modified: Wed, 29 Nov 2017 10:37:12 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e3e3b2f2a888aaf2fa791d7df219b6625a4e900f6a89e2b373f840e21aeb6e`  
		Last Modified: Wed, 29 Nov 2017 10:37:23 GMT  
		Size: 80.6 MB (80635377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4a8aad7e42b845e507039f6c4e485a258111be94f68b2a1fd5a36dbc951ca9`  
		Last Modified: Wed, 29 Nov 2017 10:37:11 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.8-passenger`

```console
$ docker pull redmine@sha256:8003a10b0ad65a86fb1cb9b90b1d0886c4cf6a7f67c41a758951293a97fd1591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:0abf8621079a80b0144b21fa8adfbefea3e4d613a9241077b9ee7d4ff8f898e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270113229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b98da369f6dcae7c237f777aa25a7e673d69d4981f2622ab341a419fb94559`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:36:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:40:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:40:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:40:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:40:15 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:18:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:18:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:19:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:19:01 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:19:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:19:39 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:19:40 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:29:35 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 12 Dec 2017 11:29:35 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 12 Dec 2017 11:29:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:31:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:38:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:38:15 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:38:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:38:16 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:38:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Dec 2017 11:38:40 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 12 Dec 2017 11:38:56 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:38:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Dec 2017 11:38:57 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cdaf9dadc7bea51cac0d763e29019c4b1dc84a5da25b97902e735bbeb7f773`  
		Last Modified: Tue, 12 Dec 2017 07:45:42 GMT  
		Size: 35.3 MB (35338188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9c55fe09a9319ff4c6cb3a5c0913763148a04341cf4896fbb0c373c5ebe7a6`  
		Last Modified: Tue, 12 Dec 2017 07:45:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e460c7fa1cf19fa86bf8dd49fc032e71f3b031e16ad1129fd8aaee0cbdb0d4`  
		Last Modified: Tue, 12 Dec 2017 11:47:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f3e8028a6117959ad5da4d4154cfc019cbd5375a4ee91c3eb7784c3a228ba2`  
		Last Modified: Tue, 12 Dec 2017 11:47:12 GMT  
		Size: 14.7 MB (14650247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1f86600dcae56854c0141ef13be0333748d913be81744dbd20d91438e040a1`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0255eb0afc74a7cb4eae4ecbd354292f22e6dd2287b81b2da00e0ac2d828d0`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac602a5a2d84c47ca2992a013231b7e0a565bbca8a3fcfa577a89bad113319b1`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 59.3 MB (59266988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af30e8ebf5e3bc96d8cd33e319b930f68ba80a56d9affc4c6d98b19cc4f545b`  
		Last Modified: Tue, 12 Dec 2017 11:47:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722911050d3e765cf9cd9ff199848892429eb024132447a90b2e7a253faf06a4`  
		Last Modified: Tue, 12 Dec 2017 11:48:19 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7488f6ac9abfa5812994044d1b7ebefb7495c3e30c6757bd0020fb44715e3caf`  
		Last Modified: Tue, 12 Dec 2017 11:48:33 GMT  
		Size: 78.4 MB (78375659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106d12df1272de165130d6ff70fa03d3bff36ee80425a4e7e8c7018805e74a5e`  
		Last Modified: Tue, 12 Dec 2017 11:48:17 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7339990854d3e8aa71148000fce921553dbcec011dd4acbd34e80341ce6ccce`  
		Last Modified: Tue, 12 Dec 2017 11:49:03 GMT  
		Size: 12.8 MB (12760227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1db5b91ae7a346f550d3c6d5e0d8bb527b4f954969346d0bde4159a941c73b9`  
		Last Modified: Tue, 12 Dec 2017 11:48:57 GMT  
		Size: 4.1 MB (4076917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:8003a10b0ad65a86fb1cb9b90b1d0886c4cf6a7f67c41a758951293a97fd1591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:0abf8621079a80b0144b21fa8adfbefea3e4d613a9241077b9ee7d4ff8f898e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.1 MB (270113229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b98da369f6dcae7c237f777aa25a7e673d69d4981f2622ab341a419fb94559`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:36:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:40:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:40:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:40:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:40:15 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:18:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:18:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:19:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:19:01 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:19:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:19:39 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:19:40 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:29:35 GMT
ENV REDMINE_VERSION=3.2.8
# Tue, 12 Dec 2017 11:29:35 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Tue, 12 Dec 2017 11:29:39 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:31:56 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:38:15 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:38:15 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:38:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:38:16 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:38:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Dec 2017 11:38:40 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 12 Dec 2017 11:38:56 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:38:57 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Dec 2017 11:38:57 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cdaf9dadc7bea51cac0d763e29019c4b1dc84a5da25b97902e735bbeb7f773`  
		Last Modified: Tue, 12 Dec 2017 07:45:42 GMT  
		Size: 35.3 MB (35338188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9c55fe09a9319ff4c6cb3a5c0913763148a04341cf4896fbb0c373c5ebe7a6`  
		Last Modified: Tue, 12 Dec 2017 07:45:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e460c7fa1cf19fa86bf8dd49fc032e71f3b031e16ad1129fd8aaee0cbdb0d4`  
		Last Modified: Tue, 12 Dec 2017 11:47:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f3e8028a6117959ad5da4d4154cfc019cbd5375a4ee91c3eb7784c3a228ba2`  
		Last Modified: Tue, 12 Dec 2017 11:47:12 GMT  
		Size: 14.7 MB (14650247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1f86600dcae56854c0141ef13be0333748d913be81744dbd20d91438e040a1`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0255eb0afc74a7cb4eae4ecbd354292f22e6dd2287b81b2da00e0ac2d828d0`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac602a5a2d84c47ca2992a013231b7e0a565bbca8a3fcfa577a89bad113319b1`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 59.3 MB (59266988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af30e8ebf5e3bc96d8cd33e319b930f68ba80a56d9affc4c6d98b19cc4f545b`  
		Last Modified: Tue, 12 Dec 2017 11:47:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722911050d3e765cf9cd9ff199848892429eb024132447a90b2e7a253faf06a4`  
		Last Modified: Tue, 12 Dec 2017 11:48:19 GMT  
		Size: 2.3 MB (2347001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7488f6ac9abfa5812994044d1b7ebefb7495c3e30c6757bd0020fb44715e3caf`  
		Last Modified: Tue, 12 Dec 2017 11:48:33 GMT  
		Size: 78.4 MB (78375659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106d12df1272de165130d6ff70fa03d3bff36ee80425a4e7e8c7018805e74a5e`  
		Last Modified: Tue, 12 Dec 2017 11:48:17 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7339990854d3e8aa71148000fce921553dbcec011dd4acbd34e80341ce6ccce`  
		Last Modified: Tue, 12 Dec 2017 11:49:03 GMT  
		Size: 12.8 MB (12760227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1db5b91ae7a346f550d3c6d5e0d8bb527b4f954969346d0bde4159a941c73b9`  
		Last Modified: Tue, 12 Dec 2017 11:48:57 GMT  
		Size: 4.1 MB (4076917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:16f88ee894e2126089d93f0bdf36495e42523f005d2bf7c99f59bad7731da6d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3` - linux; amd64

```console
$ docker pull redmine@sha256:7aa54d401ecb40e9ff8907e46657cc64b562446633c64bb2c59412a5d094676c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253319877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a502fbada7bda28c9d507202943c3a7d6468f0d511768ede29892cdd83094ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:36:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:40:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:40:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:40:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:40:15 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:18:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:18:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:19:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:19:01 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:19:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:19:39 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:19:40 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:19:40 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 12 Dec 2017 11:19:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 12 Dec 2017 11:19:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:22:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:28:35 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:28:36 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:28:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:28:36 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:28:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cdaf9dadc7bea51cac0d763e29019c4b1dc84a5da25b97902e735bbeb7f773`  
		Last Modified: Tue, 12 Dec 2017 07:45:42 GMT  
		Size: 35.3 MB (35338188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9c55fe09a9319ff4c6cb3a5c0913763148a04341cf4896fbb0c373c5ebe7a6`  
		Last Modified: Tue, 12 Dec 2017 07:45:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e460c7fa1cf19fa86bf8dd49fc032e71f3b031e16ad1129fd8aaee0cbdb0d4`  
		Last Modified: Tue, 12 Dec 2017 11:47:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f3e8028a6117959ad5da4d4154cfc019cbd5375a4ee91c3eb7784c3a228ba2`  
		Last Modified: Tue, 12 Dec 2017 11:47:12 GMT  
		Size: 14.7 MB (14650247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1f86600dcae56854c0141ef13be0333748d913be81744dbd20d91438e040a1`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0255eb0afc74a7cb4eae4ecbd354292f22e6dd2287b81b2da00e0ac2d828d0`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac602a5a2d84c47ca2992a013231b7e0a565bbca8a3fcfa577a89bad113319b1`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 59.3 MB (59266988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af30e8ebf5e3bc96d8cd33e319b930f68ba80a56d9affc4c6d98b19cc4f545b`  
		Last Modified: Tue, 12 Dec 2017 11:47:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b51f9392c9e1da7f827d9e6c15ef0a0cee28f8b8a45aa575e462a51bb1009b`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e604cf92eb9a1cd1cbfce7d4b42028cf34436c31f4e2ecfdaae24748ee31092`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 78.4 MB (78375712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b88a5d466077f3ae8afed44056d8aec259078dff11e89a39d30394b7f6c9f00`  
		Last Modified: Tue, 12 Dec 2017 11:47:03 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:73efb7f0cf1e308881792777afff603c458b978d90a8d8b41f2fee260b255c9e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245537709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3945fe3903c95d1194d59200df28bd6608dd0e985898a4470c73b09ad6ade8a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 03:05:49 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 03:05:49 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 03:10:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 03:10:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 03:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 03:10:11 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:42:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:42:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:42:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:42:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:42:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:43:42 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:43:42 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:43:42 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:43:42 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:43:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:48:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:48:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:48:06 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:48:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:48:06 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:48:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f4c5069a15a9169e6b75f04b7fe4b119fc3c9f81fc886a4c53a2183257eade`  
		Last Modified: Wed, 29 Nov 2017 03:19:21 GMT  
		Size: 34.2 MB (34234357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ec099af78a26d93cdd7007035051c17691e1b9faab1ffbfe78399c2eb75602`  
		Last Modified: Wed, 29 Nov 2017 03:19:08 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a85becc36eb60546600e29f2c0b5d082e240d7cd9e1e743e04baa98e4a351fb`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14992a532c63f7fda479776fd3c19ce325883c773d15f6a37caea8e4011a7211`  
		Last Modified: Wed, 29 Nov 2017 03:54:06 GMT  
		Size: 14.3 MB (14347386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf47abf880eeb5ba1e91ed40769eab5e35542e3bb5591ee97eb5c9a02d5b7fc`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96535285c8491db58d6a752a8e5c38440d2ff27e4c62f30698ce395f40776cf`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8d1f79799b47ea0e62cc6164bc36b168ac44b8a012982c71e48126a2f1534c`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 56.6 MB (56571372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902acc612035f56eb2529117e2118c5746163dc645e2631c6c21d08b5849f0b7`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d18a08e7d2add8c1daa4c8bce6d6be6294c132b0562c4453679972d3b150804`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.4 MB (2390999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c61859fb3b3274d7ca2108a32bcbbd92c47c986d3eb438389b6917a6dadf77`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 77.5 MB (77498048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6212e630dcc2bac4abbfd33b5fa0a4876333e5e31a3fdd4e48a8d3aa44e15487`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:5f55b750d480b9d6116b9a7e334bfa3f997e3a51a801bf29730bade42cf581c3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239908569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f858f7bc3572a210cfe47307e20caf38e0e61cba09536a7d005d8f18800333`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 17:33:43 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 17:33:43 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 17:38:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 17:38:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 17:38:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 17:38:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 17:38:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 17:38:07 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 18:39:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 18:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:39:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:39:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:40:07 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 18:40:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 18:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:41:14 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 18:41:14 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 18:41:15 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 12 Dec 2017 18:41:15 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 12 Dec 2017 18:41:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 18:45:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 18:45:26 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 18:45:27 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 18:45:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:45:27 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 18:45:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed180ea6c6ca2dd6c06dd917a0c6a4589fc07dfd801ea037f14a534df243b5b7`  
		Last Modified: Tue, 12 Dec 2017 17:52:37 GMT  
		Size: 34.0 MB (34035889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178619499ac36ee2b841d9f2d547575afcf9ba04947053c6387fc4b2597b3f6d`  
		Last Modified: Tue, 12 Dec 2017 17:52:21 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a6f20e547916f99d774b0d5f12b9a1e43784d3ed4692a6d405743aa0d9bf1`  
		Last Modified: Tue, 12 Dec 2017 18:52:36 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d39b60c4b94c3ea5c0b67f8fbfc4226d9b43b8cb1c6eacf3adbf1b88747534`  
		Last Modified: Tue, 12 Dec 2017 18:52:39 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5760d573a8863bcd3264f4d7685adf1a798056881c264a690b03695e0fe86e`  
		Last Modified: Tue, 12 Dec 2017 18:52:35 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206c1c1d00185a0eede4fe411ff8bae0003c5989a4256794a9d4915d6c6b38be`  
		Last Modified: Tue, 12 Dec 2017 18:52:34 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1b2f4ad021c3851f3a150987628a0d58b52f995c46fd4eaed0e17ccdd5b2ce`  
		Last Modified: Tue, 12 Dec 2017 18:52:50 GMT  
		Size: 54.3 MB (54344201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eb37476a20a0a08eae63732eb963203a0a38800d5268e9b60f7573cd8ec8fc`  
		Last Modified: Tue, 12 Dec 2017 18:52:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e9acf36eabef0777bd09079ae03f4a7050774792f91fabd16c89fef80653f2`  
		Last Modified: Tue, 12 Dec 2017 18:52:34 GMT  
		Size: 2.4 MB (2391003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b8b0cf79751b1daad1af6a76e1bc90a96496b52003e947530b3e1494dd72a6`  
		Last Modified: Tue, 12 Dec 2017 18:52:52 GMT  
		Size: 77.0 MB (77040168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93268d015cd85155d819d6cb1584d72a2b74c8f1c1d79320696c7a8ca896e258`  
		Last Modified: Tue, 12 Dec 2017 18:52:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:f300056537f56d6528600cbeaf0bfe5bea4aad967c2398baca5490dd1b070b31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245352865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b07c67e60e9759c45b98a8a58efd26133948893c7f974746b265580765d3826`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 08:21:32 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 23:00:23 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 23:00:24 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 23:07:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 23:07:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 23:07:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 23:07:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 23:07:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 23:07:41 GMT
CMD ["irb"]
# Thu, 30 Nov 2017 00:00:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 30 Nov 2017 00:01:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Nov 2017 00:01:16 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 Nov 2017 00:01:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 Nov 2017 00:01:21 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 30 Nov 2017 00:01:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 30 Nov 2017 00:03:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Nov 2017 00:03:06 GMT
ENV RAILS_ENV=production
# Thu, 30 Nov 2017 00:03:06 GMT
WORKDIR /usr/src/redmine
# Thu, 30 Nov 2017 00:03:07 GMT
ENV REDMINE_VERSION=3.3.5
# Thu, 30 Nov 2017 00:03:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Thu, 30 Nov 2017 00:03:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 30 Nov 2017 00:14:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 30 Nov 2017 00:14:07 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 30 Nov 2017 00:14:08 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 30 Nov 2017 00:14:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:14:09 GMT
EXPOSE 3000/tcp
# Thu, 30 Nov 2017 00:14:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bb60b496f2609cca4ac7c59bd898d0d6d4fa6ebd75252772e5603e529613d5`  
		Last Modified: Wed, 29 Nov 2017 23:31:21 GMT  
		Size: 35.4 MB (35437009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588a4528192ac0916e6c886e02b70caa1caedba42f2df1f78a29474190d45c38`  
		Last Modified: Wed, 29 Nov 2017 23:31:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c80fcbd8adc280417b8b2fa5e5262e0dbe3a8058c8008aff1bc964d422e55b9`  
		Last Modified: Thu, 30 Nov 2017 00:27:21 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0068c7c4d98c7183a0420136e486c36dddd73d17948e929222ed86caa3943c1`  
		Last Modified: Thu, 30 Nov 2017 00:27:25 GMT  
		Size: 14.5 MB (14462619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c726a512a405288a3be536de14be43c887c3aab5962558f8ec051d970c9f779f`  
		Last Modified: Thu, 30 Nov 2017 00:27:20 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92717df2e81100a9d42c4461aa231f5e5ed0985bc84c609d84619883a38060f1`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075bdc9b979b48a71fcaf877254037dc70ac7598183e74d78dffa39909a7ca04`  
		Last Modified: Thu, 30 Nov 2017 00:27:37 GMT  
		Size: 55.8 MB (55785730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eecbd3470ca7162307e42d48c277d69f4ec36efb4c103d53680ebea5eaef6acc`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4c2f70272250a265e0d0bfaf5f85c05855c012341eca16f5a4f0184e3efd4a`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 2.4 MB (2390734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e82f25f54c98efb2690d5dc9aec0182ba164dc6faf1ffc30f49b35c3a09c84`  
		Last Modified: Thu, 30 Nov 2017 00:27:41 GMT  
		Size: 77.5 MB (77533445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99de3895a50ccb13b1865421a87643dcc1c41c6bb0d350d3d476bf02128520f`  
		Last Modified: Thu, 30 Nov 2017 00:27:16 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:de97d4a8e7040a5d40b68915ddde65acd932a4c667d7e78a018f294212126041
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255543656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290a89eabeb350c0df55c8d9efe3051d52dae1984498a98108159de721746d49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 04:34:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:34:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:38:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:38:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:38:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:38:36 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:20:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:21:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:21:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:21:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:22:19 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:22:19 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:22:19 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 05:22:20 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 05:22:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:25:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:25:35 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:25:36 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:25:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:25:36 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:25:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00efa31fbb98327286c3de74249f7bf7ab95473a62e6f8f0586873941882dc4`  
		Last Modified: Wed, 29 Nov 2017 04:54:35 GMT  
		Size: 32.8 MB (32789971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8020015056d7323fc2e9ac8cd2b5a499314caba43938fce8fe896506fdf74da`  
		Last Modified: Wed, 29 Nov 2017 04:54:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569528b524a95935a9f123c15ebe9e14f0a15c829efe7b2de8f2cb24c5cabc`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66482e58af170311dfa114cb7bf30628141b65250f84f1fa2a76947ddc455222`  
		Last Modified: Wed, 29 Nov 2017 05:38:00 GMT  
		Size: 14.8 MB (14817387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8a1dc86b52251b85356e9eaef349fd2648c4eb8fd69495365e1ee003a1dad3`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea689cdecbe69943dbe797b331903ba672ee707aec95359e5bc0a0d70f1f86b4`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a49d919caeadca01b2f5dfeb5460d46e56c20843e23826ffe28efd3b834d668`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 60.1 MB (60110795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abd66ace22b267b82eed69d1a9bcad1a82dc27beed38c4a6997c9be3e4125f`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52a2096cc6565e48789c1d9db7f1193d3c28b834fd3c93d9fe84ea35d6563c5`  
		Last Modified: Wed, 29 Nov 2017 05:38:01 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986163209863f9d9f8f67445905a0c9fc143abf29a2a50012e192bf7b2a05039`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 77.5 MB (77539912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391e4dbc387e5f833a088d95379753360a58dcbbb676e20457d27b24afc59732`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:cfb72e82c6e9e2d7edb91f79f99aff3ddb8158d3f3e9fa422eaaf2711ba2bb0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252550957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece4d160a8c029c118629fdf7d938e2ba05258810c662feb58d3b5f349311ff9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 08:12:39 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 08:12:40 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 08:12:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 08:12:42 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 08:21:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 08:21:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 08:21:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 08:21:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 08:21:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 08:21:23 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 13:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 13:48:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:48:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 13:48:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 13:48:22 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 13:48:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 13:51:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:51:47 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 13:51:49 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 13:51:49 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 12 Dec 2017 13:51:51 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 12 Dec 2017 13:52:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 14:02:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:02:51 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 14:02:52 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 14:02:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 14:02:59 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 14:03:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2687145283fe9cbc3ccc35534c79d151fcadcf068055add284e14d1f8b74de75`  
		Last Modified: Tue, 12 Dec 2017 09:10:03 GMT  
		Size: 36.3 MB (36340835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d922f8a45138864979f84d6080302bd4448c816cc14afd4d3b2d42e8fa5a6`  
		Last Modified: Tue, 12 Dec 2017 09:09:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6f64e92bef67b990b923c5621dfca067c4f9ddcb32b9573ee420db8dec35c`  
		Last Modified: Tue, 12 Dec 2017 14:16:03 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb5dd3fc21f41acdf33aaf75eaf0552a9ae8c4da930b73b05ad6e2a674da845`  
		Last Modified: Tue, 12 Dec 2017 14:16:05 GMT  
		Size: 14.7 MB (14720546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb361a8bbd5ff71fdde215bded7ab39812616e465a318a6ab0a161e85c8b890`  
		Last Modified: Tue, 12 Dec 2017 14:16:01 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e79e7da0ebcf69b51daeb421422c72e012fd6a8f9aec8f1b097996a9cac6cdd`  
		Last Modified: Tue, 12 Dec 2017 14:16:00 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a3724d54c6e1e53d7b2e1765cdfc71f174b9992a74a18afe16ee655c3cb33b`  
		Last Modified: Tue, 12 Dec 2017 14:16:14 GMT  
		Size: 58.1 MB (58126841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e538baf74422a8c0d49a94490c4818b2a938924958c06ecf851cf3d2146a5c`  
		Last Modified: Tue, 12 Dec 2017 14:15:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae89bb60cff9cca04b61bbe33995293db660a7a246e88e5dae894aa49d8b68dd`  
		Last Modified: Tue, 12 Dec 2017 14:15:59 GMT  
		Size: 2.4 MB (2390998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ea9e5a7a2d6ce481e1b4f177b12fe99295ad109f74a4a6c0f4e7fde1db7e4d`  
		Last Modified: Tue, 12 Dec 2017 14:16:14 GMT  
		Size: 78.5 MB (78523863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6805b33755bc7b6b44af37d6d05f9f6a6028a1a80d20ace288d026e26486b72e`  
		Last Modified: Tue, 12 Dec 2017 14:15:58 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:b629d6af584349d1ce8b6776c129494b359cd158bf2c3c1ddd84c484e1dc9272
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259141721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3cdd2f1a66be5e5968fad3bcee7e8fd9465874794b092d2700d855fe8798689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:30:53 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 10:30:54 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 10:30:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:33:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:33:16 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:33:16 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:33:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2638dc18bdad04e52254c595b0c55647ac5a28b34946dce6e2ef85ad689e883`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7be0a59c8d0d40515f6e6614fe848b59b37c3f662fd587c1e7e7ecfe3dc075`  
		Last Modified: Wed, 29 Nov 2017 10:36:59 GMT  
		Size: 80.6 MB (80635343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e996607c55dce7b0f00dc276b678f79e901f1047a67ad4ae78cfddba5287d0`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5`

```console
$ docker pull redmine@sha256:16f88ee894e2126089d93f0bdf36495e42523f005d2bf7c99f59bad7731da6d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.3.5` - linux; amd64

```console
$ docker pull redmine@sha256:7aa54d401ecb40e9ff8907e46657cc64b562446633c64bb2c59412a5d094676c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253319877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a502fbada7bda28c9d507202943c3a7d6468f0d511768ede29892cdd83094ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:36:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:40:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:40:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:40:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:40:15 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:18:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:18:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:19:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:19:01 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:19:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:19:39 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:19:40 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:19:40 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 12 Dec 2017 11:19:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 12 Dec 2017 11:19:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:22:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:28:35 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:28:36 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:28:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:28:36 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:28:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cdaf9dadc7bea51cac0d763e29019c4b1dc84a5da25b97902e735bbeb7f773`  
		Last Modified: Tue, 12 Dec 2017 07:45:42 GMT  
		Size: 35.3 MB (35338188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9c55fe09a9319ff4c6cb3a5c0913763148a04341cf4896fbb0c373c5ebe7a6`  
		Last Modified: Tue, 12 Dec 2017 07:45:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e460c7fa1cf19fa86bf8dd49fc032e71f3b031e16ad1129fd8aaee0cbdb0d4`  
		Last Modified: Tue, 12 Dec 2017 11:47:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f3e8028a6117959ad5da4d4154cfc019cbd5375a4ee91c3eb7784c3a228ba2`  
		Last Modified: Tue, 12 Dec 2017 11:47:12 GMT  
		Size: 14.7 MB (14650247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1f86600dcae56854c0141ef13be0333748d913be81744dbd20d91438e040a1`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0255eb0afc74a7cb4eae4ecbd354292f22e6dd2287b81b2da00e0ac2d828d0`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac602a5a2d84c47ca2992a013231b7e0a565bbca8a3fcfa577a89bad113319b1`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 59.3 MB (59266988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af30e8ebf5e3bc96d8cd33e319b930f68ba80a56d9affc4c6d98b19cc4f545b`  
		Last Modified: Tue, 12 Dec 2017 11:47:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b51f9392c9e1da7f827d9e6c15ef0a0cee28f8b8a45aa575e462a51bb1009b`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e604cf92eb9a1cd1cbfce7d4b42028cf34436c31f4e2ecfdaae24748ee31092`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 78.4 MB (78375712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b88a5d466077f3ae8afed44056d8aec259078dff11e89a39d30394b7f6c9f00`  
		Last Modified: Tue, 12 Dec 2017 11:47:03 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v5

```console
$ docker pull redmine@sha256:73efb7f0cf1e308881792777afff603c458b978d90a8d8b41f2fee260b255c9e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245537709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3945fe3903c95d1194d59200df28bd6608dd0e985898a4470c73b09ad6ade8a9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 01:06:52 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 01:06:53 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 03:05:49 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 03:05:49 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 03:10:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 03:10:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 03:10:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 03:10:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 03:10:11 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:42:06 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:42:38 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:42:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:42:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:42:43 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:43:42 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:43:42 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:43:42 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 03:43:42 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 03:43:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:48:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:48:05 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:48:06 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:48:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:48:06 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:48:07 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f4c5069a15a9169e6b75f04b7fe4b119fc3c9f81fc886a4c53a2183257eade`  
		Last Modified: Wed, 29 Nov 2017 03:19:21 GMT  
		Size: 34.2 MB (34234357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4ec099af78a26d93cdd7007035051c17691e1b9faab1ffbfe78399c2eb75602`  
		Last Modified: Wed, 29 Nov 2017 03:19:08 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a85becc36eb60546600e29f2c0b5d082e240d7cd9e1e743e04baa98e4a351fb`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.1 KB (2088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14992a532c63f7fda479776fd3c19ce325883c773d15f6a37caea8e4011a7211`  
		Last Modified: Wed, 29 Nov 2017 03:54:06 GMT  
		Size: 14.3 MB (14347386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf47abf880eeb5ba1e91ed40769eab5e35542e3bb5591ee97eb5c9a02d5b7fc`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96535285c8491db58d6a752a8e5c38440d2ff27e4c62f30698ce395f40776cf`  
		Last Modified: Wed, 29 Nov 2017 03:54:00 GMT  
		Size: 7.8 KB (7840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8d1f79799b47ea0e62cc6164bc36b168ac44b8a012982c71e48126a2f1534c`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 56.6 MB (56571372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902acc612035f56eb2529117e2118c5746163dc645e2631c6c21d08b5849f0b7`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d18a08e7d2add8c1daa4c8bce6d6be6294c132b0562c4453679972d3b150804`  
		Last Modified: Wed, 29 Nov 2017 03:54:01 GMT  
		Size: 2.4 MB (2390999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c61859fb3b3274d7ca2108a32bcbbd92c47c986d3eb438389b6917a6dadf77`  
		Last Modified: Wed, 29 Nov 2017 03:54:18 GMT  
		Size: 77.5 MB (77498048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6212e630dcc2bac4abbfd33b5fa0a4876333e5e31a3fdd4e48a8d3aa44e15487`  
		Last Modified: Wed, 29 Nov 2017 03:53:59 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v7

```console
$ docker pull redmine@sha256:5f55b750d480b9d6116b9a7e334bfa3f997e3a51a801bf29730bade42cf581c3
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239908569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4f858f7bc3572a210cfe47307e20caf38e0e61cba09536a7d005d8f18800333`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 17:33:42 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 17:33:43 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 17:33:43 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 17:38:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 17:38:03 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 17:38:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 17:38:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 17:38:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 17:38:07 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 18:39:22 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 18:39:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:39:55 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:39:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:40:07 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 18:40:09 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 18:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:41:14 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 18:41:14 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 18:41:15 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 12 Dec 2017 18:41:15 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 12 Dec 2017 18:41:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 18:45:25 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 18:45:26 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 18:45:27 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 18:45:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:45:27 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 18:45:27 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed180ea6c6ca2dd6c06dd917a0c6a4589fc07dfd801ea037f14a534df243b5b7`  
		Last Modified: Tue, 12 Dec 2017 17:52:37 GMT  
		Size: 34.0 MB (34035889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178619499ac36ee2b841d9f2d547575afcf9ba04947053c6387fc4b2597b3f6d`  
		Last Modified: Tue, 12 Dec 2017 17:52:21 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a6f20e547916f99d774b0d5f12b9a1e43784d3ed4692a6d405743aa0d9bf1`  
		Last Modified: Tue, 12 Dec 2017 18:52:36 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d39b60c4b94c3ea5c0b67f8fbfc4226d9b43b8cb1c6eacf3adbf1b88747534`  
		Last Modified: Tue, 12 Dec 2017 18:52:39 GMT  
		Size: 14.1 MB (14134508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5760d573a8863bcd3264f4d7685adf1a798056881c264a690b03695e0fe86e`  
		Last Modified: Tue, 12 Dec 2017 18:52:35 GMT  
		Size: 475.3 KB (475266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206c1c1d00185a0eede4fe411ff8bae0003c5989a4256794a9d4915d6c6b38be`  
		Last Modified: Tue, 12 Dec 2017 18:52:34 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1b2f4ad021c3851f3a150987628a0d58b52f995c46fd4eaed0e17ccdd5b2ce`  
		Last Modified: Tue, 12 Dec 2017 18:52:50 GMT  
		Size: 54.3 MB (54344201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57eb37476a20a0a08eae63732eb963203a0a38800d5268e9b60f7573cd8ec8fc`  
		Last Modified: Tue, 12 Dec 2017 18:52:32 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e9acf36eabef0777bd09079ae03f4a7050774792f91fabd16c89fef80653f2`  
		Last Modified: Tue, 12 Dec 2017 18:52:34 GMT  
		Size: 2.4 MB (2391003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79b8b0cf79751b1daad1af6a76e1bc90a96496b52003e947530b3e1494dd72a6`  
		Last Modified: Tue, 12 Dec 2017 18:52:52 GMT  
		Size: 77.0 MB (77040168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93268d015cd85155d819d6cb1584d72a2b74c8f1c1d79320696c7a8ca896e258`  
		Last Modified: Tue, 12 Dec 2017 18:52:32 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:f300056537f56d6528600cbeaf0bfe5bea4aad967c2398baca5490dd1b070b31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245352865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b07c67e60e9759c45b98a8a58efd26133948893c7f974746b265580765d3826`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 08:21:31 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 08:21:32 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 23:00:23 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 23:00:24 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 23:07:36 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 23:07:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 23:07:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 23:07:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 23:07:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 23:07:41 GMT
CMD ["irb"]
# Thu, 30 Nov 2017 00:00:46 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 30 Nov 2017 00:01:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Nov 2017 00:01:16 GMT
ENV GOSU_VERSION=1.10
# Thu, 30 Nov 2017 00:01:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 30 Nov 2017 00:01:21 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 30 Nov 2017 00:01:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 30 Nov 2017 00:03:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 30 Nov 2017 00:03:06 GMT
ENV RAILS_ENV=production
# Thu, 30 Nov 2017 00:03:06 GMT
WORKDIR /usr/src/redmine
# Thu, 30 Nov 2017 00:03:07 GMT
ENV REDMINE_VERSION=3.3.5
# Thu, 30 Nov 2017 00:03:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Thu, 30 Nov 2017 00:03:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 30 Nov 2017 00:14:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 30 Nov 2017 00:14:07 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 30 Nov 2017 00:14:08 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 30 Nov 2017 00:14:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:14:09 GMT
EXPOSE 3000/tcp
# Thu, 30 Nov 2017 00:14:10 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8bb60b496f2609cca4ac7c59bd898d0d6d4fa6ebd75252772e5603e529613d5`  
		Last Modified: Wed, 29 Nov 2017 23:31:21 GMT  
		Size: 35.4 MB (35437009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588a4528192ac0916e6c886e02b70caa1caedba42f2df1f78a29474190d45c38`  
		Last Modified: Wed, 29 Nov 2017 23:31:05 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c80fcbd8adc280417b8b2fa5e5262e0dbe3a8058c8008aff1bc964d422e55b9`  
		Last Modified: Thu, 30 Nov 2017 00:27:21 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0068c7c4d98c7183a0420136e486c36dddd73d17948e929222ed86caa3943c1`  
		Last Modified: Thu, 30 Nov 2017 00:27:25 GMT  
		Size: 14.5 MB (14462619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c726a512a405288a3be536de14be43c887c3aab5962558f8ec051d970c9f779f`  
		Last Modified: Thu, 30 Nov 2017 00:27:20 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92717df2e81100a9d42c4461aa231f5e5ed0985bc84c609d84619883a38060f1`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 8.2 KB (8151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075bdc9b979b48a71fcaf877254037dc70ac7598183e74d78dffa39909a7ca04`  
		Last Modified: Thu, 30 Nov 2017 00:27:37 GMT  
		Size: 55.8 MB (55785730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eecbd3470ca7162307e42d48c277d69f4ec36efb4c103d53680ebea5eaef6acc`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4c2f70272250a265e0d0bfaf5f85c05855c012341eca16f5a4f0184e3efd4a`  
		Last Modified: Thu, 30 Nov 2017 00:27:18 GMT  
		Size: 2.4 MB (2390734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e82f25f54c98efb2690d5dc9aec0182ba164dc6faf1ffc30f49b35c3a09c84`  
		Last Modified: Thu, 30 Nov 2017 00:27:41 GMT  
		Size: 77.5 MB (77533445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e99de3895a50ccb13b1865421a87643dcc1c41c6bb0d350d3d476bf02128520f`  
		Last Modified: Thu, 30 Nov 2017 00:27:16 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; 386

```console
$ docker pull redmine@sha256:de97d4a8e7040a5d40b68915ddde65acd932a4c667d7e78a018f294212126041
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255543656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290a89eabeb350c0df55c8d9efe3051d52dae1984498a98108159de721746d49`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 03:16:22 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 04:34:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:34:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:38:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:38:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:38:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:38:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:38:36 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:20:53 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:21:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:21:18 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:21:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:21:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:21:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:22:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:22:19 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:22:19 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:22:19 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 05:22:20 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 05:22:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:25:35 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:25:35 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:25:36 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:25:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:25:36 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:25:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00efa31fbb98327286c3de74249f7bf7ab95473a62e6f8f0586873941882dc4`  
		Last Modified: Wed, 29 Nov 2017 04:54:35 GMT  
		Size: 32.8 MB (32789971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8020015056d7323fc2e9ac8cd2b5a499314caba43938fce8fe896506fdf74da`  
		Last Modified: Wed, 29 Nov 2017 04:54:20 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f569528b524a95935a9f123c15ebe9e14f0a15c829efe7b2de8f2cb24c5cabc`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66482e58af170311dfa114cb7bf30628141b65250f84f1fa2a76947ddc455222`  
		Last Modified: Wed, 29 Nov 2017 05:38:00 GMT  
		Size: 14.8 MB (14817387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8a1dc86b52251b85356e9eaef349fd2648c4eb8fd69495365e1ee003a1dad3`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 480.6 KB (480571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea689cdecbe69943dbe797b331903ba672ee707aec95359e5bc0a0d70f1f86b4`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a49d919caeadca01b2f5dfeb5460d46e56c20843e23826ffe28efd3b834d668`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 60.1 MB (60110795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abd66ace22b267b82eed69d1a9bcad1a82dc27beed38c4a6997c9be3e4125f`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52a2096cc6565e48789c1d9db7f1193d3c28b834fd3c93d9fe84ea35d6563c5`  
		Last Modified: Wed, 29 Nov 2017 05:38:01 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986163209863f9d9f8f67445905a0c9fc143abf29a2a50012e192bf7b2a05039`  
		Last Modified: Wed, 29 Nov 2017 05:38:19 GMT  
		Size: 77.5 MB (77539912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391e4dbc387e5f833a088d95379753360a58dcbbb676e20457d27b24afc59732`  
		Last Modified: Wed, 29 Nov 2017 05:37:55 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; ppc64le

```console
$ docker pull redmine@sha256:cfb72e82c6e9e2d7edb91f79f99aff3ddb8158d3f3e9fa422eaaf2711ba2bb0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252550957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece4d160a8c029c118629fdf7d938e2ba05258810c662feb58d3b5f349311ff9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:12:38 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 08:12:39 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 08:12:40 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 08:12:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 08:12:42 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 08:21:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 08:21:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 08:21:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 08:21:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 08:21:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 08:21:23 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 13:47:35 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 13:48:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:48:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 13:48:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 13:48:22 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 13:48:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 13:51:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:51:47 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 13:51:49 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 13:51:49 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 12 Dec 2017 13:51:51 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 12 Dec 2017 13:52:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 14:02:49 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 14:02:51 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 14:02:52 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 14:02:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 14:02:59 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 14:03:01 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2687145283fe9cbc3ccc35534c79d151fcadcf068055add284e14d1f8b74de75`  
		Last Modified: Tue, 12 Dec 2017 09:10:03 GMT  
		Size: 36.3 MB (36340835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42d922f8a45138864979f84d6080302bd4448c816cc14afd4d3b2d42e8fa5a6`  
		Last Modified: Tue, 12 Dec 2017 09:09:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6f64e92bef67b990b923c5621dfca067c4f9ddcb32b9573ee420db8dec35c`  
		Last Modified: Tue, 12 Dec 2017 14:16:03 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb5dd3fc21f41acdf33aaf75eaf0552a9ae8c4da930b73b05ad6e2a674da845`  
		Last Modified: Tue, 12 Dec 2017 14:16:05 GMT  
		Size: 14.7 MB (14720546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb361a8bbd5ff71fdde215bded7ab39812616e465a318a6ab0a161e85c8b890`  
		Last Modified: Tue, 12 Dec 2017 14:16:01 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e79e7da0ebcf69b51daeb421422c72e012fd6a8f9aec8f1b097996a9cac6cdd`  
		Last Modified: Tue, 12 Dec 2017 14:16:00 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a3724d54c6e1e53d7b2e1765cdfc71f174b9992a74a18afe16ee655c3cb33b`  
		Last Modified: Tue, 12 Dec 2017 14:16:14 GMT  
		Size: 58.1 MB (58126841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e538baf74422a8c0d49a94490c4818b2a938924958c06ecf851cf3d2146a5c`  
		Last Modified: Tue, 12 Dec 2017 14:15:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae89bb60cff9cca04b61bbe33995293db660a7a246e88e5dae894aa49d8b68dd`  
		Last Modified: Tue, 12 Dec 2017 14:15:59 GMT  
		Size: 2.4 MB (2390998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ea9e5a7a2d6ce481e1b4f177b12fe99295ad109f74a4a6c0f4e7fde1db7e4d`  
		Last Modified: Tue, 12 Dec 2017 14:16:14 GMT  
		Size: 78.5 MB (78523863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6805b33755bc7b6b44af37d6d05f9f6a6028a1a80d20ace288d026e26486b72e`  
		Last Modified: Tue, 12 Dec 2017 14:15:58 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; s390x

```console
$ docker pull redmine@sha256:b629d6af584349d1ce8b6776c129494b359cd158bf2c3c1ddd84c484e1dc9272
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259141721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3cdd2f1a66be5e5968fad3bcee7e8fd9465874794b092d2700d855fe8798689`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:11:57 GMT
ENV RUBY_MAJOR=2.2
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 10 Oct 2017 00:11:58 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Wed, 29 Nov 2017 10:00:05 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 10:00:05 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 10:02:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 10:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 10:02:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 10:02:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 10:02:55 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:30:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:30:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:30:23 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:30:23 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:30:24 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:30:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:30:53 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:30:53 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:30:53 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 29 Nov 2017 10:30:54 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 29 Nov 2017 10:30:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:33:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:33:16 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:33:16 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:33:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:33:16 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:33:16 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aecf1643b640bfe6355e9a2f45baaf98e042116267d7ea16b31c167433d75cc`  
		Last Modified: Wed, 29 Nov 2017 10:10:34 GMT  
		Size: 39.0 MB (38970539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af488ae7dbb0e3a499062c8f775e79ce5d5e8fb499cc3c32b68a5d2a96061e4`  
		Last Modified: Wed, 29 Nov 2017 10:10:24 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a48259d29197d3370c94aa00fc20d073bc2176fcff0458a37fc7a93ccf2e2ba`  
		Last Modified: Wed, 29 Nov 2017 10:36:49 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68951b2cc3e0b486d49f2bf1a604dfc72920bb910b0f3a92beb255ab27ce1bc1`  
		Last Modified: Wed, 29 Nov 2017 10:36:52 GMT  
		Size: 14.8 MB (14815095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbad8e9b077eeb77d47e6d422e4c7502c0bc698030e3d5a5a8983255ef3427e4`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b7991629e300e835043dfabe52cb7257b8c5e742b9e0a70a0545b2d1b7133f`  
		Last Modified: Wed, 29 Nov 2017 10:36:47 GMT  
		Size: 8.6 KB (8622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1189eb3a43b5dcb29ce876b13411ed03bf2c90037856f4c340a91cf1a07471`  
		Last Modified: Wed, 29 Nov 2017 10:36:58 GMT  
		Size: 59.1 MB (59081157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e138f3c639fc2c03cc809c5c719e41f68c01a9f20c0d935ee50cfd5258dae3e2`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2638dc18bdad04e52254c595b0c55647ac5a28b34946dce6e2ef85ad689e883`  
		Last Modified: Wed, 29 Nov 2017 10:36:48 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7be0a59c8d0d40515f6e6614fe848b59b37c3f662fd587c1e7e7ecfe3dc075`  
		Last Modified: Wed, 29 Nov 2017 10:36:59 GMT  
		Size: 80.6 MB (80635343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e996607c55dce7b0f00dc276b678f79e901f1047a67ad4ae78cfddba5287d0`  
		Last Modified: Wed, 29 Nov 2017 10:36:46 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.5-passenger`

```console
$ docker pull redmine@sha256:ce4883639daf51b2a2c98a9c09ea040d2aecec5d054d4b6871af3f344501f436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.5-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:298317dd7da9e7cf28f1372f3a80db94078c5849f6b554badf0f19259592f364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270157161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b891d3af94e574d336f0f6877933ba679d842090e33c5aaaaf166074a5a1a5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:36:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:40:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:40:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:40:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:40:15 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:18:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:18:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:19:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:19:01 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:19:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:19:39 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:19:40 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:19:40 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 12 Dec 2017 11:19:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 12 Dec 2017 11:19:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:22:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:28:35 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:28:36 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:28:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:28:36 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:28:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Dec 2017 11:29:02 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 12 Dec 2017 11:29:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:29:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Dec 2017 11:29:24 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cdaf9dadc7bea51cac0d763e29019c4b1dc84a5da25b97902e735bbeb7f773`  
		Last Modified: Tue, 12 Dec 2017 07:45:42 GMT  
		Size: 35.3 MB (35338188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9c55fe09a9319ff4c6cb3a5c0913763148a04341cf4896fbb0c373c5ebe7a6`  
		Last Modified: Tue, 12 Dec 2017 07:45:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e460c7fa1cf19fa86bf8dd49fc032e71f3b031e16ad1129fd8aaee0cbdb0d4`  
		Last Modified: Tue, 12 Dec 2017 11:47:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f3e8028a6117959ad5da4d4154cfc019cbd5375a4ee91c3eb7784c3a228ba2`  
		Last Modified: Tue, 12 Dec 2017 11:47:12 GMT  
		Size: 14.7 MB (14650247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1f86600dcae56854c0141ef13be0333748d913be81744dbd20d91438e040a1`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0255eb0afc74a7cb4eae4ecbd354292f22e6dd2287b81b2da00e0ac2d828d0`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac602a5a2d84c47ca2992a013231b7e0a565bbca8a3fcfa577a89bad113319b1`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 59.3 MB (59266988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af30e8ebf5e3bc96d8cd33e319b930f68ba80a56d9affc4c6d98b19cc4f545b`  
		Last Modified: Tue, 12 Dec 2017 11:47:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b51f9392c9e1da7f827d9e6c15ef0a0cee28f8b8a45aa575e462a51bb1009b`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e604cf92eb9a1cd1cbfce7d4b42028cf34436c31f4e2ecfdaae24748ee31092`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 78.4 MB (78375712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b88a5d466077f3ae8afed44056d8aec259078dff11e89a39d30394b7f6c9f00`  
		Last Modified: Tue, 12 Dec 2017 11:47:03 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf66d2b5fc7c3af1f1e7e59e79b9df4984209c395dd11c9e045807b252d910d`  
		Last Modified: Tue, 12 Dec 2017 11:47:49 GMT  
		Size: 12.8 MB (12760353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9222868e905818298515f3c8f52eaf34cd6190166779437150c12195295d1adb`  
		Last Modified: Tue, 12 Dec 2017 11:47:45 GMT  
		Size: 4.1 MB (4076931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:ce4883639daf51b2a2c98a9c09ea040d2aecec5d054d4b6871af3f344501f436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:298317dd7da9e7cf28f1372f3a80db94078c5849f6b554badf0f19259592f364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270157161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b891d3af94e574d336f0f6877933ba679d842090e33c5aaaaf166074a5a1a5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:36:58 GMT
ENV RUBY_MAJOR=2.2
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_VERSION=2.2.8
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBY_DOWNLOAD_SHA256=37eafc15037396c26870f6a6c5bcd0658d14b46cd5e191a3b56d89dd22d561b0
# Tue, 12 Dec 2017 07:36:59 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:36:59 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:40:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:40:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:40:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:40:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:40:15 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:18:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:18:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:18:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:19:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:19:01 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:19:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:19:39 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:19:40 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:19:40 GMT
ENV REDMINE_VERSION=3.3.5
# Tue, 12 Dec 2017 11:19:40 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Tue, 12 Dec 2017 11:19:44 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:22:06 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:28:35 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:28:36 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:28:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:28:36 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:28:36 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Dec 2017 11:29:02 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 12 Dec 2017 11:29:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:29:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Dec 2017 11:29:24 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cdaf9dadc7bea51cac0d763e29019c4b1dc84a5da25b97902e735bbeb7f773`  
		Last Modified: Tue, 12 Dec 2017 07:45:42 GMT  
		Size: 35.3 MB (35338188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9c55fe09a9319ff4c6cb3a5c0913763148a04341cf4896fbb0c373c5ebe7a6`  
		Last Modified: Tue, 12 Dec 2017 07:45:30 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e460c7fa1cf19fa86bf8dd49fc032e71f3b031e16ad1129fd8aaee0cbdb0d4`  
		Last Modified: Tue, 12 Dec 2017 11:47:09 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0f3e8028a6117959ad5da4d4154cfc019cbd5375a4ee91c3eb7784c3a228ba2`  
		Last Modified: Tue, 12 Dec 2017 11:47:12 GMT  
		Size: 14.7 MB (14650247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1f86600dcae56854c0141ef13be0333748d913be81744dbd20d91438e040a1`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0255eb0afc74a7cb4eae4ecbd354292f22e6dd2287b81b2da00e0ac2d828d0`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 8.5 KB (8507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac602a5a2d84c47ca2992a013231b7e0a565bbca8a3fcfa577a89bad113319b1`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 59.3 MB (59266988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af30e8ebf5e3bc96d8cd33e319b930f68ba80a56d9affc4c6d98b19cc4f545b`  
		Last Modified: Tue, 12 Dec 2017 11:47:04 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b51f9392c9e1da7f827d9e6c15ef0a0cee28f8b8a45aa575e462a51bb1009b`  
		Last Modified: Tue, 12 Dec 2017 11:47:06 GMT  
		Size: 2.4 MB (2390740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e604cf92eb9a1cd1cbfce7d4b42028cf34436c31f4e2ecfdaae24748ee31092`  
		Last Modified: Tue, 12 Dec 2017 11:47:21 GMT  
		Size: 78.4 MB (78375712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b88a5d466077f3ae8afed44056d8aec259078dff11e89a39d30394b7f6c9f00`  
		Last Modified: Tue, 12 Dec 2017 11:47:03 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf66d2b5fc7c3af1f1e7e59e79b9df4984209c395dd11c9e045807b252d910d`  
		Last Modified: Tue, 12 Dec 2017 11:47:49 GMT  
		Size: 12.8 MB (12760353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9222868e905818298515f3c8f52eaf34cd6190166779437150c12195295d1adb`  
		Last Modified: Tue, 12 Dec 2017 11:47:45 GMT  
		Size: 4.1 MB (4076931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:d0ddf6408a4c4e1b47d05b9a5a2194544a564c06d647f70520c51c08973db52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4` - linux; amd64

```console
$ docker pull redmine@sha256:ed398a8b18462d7ae488c8d2e92f38f4b94323cfc939e8fd9d4234ab3df5d60b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242090916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996723b2271d20dad57f3d31ad1a6269af16ab3c07fcfc796890ba1c7c5d20ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:29:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:32:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:32:50 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:08:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:08:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:08:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:08:46 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:08:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:09:23 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:09:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 11:09:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:11:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:11:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:11:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:11:55 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:11:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f604ae96ee784438143980e4b4e0f22d17634362066650aa6c64b937ef0ca635`  
		Last Modified: Tue, 12 Dec 2017 07:42:47 GMT  
		Size: 24.7 MB (24724295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ccbae1ae11177967fda6b128cd5d281eec517b5c779ee61aa2f942f4c628c`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9d2d007a1b4cc24e295c787ef116c98d33a535067b231fd854b30881061567`  
		Last Modified: Tue, 12 Dec 2017 11:39:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2afbd34df6cd1b991197242543e8970916dcd74d9d492a011b561ddc83af06`  
		Last Modified: Tue, 12 Dec 2017 11:39:30 GMT  
		Size: 14.7 MB (14650317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99ec2634066d865eebd3286f22edb86c11ec8ac751c0f05eed26cff83eff42`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ff622f1969cb74fbe88f2dcce45047c513bfd4703bc265b86193240b437f3`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 8.5 KB (8501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fd6a369e8e1edd2500cd654d0a56df124e05d84bf6955533bf3db877ef28c7`  
		Last Modified: Tue, 12 Dec 2017 11:39:37 GMT  
		Size: 59.3 MB (59266619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4b37a5f1f5f0d1ab67c8bb322d927ab5d14e9322bf4b197c04b295981897ed`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35b0d8b2fbcfeaa5a2a941906fc5e441da01b59bb23df8c53798850dc8cb40`  
		Last Modified: Tue, 12 Dec 2017 11:39:24 GMT  
		Size: 2.4 MB (2449724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf99175dd2d3ed595b3ac6ae9c8c78551e653e827d77259fb5ac4e42dd210ae`  
		Last Modified: Tue, 12 Dec 2017 11:39:39 GMT  
		Size: 77.7 MB (77701966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c21de491f6015951426f1795dcecfc68622ec03db3152dacdefbfe7ad05042`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6f968d8e81bf004895e883770f372914254e16afa830419d53809262f0dddefa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235135170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e5a12bfb3cc8e8ed47db1f07bacff191a64daade3cebbc7931cbda57b6643f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 02:45:34 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:45:34 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:51:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:51:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:51:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:51:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:35:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:36:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:36:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:36:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:36:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:37:15 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:37:15 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179ea4737244be5f572da462b3c5705bab2143befb6455e4336bcd8d0e407760`  
		Last Modified: Wed, 29 Nov 2017 03:15:10 GMT  
		Size: 24.5 MB (24483509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ced734833d0751f11706a7c22921175ad89ab3abdfbf8fb0f0dea144ecd5ea`  
		Last Modified: Wed, 29 Nov 2017 03:15:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ee29af941d7de19d192ab4259ea30796ff26211bea73b25e76987e71eb29a`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cba304d0f2c108938d18959720674f353aec0ac38de3b665de962528498423`  
		Last Modified: Wed, 29 Nov 2017 03:53:09 GMT  
		Size: 14.3 MB (14347359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593e1fe9d4684177d51cccc210e4730aeec65b083f553f1a06ecf6ee8889d0e4`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1a96819f4195e3a2ebde299f49b32dbe208a1b8cdb14dbfb2e6127c85ab0c0`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355e66b9387dcf98fa1a7a0894720236d9d0944e17e37b51205fcb102b378d82`  
		Last Modified: Wed, 29 Nov 2017 03:53:26 GMT  
		Size: 56.6 MB (56571351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3754cf5b9d29327dd282bb5698cb31cd4db874059c4cf19ac91dc3db78b4195c`  
		Last Modified: Wed, 29 Nov 2017 03:53:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67b5d283d650a6af8d3e7dc7d8e0ad5b5175d8a22abc50740665aac632e7110`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e509a1affd384340033278c59bcf749e1666df622600502e366b835d47e9b174`  
		Last Modified: Wed, 29 Nov 2017 03:53:21 GMT  
		Size: 76.8 MB (76787012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e61d6a1508e609ec515fc36271ef779118a525489372468278a0ea6ec0898`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:68f9abb0c5f1c4e0fbe19ebf167ea6e5d0eacc4b0a09000eb2805d87c0a738fe
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229590045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cce26d7f9acb68b26cd7d40ff346dc3856c755a9e10512fcda4cd989a47afc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 17:08:34 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 17:08:44 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 17:08:54 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 17:08:54 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 17:14:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 17:14:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 17:14:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 17:15:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 17:15:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 17:15:17 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 18:32:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 18:33:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:33:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:33:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:33:08 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 18:33:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 18:34:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:34:12 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 18:34:12 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 18:34:12 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 18:34:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 18:34:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 18:38:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 18:38:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 18:38:37 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 18:38:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:38:48 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 18:38:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c72aedb8b4b2a0b291b1bc898df0d835218c40f8735512eb8ca7e1933208ef`  
		Last Modified: Tue, 12 Dec 2017 17:46:18 GMT  
		Size: 24.4 MB (24358002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad109c8960fde3d54a85b6a8799ffa23af42788d495b35aa613931ae3a76b8a`  
		Last Modified: Tue, 12 Dec 2017 17:46:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b1027829d187f6c0828f1ac76d5294db76e8a5c70157a83697e3c14633e7f`  
		Last Modified: Tue, 12 Dec 2017 18:51:25 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a56916c0018f784f10535bcf91b9e8234b7bbe1cfcd67eafd8296bdd47a43`  
		Last Modified: Tue, 12 Dec 2017 18:51:29 GMT  
		Size: 14.1 MB (14134516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759c29e24f85dad0b2499a4e31292f7f62eeadfe6c6323ba354fa0e842192ba8`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7a801c933c32dbaa8067af92939c6badccd9b25ca4310a11207a1c71a867e6`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d126b20f90f0a5f9d4e769907a634d26c6e8b465848822d35ab6049cb2c01efe`  
		Last Modified: Tue, 12 Dec 2017 18:51:40 GMT  
		Size: 54.3 MB (54343951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05655c680f8a7db6fa3266e880ef324c3c80966b163485b5d570bd72c0cff43e`  
		Last Modified: Tue, 12 Dec 2017 18:51:22 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6da5b6b62f3ea514b458d43899d8cf600cb2e05add7d76ea06d428d56d0353`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 2.5 MB (2450398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb5da03c73f85986c5e5cb9822c0472be125309cf7a1df413021b998c6ea159`  
		Last Modified: Tue, 12 Dec 2017 18:51:41 GMT  
		Size: 76.3 MB (76340376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8798ae73dd16d3c3f987a538a61ad7114afd2b16da68268b4470ef7f1360c71d`  
		Last Modified: Tue, 12 Dec 2017 18:51:22 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:addc09881c85f8c3b7b6bce7a534ad84591ac4786042afe803638db11b5dd907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (233959349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f95606782166eb745c0f9fd18c973435b8001a87e8c36489f10942b26c8463e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:42:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 22:21:48 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 22:21:48 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 22:31:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 22:31:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 22:31:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 22:31:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 22:31:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 22:31:19 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 23:48:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 23:49:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 23:49:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 23:49:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 23:49:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 23:49:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 23:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 23:51:13 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 23:51:14 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 23:51:14 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 23:51:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 23:51:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 30 Nov 2017 00:00:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 30 Nov 2017 00:00:07 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 30 Nov 2017 00:00:08 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 30 Nov 2017 00:00:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:00:12 GMT
EXPOSE 3000/tcp
# Thu, 30 Nov 2017 00:00:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2227776c3ec6362e4c4f1121e213193523f8a94c5f8defdf3b91df017f3b967c`  
		Last Modified: Wed, 29 Nov 2017 23:21:06 GMT  
		Size: 24.7 MB (24668103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc0e07c76e0a26ce16cd49f66c955e3f72d18a23e070407f99adf4ab437013b`  
		Last Modified: Wed, 29 Nov 2017 23:20:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0165ddc176cd64bd625c505f61d69d2a3f645a1c26b320f743dc16daa554189`  
		Last Modified: Thu, 30 Nov 2017 00:24:51 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eba3fd7779d562b974f54c293d74359359001a94edc6e162c8571019c4d6c62`  
		Last Modified: Thu, 30 Nov 2017 00:24:56 GMT  
		Size: 14.5 MB (14462643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30962df026b0aa96467c33a73c4a6b5f0ef32474648912afb933e874bd745f34`  
		Last Modified: Thu, 30 Nov 2017 00:24:50 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c17b2fb08e724f6095008dfccfd09c20edda89bfe9ca8ad3504356f607e8279`  
		Last Modified: Thu, 30 Nov 2017 00:24:49 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e7d93c0a0bfa419b38d7f97569bd22fdd62741875f8110f848f550e11594ed`  
		Last Modified: Thu, 30 Nov 2017 00:25:08 GMT  
		Size: 55.8 MB (55785821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63eaa6a04fd57b4a631961253f269382287bcc81044dfb300e129bed1f97f796`  
		Last Modified: Thu, 30 Nov 2017 00:24:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6479aff9188e35ce25b4bb917cccb36e30ef8a0f3fd37e6805b1df7bad0e49e`  
		Last Modified: Thu, 30 Nov 2017 00:24:49 GMT  
		Size: 2.4 MB (2449729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c92b90f267f25da42232a69ede1c2ca36d44eb73356c2f0b4c2138ae5d1b38`  
		Last Modified: Thu, 30 Nov 2017 00:26:05 GMT  
		Size: 76.8 MB (76849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e520587212c6f106b8425234d9ef89aee370fea11175d9e1350f3b69f5f425a`  
		Last Modified: Thu, 30 Nov 2017 00:24:47 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:44b13c8d466c6445c050a1bb2c4dc64f31f84faffad4f4328888c78fc383800f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245866473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86389fee9180696c76db1a6a637972ba4b26d3fe2ef698950aafef50b3b6a270`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 04:08:08 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:08:08 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:12:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:12:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:12:10 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:11:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:11:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:11:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:11:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:12:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:12:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 05:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:15:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:15:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:15:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:15:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:15:39 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:15:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d606874a95f77a281a95ea62aecc6652e267ab2ad0d20ee2abe625c0108ea6a`  
		Last Modified: Wed, 29 Nov 2017 04:47:48 GMT  
		Size: 23.7 MB (23707414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b3b5e60949389e180d533eefbb7fb23c3814ffe2dc87fb4d356431d68e097`  
		Last Modified: Wed, 29 Nov 2017 04:47:40 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6290ab79572fcdca52bc6d4dedfe3f2a6c32bbd8fa40110ee26b2b650a6fdc14`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8907d7b491156601acd90d0bbd05dcf53369287764f4f32decae43da940dfe`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 14.8 MB (14817396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0bdebc662d70bd06cecd81a4c20122dd591b2ba2ace4e6f085a0b7b4cce465`  
		Last Modified: Wed, 29 Nov 2017 05:36:25 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea035533dab2cebad7ee27b3db7987cebb653a0129f7ed3121fe8e07961f1e1`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9bed729e63931113d8749301a61b0789c36c5555e389ae0426c271f612478`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 60.1 MB (60111462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2d57c91aa6b268ad6bfc48c017655c9cdf076e23092da03a220fb7d787bd9`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23cfd68b0fc24d07e4046edfc414d177dff85d55d28bbafd83d9e4fa3493baf`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 2.4 MB (2449741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e2e1eda9fbe74fd148246a53dfbac200c88c6dc7602ee40ad3b95dbdec5b1`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 76.9 MB (76885610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa498c25050d6fd9f7d3e7fe9378b05c0c96f7a9ed7c7d8f38b352fa23b486`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:06b583e1b1ba3ab83c95222d31184dd87711df70a0a36b4024d07c963dfc7fd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240752720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d896b06c401427d9c3645302c885c62deb465818dfa2bb287c7c9ace6b77e606`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:31:20 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:31:22 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:31:24 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:31:27 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:46:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:46:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:46:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:46:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:46:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:46:54 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 13:32:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 13:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:32:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 13:32:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 13:32:54 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 13:32:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 13:36:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:36:21 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 13:36:22 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 13:36:23 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 13:36:25 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 13:36:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 13:47:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 13:47:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 13:47:13 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 13:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 13:47:16 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 13:47:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc821e42be3df18a8ebd892a9228209f29a4c16812da6e9d1576ede0677e525`  
		Last Modified: Tue, 12 Dec 2017 08:36:07 GMT  
		Size: 25.2 MB (25169131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09da9bd5b0a1dbf8b88924e45347110a717a7bd381d81e45da4904889d36fb9f`  
		Last Modified: Tue, 12 Dec 2017 08:35:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f301e969c0236a54bc20c8892975762c767a0a0e01fba7ad7314aad4f9da7`  
		Last Modified: Tue, 12 Dec 2017 14:15:16 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518dcbc66e6ed4cc87bae6a527d3e67d01760db78314f45e0b000a32e19cc7bc`  
		Last Modified: Tue, 12 Dec 2017 14:15:17 GMT  
		Size: 14.7 MB (14720904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac56c23f77fac25e7aaed9da38c980070e1c636ae764ded679f6251f71ec83`  
		Last Modified: Tue, 12 Dec 2017 14:15:12 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f957941330ff684841723121af364da2c9af59b04f4c696da87dc17e128f63`  
		Last Modified: Tue, 12 Dec 2017 14:15:12 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95004aeb23849070241696c0d4ee230663894d1ab2fe2696008c167ad3825fdb`  
		Last Modified: Tue, 12 Dec 2017 14:15:25 GMT  
		Size: 58.1 MB (58127224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fca6de94f887ce0c08d6e05ae290a5de8a7ba610b38336b040108746cde80bd`  
		Last Modified: Tue, 12 Dec 2017 14:15:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d05030113c23fb46f2145c57d58167aa0add6e0d4285a45002cbcc31a6d93c6`  
		Last Modified: Tue, 12 Dec 2017 14:15:10 GMT  
		Size: 2.5 MB (2450387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9cb62f3f47435d80994c72c3273bf43e99df4d7a5ed957f7218b2fa295a10`  
		Last Modified: Tue, 12 Dec 2017 14:15:25 GMT  
		Size: 77.8 MB (77837201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a719e77ea2befeaff5c8a4cdf5941e1de9ecf05c0d28acccc8beb9245b54e61`  
		Last Modified: Tue, 12 Dec 2017 14:15:10 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3`

```console
$ docker pull redmine@sha256:d0ddf6408a4c4e1b47d05b9a5a2194544a564c06d647f70520c51c08973db52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:3.4.3` - linux; amd64

```console
$ docker pull redmine@sha256:ed398a8b18462d7ae488c8d2e92f38f4b94323cfc939e8fd9d4234ab3df5d60b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242090916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996723b2271d20dad57f3d31ad1a6269af16ab3c07fcfc796890ba1c7c5d20ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:29:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:32:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:32:50 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:08:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:08:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:08:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:08:46 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:08:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:09:23 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:09:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 11:09:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:11:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:11:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:11:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:11:55 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:11:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f604ae96ee784438143980e4b4e0f22d17634362066650aa6c64b937ef0ca635`  
		Last Modified: Tue, 12 Dec 2017 07:42:47 GMT  
		Size: 24.7 MB (24724295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ccbae1ae11177967fda6b128cd5d281eec517b5c779ee61aa2f942f4c628c`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9d2d007a1b4cc24e295c787ef116c98d33a535067b231fd854b30881061567`  
		Last Modified: Tue, 12 Dec 2017 11:39:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2afbd34df6cd1b991197242543e8970916dcd74d9d492a011b561ddc83af06`  
		Last Modified: Tue, 12 Dec 2017 11:39:30 GMT  
		Size: 14.7 MB (14650317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99ec2634066d865eebd3286f22edb86c11ec8ac751c0f05eed26cff83eff42`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ff622f1969cb74fbe88f2dcce45047c513bfd4703bc265b86193240b437f3`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 8.5 KB (8501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fd6a369e8e1edd2500cd654d0a56df124e05d84bf6955533bf3db877ef28c7`  
		Last Modified: Tue, 12 Dec 2017 11:39:37 GMT  
		Size: 59.3 MB (59266619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4b37a5f1f5f0d1ab67c8bb322d927ab5d14e9322bf4b197c04b295981897ed`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35b0d8b2fbcfeaa5a2a941906fc5e441da01b59bb23df8c53798850dc8cb40`  
		Last Modified: Tue, 12 Dec 2017 11:39:24 GMT  
		Size: 2.4 MB (2449724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf99175dd2d3ed595b3ac6ae9c8c78551e653e827d77259fb5ac4e42dd210ae`  
		Last Modified: Tue, 12 Dec 2017 11:39:39 GMT  
		Size: 77.7 MB (77701966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c21de491f6015951426f1795dcecfc68622ec03db3152dacdefbfe7ad05042`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6f968d8e81bf004895e883770f372914254e16afa830419d53809262f0dddefa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235135170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e5a12bfb3cc8e8ed47db1f07bacff191a64daade3cebbc7931cbda57b6643f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 02:45:34 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:45:34 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:51:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:51:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:51:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:51:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:35:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:36:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:36:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:36:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:36:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:37:15 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:37:15 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179ea4737244be5f572da462b3c5705bab2143befb6455e4336bcd8d0e407760`  
		Last Modified: Wed, 29 Nov 2017 03:15:10 GMT  
		Size: 24.5 MB (24483509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ced734833d0751f11706a7c22921175ad89ab3abdfbf8fb0f0dea144ecd5ea`  
		Last Modified: Wed, 29 Nov 2017 03:15:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ee29af941d7de19d192ab4259ea30796ff26211bea73b25e76987e71eb29a`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cba304d0f2c108938d18959720674f353aec0ac38de3b665de962528498423`  
		Last Modified: Wed, 29 Nov 2017 03:53:09 GMT  
		Size: 14.3 MB (14347359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593e1fe9d4684177d51cccc210e4730aeec65b083f553f1a06ecf6ee8889d0e4`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1a96819f4195e3a2ebde299f49b32dbe208a1b8cdb14dbfb2e6127c85ab0c0`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355e66b9387dcf98fa1a7a0894720236d9d0944e17e37b51205fcb102b378d82`  
		Last Modified: Wed, 29 Nov 2017 03:53:26 GMT  
		Size: 56.6 MB (56571351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3754cf5b9d29327dd282bb5698cb31cd4db874059c4cf19ac91dc3db78b4195c`  
		Last Modified: Wed, 29 Nov 2017 03:53:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67b5d283d650a6af8d3e7dc7d8e0ad5b5175d8a22abc50740665aac632e7110`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e509a1affd384340033278c59bcf749e1666df622600502e366b835d47e9b174`  
		Last Modified: Wed, 29 Nov 2017 03:53:21 GMT  
		Size: 76.8 MB (76787012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e61d6a1508e609ec515fc36271ef779118a525489372468278a0ea6ec0898`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:68f9abb0c5f1c4e0fbe19ebf167ea6e5d0eacc4b0a09000eb2805d87c0a738fe
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229590045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cce26d7f9acb68b26cd7d40ff346dc3856c755a9e10512fcda4cd989a47afc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 17:08:34 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 17:08:44 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 17:08:54 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 17:08:54 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 17:14:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 17:14:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 17:14:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 17:15:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 17:15:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 17:15:17 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 18:32:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 18:33:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:33:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:33:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:33:08 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 18:33:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 18:34:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:34:12 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 18:34:12 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 18:34:12 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 18:34:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 18:34:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 18:38:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 18:38:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 18:38:37 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 18:38:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:38:48 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 18:38:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c72aedb8b4b2a0b291b1bc898df0d835218c40f8735512eb8ca7e1933208ef`  
		Last Modified: Tue, 12 Dec 2017 17:46:18 GMT  
		Size: 24.4 MB (24358002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad109c8960fde3d54a85b6a8799ffa23af42788d495b35aa613931ae3a76b8a`  
		Last Modified: Tue, 12 Dec 2017 17:46:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b1027829d187f6c0828f1ac76d5294db76e8a5c70157a83697e3c14633e7f`  
		Last Modified: Tue, 12 Dec 2017 18:51:25 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a56916c0018f784f10535bcf91b9e8234b7bbe1cfcd67eafd8296bdd47a43`  
		Last Modified: Tue, 12 Dec 2017 18:51:29 GMT  
		Size: 14.1 MB (14134516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759c29e24f85dad0b2499a4e31292f7f62eeadfe6c6323ba354fa0e842192ba8`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7a801c933c32dbaa8067af92939c6badccd9b25ca4310a11207a1c71a867e6`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d126b20f90f0a5f9d4e769907a634d26c6e8b465848822d35ab6049cb2c01efe`  
		Last Modified: Tue, 12 Dec 2017 18:51:40 GMT  
		Size: 54.3 MB (54343951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05655c680f8a7db6fa3266e880ef324c3c80966b163485b5d570bd72c0cff43e`  
		Last Modified: Tue, 12 Dec 2017 18:51:22 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6da5b6b62f3ea514b458d43899d8cf600cb2e05add7d76ea06d428d56d0353`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 2.5 MB (2450398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb5da03c73f85986c5e5cb9822c0472be125309cf7a1df413021b998c6ea159`  
		Last Modified: Tue, 12 Dec 2017 18:51:41 GMT  
		Size: 76.3 MB (76340376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8798ae73dd16d3c3f987a538a61ad7114afd2b16da68268b4470ef7f1360c71d`  
		Last Modified: Tue, 12 Dec 2017 18:51:22 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:addc09881c85f8c3b7b6bce7a534ad84591ac4786042afe803638db11b5dd907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (233959349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f95606782166eb745c0f9fd18c973435b8001a87e8c36489f10942b26c8463e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:42:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 22:21:48 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 22:21:48 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 22:31:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 22:31:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 22:31:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 22:31:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 22:31:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 22:31:19 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 23:48:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 23:49:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 23:49:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 23:49:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 23:49:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 23:49:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 23:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 23:51:13 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 23:51:14 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 23:51:14 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 23:51:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 23:51:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 30 Nov 2017 00:00:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 30 Nov 2017 00:00:07 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 30 Nov 2017 00:00:08 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 30 Nov 2017 00:00:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:00:12 GMT
EXPOSE 3000/tcp
# Thu, 30 Nov 2017 00:00:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2227776c3ec6362e4c4f1121e213193523f8a94c5f8defdf3b91df017f3b967c`  
		Last Modified: Wed, 29 Nov 2017 23:21:06 GMT  
		Size: 24.7 MB (24668103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc0e07c76e0a26ce16cd49f66c955e3f72d18a23e070407f99adf4ab437013b`  
		Last Modified: Wed, 29 Nov 2017 23:20:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0165ddc176cd64bd625c505f61d69d2a3f645a1c26b320f743dc16daa554189`  
		Last Modified: Thu, 30 Nov 2017 00:24:51 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eba3fd7779d562b974f54c293d74359359001a94edc6e162c8571019c4d6c62`  
		Last Modified: Thu, 30 Nov 2017 00:24:56 GMT  
		Size: 14.5 MB (14462643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30962df026b0aa96467c33a73c4a6b5f0ef32474648912afb933e874bd745f34`  
		Last Modified: Thu, 30 Nov 2017 00:24:50 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c17b2fb08e724f6095008dfccfd09c20edda89bfe9ca8ad3504356f607e8279`  
		Last Modified: Thu, 30 Nov 2017 00:24:49 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e7d93c0a0bfa419b38d7f97569bd22fdd62741875f8110f848f550e11594ed`  
		Last Modified: Thu, 30 Nov 2017 00:25:08 GMT  
		Size: 55.8 MB (55785821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63eaa6a04fd57b4a631961253f269382287bcc81044dfb300e129bed1f97f796`  
		Last Modified: Thu, 30 Nov 2017 00:24:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6479aff9188e35ce25b4bb917cccb36e30ef8a0f3fd37e6805b1df7bad0e49e`  
		Last Modified: Thu, 30 Nov 2017 00:24:49 GMT  
		Size: 2.4 MB (2449729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c92b90f267f25da42232a69ede1c2ca36d44eb73356c2f0b4c2138ae5d1b38`  
		Last Modified: Thu, 30 Nov 2017 00:26:05 GMT  
		Size: 76.8 MB (76849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e520587212c6f106b8425234d9ef89aee370fea11175d9e1350f3b69f5f425a`  
		Last Modified: Thu, 30 Nov 2017 00:24:47 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; 386

```console
$ docker pull redmine@sha256:44b13c8d466c6445c050a1bb2c4dc64f31f84faffad4f4328888c78fc383800f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245866473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86389fee9180696c76db1a6a637972ba4b26d3fe2ef698950aafef50b3b6a270`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 04:08:08 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:08:08 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:12:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:12:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:12:10 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:11:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:11:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:11:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:11:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:12:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:12:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 05:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:15:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:15:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:15:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:15:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:15:39 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:15:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d606874a95f77a281a95ea62aecc6652e267ab2ad0d20ee2abe625c0108ea6a`  
		Last Modified: Wed, 29 Nov 2017 04:47:48 GMT  
		Size: 23.7 MB (23707414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b3b5e60949389e180d533eefbb7fb23c3814ffe2dc87fb4d356431d68e097`  
		Last Modified: Wed, 29 Nov 2017 04:47:40 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6290ab79572fcdca52bc6d4dedfe3f2a6c32bbd8fa40110ee26b2b650a6fdc14`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8907d7b491156601acd90d0bbd05dcf53369287764f4f32decae43da940dfe`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 14.8 MB (14817396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0bdebc662d70bd06cecd81a4c20122dd591b2ba2ace4e6f085a0b7b4cce465`  
		Last Modified: Wed, 29 Nov 2017 05:36:25 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea035533dab2cebad7ee27b3db7987cebb653a0129f7ed3121fe8e07961f1e1`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9bed729e63931113d8749301a61b0789c36c5555e389ae0426c271f612478`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 60.1 MB (60111462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2d57c91aa6b268ad6bfc48c017655c9cdf076e23092da03a220fb7d787bd9`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23cfd68b0fc24d07e4046edfc414d177dff85d55d28bbafd83d9e4fa3493baf`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 2.4 MB (2449741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e2e1eda9fbe74fd148246a53dfbac200c88c6dc7602ee40ad3b95dbdec5b1`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 76.9 MB (76885610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa498c25050d6fd9f7d3e7fe9378b05c0c96f7a9ed7c7d8f38b352fa23b486`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:06b583e1b1ba3ab83c95222d31184dd87711df70a0a36b4024d07c963dfc7fd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240752720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d896b06c401427d9c3645302c885c62deb465818dfa2bb287c7c9ace6b77e606`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:31:20 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:31:22 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:31:24 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:31:27 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:46:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:46:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:46:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:46:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:46:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:46:54 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 13:32:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 13:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:32:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 13:32:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 13:32:54 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 13:32:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 13:36:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:36:21 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 13:36:22 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 13:36:23 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 13:36:25 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 13:36:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 13:47:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 13:47:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 13:47:13 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 13:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 13:47:16 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 13:47:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc821e42be3df18a8ebd892a9228209f29a4c16812da6e9d1576ede0677e525`  
		Last Modified: Tue, 12 Dec 2017 08:36:07 GMT  
		Size: 25.2 MB (25169131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09da9bd5b0a1dbf8b88924e45347110a717a7bd381d81e45da4904889d36fb9f`  
		Last Modified: Tue, 12 Dec 2017 08:35:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f301e969c0236a54bc20c8892975762c767a0a0e01fba7ad7314aad4f9da7`  
		Last Modified: Tue, 12 Dec 2017 14:15:16 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518dcbc66e6ed4cc87bae6a527d3e67d01760db78314f45e0b000a32e19cc7bc`  
		Last Modified: Tue, 12 Dec 2017 14:15:17 GMT  
		Size: 14.7 MB (14720904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac56c23f77fac25e7aaed9da38c980070e1c636ae764ded679f6251f71ec83`  
		Last Modified: Tue, 12 Dec 2017 14:15:12 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f957941330ff684841723121af364da2c9af59b04f4c696da87dc17e128f63`  
		Last Modified: Tue, 12 Dec 2017 14:15:12 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95004aeb23849070241696c0d4ee230663894d1ab2fe2696008c167ad3825fdb`  
		Last Modified: Tue, 12 Dec 2017 14:15:25 GMT  
		Size: 58.1 MB (58127224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fca6de94f887ce0c08d6e05ae290a5de8a7ba610b38336b040108746cde80bd`  
		Last Modified: Tue, 12 Dec 2017 14:15:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d05030113c23fb46f2145c57d58167aa0add6e0d4285a45002cbcc31a6d93c6`  
		Last Modified: Tue, 12 Dec 2017 14:15:10 GMT  
		Size: 2.5 MB (2450387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9cb62f3f47435d80994c72c3273bf43e99df4d7a5ed957f7218b2fa295a10`  
		Last Modified: Tue, 12 Dec 2017 14:15:25 GMT  
		Size: 77.8 MB (77837201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a719e77ea2befeaff5c8a4cdf5941e1de9ecf05c0d28acccc8beb9245b54e61`  
		Last Modified: Tue, 12 Dec 2017 14:15:10 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.3-passenger`

```console
$ docker pull redmine@sha256:8a748ce0adf35534f99ebfe699fedbdfbd1edf6df8965440ff64207592d5b3fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:c769ee230f49a00a12c97162347f63ba7e8507ff57eff9072b85a12135e2691b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258928333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4238073787ac4fe007958e5619c54d32975ff72e49468fcb7fbbea88ae802828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:29:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:32:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:32:50 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:08:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:08:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:08:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:08:46 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:08:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:09:23 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:09:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 11:09:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:11:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:11:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:11:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:11:55 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:11:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Dec 2017 11:18:10 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 12 Dec 2017 11:18:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:18:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Dec 2017 11:18:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f604ae96ee784438143980e4b4e0f22d17634362066650aa6c64b937ef0ca635`  
		Last Modified: Tue, 12 Dec 2017 07:42:47 GMT  
		Size: 24.7 MB (24724295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ccbae1ae11177967fda6b128cd5d281eec517b5c779ee61aa2f942f4c628c`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9d2d007a1b4cc24e295c787ef116c98d33a535067b231fd854b30881061567`  
		Last Modified: Tue, 12 Dec 2017 11:39:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2afbd34df6cd1b991197242543e8970916dcd74d9d492a011b561ddc83af06`  
		Last Modified: Tue, 12 Dec 2017 11:39:30 GMT  
		Size: 14.7 MB (14650317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99ec2634066d865eebd3286f22edb86c11ec8ac751c0f05eed26cff83eff42`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ff622f1969cb74fbe88f2dcce45047c513bfd4703bc265b86193240b437f3`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 8.5 KB (8501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fd6a369e8e1edd2500cd654d0a56df124e05d84bf6955533bf3db877ef28c7`  
		Last Modified: Tue, 12 Dec 2017 11:39:37 GMT  
		Size: 59.3 MB (59266619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4b37a5f1f5f0d1ab67c8bb322d927ab5d14e9322bf4b197c04b295981897ed`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35b0d8b2fbcfeaa5a2a941906fc5e441da01b59bb23df8c53798850dc8cb40`  
		Last Modified: Tue, 12 Dec 2017 11:39:24 GMT  
		Size: 2.4 MB (2449724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf99175dd2d3ed595b3ac6ae9c8c78551e653e827d77259fb5ac4e42dd210ae`  
		Last Modified: Tue, 12 Dec 2017 11:39:39 GMT  
		Size: 77.7 MB (77701966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c21de491f6015951426f1795dcecfc68622ec03db3152dacdefbfe7ad05042`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c398086d76939647d62f2baced93a4629b5b429b69f51c663b3fc2c176277cf9`  
		Last Modified: Tue, 12 Dec 2017 11:40:32 GMT  
		Size: 12.8 MB (12760499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785176f52d9efdc5118ec7d7c29013c78d58a0207b7b314088484cc70d3dd465`  
		Last Modified: Tue, 12 Dec 2017 11:40:28 GMT  
		Size: 4.1 MB (4076918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:8a748ce0adf35534f99ebfe699fedbdfbd1edf6df8965440ff64207592d5b3fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:c769ee230f49a00a12c97162347f63ba7e8507ff57eff9072b85a12135e2691b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258928333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4238073787ac4fe007958e5619c54d32975ff72e49468fcb7fbbea88ae802828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:29:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:32:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:32:50 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:08:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:08:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:08:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:08:46 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:08:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:09:23 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:09:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 11:09:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:11:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:11:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:11:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:11:55 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:11:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Dec 2017 11:18:10 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 12 Dec 2017 11:18:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:18:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Dec 2017 11:18:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f604ae96ee784438143980e4b4e0f22d17634362066650aa6c64b937ef0ca635`  
		Last Modified: Tue, 12 Dec 2017 07:42:47 GMT  
		Size: 24.7 MB (24724295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ccbae1ae11177967fda6b128cd5d281eec517b5c779ee61aa2f942f4c628c`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9d2d007a1b4cc24e295c787ef116c98d33a535067b231fd854b30881061567`  
		Last Modified: Tue, 12 Dec 2017 11:39:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2afbd34df6cd1b991197242543e8970916dcd74d9d492a011b561ddc83af06`  
		Last Modified: Tue, 12 Dec 2017 11:39:30 GMT  
		Size: 14.7 MB (14650317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99ec2634066d865eebd3286f22edb86c11ec8ac751c0f05eed26cff83eff42`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ff622f1969cb74fbe88f2dcce45047c513bfd4703bc265b86193240b437f3`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 8.5 KB (8501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fd6a369e8e1edd2500cd654d0a56df124e05d84bf6955533bf3db877ef28c7`  
		Last Modified: Tue, 12 Dec 2017 11:39:37 GMT  
		Size: 59.3 MB (59266619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4b37a5f1f5f0d1ab67c8bb322d927ab5d14e9322bf4b197c04b295981897ed`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35b0d8b2fbcfeaa5a2a941906fc5e441da01b59bb23df8c53798850dc8cb40`  
		Last Modified: Tue, 12 Dec 2017 11:39:24 GMT  
		Size: 2.4 MB (2449724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf99175dd2d3ed595b3ac6ae9c8c78551e653e827d77259fb5ac4e42dd210ae`  
		Last Modified: Tue, 12 Dec 2017 11:39:39 GMT  
		Size: 77.7 MB (77701966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c21de491f6015951426f1795dcecfc68622ec03db3152dacdefbfe7ad05042`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c398086d76939647d62f2baced93a4629b5b429b69f51c663b3fc2c176277cf9`  
		Last Modified: Tue, 12 Dec 2017 11:40:32 GMT  
		Size: 12.8 MB (12760499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785176f52d9efdc5118ec7d7c29013c78d58a0207b7b314088484cc70d3dd465`  
		Last Modified: Tue, 12 Dec 2017 11:40:28 GMT  
		Size: 4.1 MB (4076918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:8a748ce0adf35534f99ebfe699fedbdfbd1edf6df8965440ff64207592d5b3fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:c769ee230f49a00a12c97162347f63ba7e8507ff57eff9072b85a12135e2691b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258928333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4238073787ac4fe007958e5619c54d32975ff72e49468fcb7fbbea88ae802828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:29:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:32:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:32:50 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:08:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:08:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:08:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:08:46 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:08:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:09:23 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:09:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 11:09:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:11:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:11:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:11:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:11:55 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:11:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Dec 2017 11:18:10 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 12 Dec 2017 11:18:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:18:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Dec 2017 11:18:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f604ae96ee784438143980e4b4e0f22d17634362066650aa6c64b937ef0ca635`  
		Last Modified: Tue, 12 Dec 2017 07:42:47 GMT  
		Size: 24.7 MB (24724295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ccbae1ae11177967fda6b128cd5d281eec517b5c779ee61aa2f942f4c628c`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9d2d007a1b4cc24e295c787ef116c98d33a535067b231fd854b30881061567`  
		Last Modified: Tue, 12 Dec 2017 11:39:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2afbd34df6cd1b991197242543e8970916dcd74d9d492a011b561ddc83af06`  
		Last Modified: Tue, 12 Dec 2017 11:39:30 GMT  
		Size: 14.7 MB (14650317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99ec2634066d865eebd3286f22edb86c11ec8ac751c0f05eed26cff83eff42`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ff622f1969cb74fbe88f2dcce45047c513bfd4703bc265b86193240b437f3`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 8.5 KB (8501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fd6a369e8e1edd2500cd654d0a56df124e05d84bf6955533bf3db877ef28c7`  
		Last Modified: Tue, 12 Dec 2017 11:39:37 GMT  
		Size: 59.3 MB (59266619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4b37a5f1f5f0d1ab67c8bb322d927ab5d14e9322bf4b197c04b295981897ed`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35b0d8b2fbcfeaa5a2a941906fc5e441da01b59bb23df8c53798850dc8cb40`  
		Last Modified: Tue, 12 Dec 2017 11:39:24 GMT  
		Size: 2.4 MB (2449724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf99175dd2d3ed595b3ac6ae9c8c78551e653e827d77259fb5ac4e42dd210ae`  
		Last Modified: Tue, 12 Dec 2017 11:39:39 GMT  
		Size: 77.7 MB (77701966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c21de491f6015951426f1795dcecfc68622ec03db3152dacdefbfe7ad05042`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c398086d76939647d62f2baced93a4629b5b429b69f51c663b3fc2c176277cf9`  
		Last Modified: Tue, 12 Dec 2017 11:40:32 GMT  
		Size: 12.8 MB (12760499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785176f52d9efdc5118ec7d7c29013c78d58a0207b7b314088484cc70d3dd465`  
		Last Modified: Tue, 12 Dec 2017 11:40:28 GMT  
		Size: 4.1 MB (4076918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:d0ddf6408a4c4e1b47d05b9a5a2194544a564c06d647f70520c51c08973db52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `redmine:latest` - linux; amd64

```console
$ docker pull redmine@sha256:ed398a8b18462d7ae488c8d2e92f38f4b94323cfc939e8fd9d4234ab3df5d60b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.1 MB (242090916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:996723b2271d20dad57f3d31ad1a6269af16ab3c07fcfc796890ba1c7c5d20ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:29:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:32:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:32:50 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:08:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:08:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:08:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:08:46 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:08:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:09:23 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:09:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 11:09:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:11:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:11:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:11:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:11:55 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:11:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f604ae96ee784438143980e4b4e0f22d17634362066650aa6c64b937ef0ca635`  
		Last Modified: Tue, 12 Dec 2017 07:42:47 GMT  
		Size: 24.7 MB (24724295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ccbae1ae11177967fda6b128cd5d281eec517b5c779ee61aa2f942f4c628c`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9d2d007a1b4cc24e295c787ef116c98d33a535067b231fd854b30881061567`  
		Last Modified: Tue, 12 Dec 2017 11:39:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2afbd34df6cd1b991197242543e8970916dcd74d9d492a011b561ddc83af06`  
		Last Modified: Tue, 12 Dec 2017 11:39:30 GMT  
		Size: 14.7 MB (14650317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99ec2634066d865eebd3286f22edb86c11ec8ac751c0f05eed26cff83eff42`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ff622f1969cb74fbe88f2dcce45047c513bfd4703bc265b86193240b437f3`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 8.5 KB (8501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fd6a369e8e1edd2500cd654d0a56df124e05d84bf6955533bf3db877ef28c7`  
		Last Modified: Tue, 12 Dec 2017 11:39:37 GMT  
		Size: 59.3 MB (59266619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4b37a5f1f5f0d1ab67c8bb322d927ab5d14e9322bf4b197c04b295981897ed`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35b0d8b2fbcfeaa5a2a941906fc5e441da01b59bb23df8c53798850dc8cb40`  
		Last Modified: Tue, 12 Dec 2017 11:39:24 GMT  
		Size: 2.4 MB (2449724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf99175dd2d3ed595b3ac6ae9c8c78551e653e827d77259fb5ac4e42dd210ae`  
		Last Modified: Tue, 12 Dec 2017 11:39:39 GMT  
		Size: 77.7 MB (77701966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c21de491f6015951426f1795dcecfc68622ec03db3152dacdefbfe7ad05042`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:6f968d8e81bf004895e883770f372914254e16afa830419d53809262f0dddefa
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235135170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e5a12bfb3cc8e8ed47db1f07bacff191a64daade3cebbc7931cbda57b6643f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:44:36 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:44:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:44:39 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:44:40 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 02:45:34 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 02:45:34 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 02:51:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 02:51:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 02:51:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 02:51:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 02:51:37 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 03:35:37 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 03:36:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:36:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 03:36:12 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 03:36:12 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 03:36:15 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 03:37:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 03:37:15 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 03:37:15 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 03:37:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 03:37:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 03:41:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 03:41:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 03:41:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 03:41:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 03:41:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 03:41:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ca26a032992f3ccea605255712e380724ee97d995532712911a6c5bee05e2f`  
		Last Modified: Tue, 10 Oct 2017 01:13:44 GMT  
		Size: 9.1 MB (9112320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d02a8041e5c1455c6ff301f8d783aa59c65262512de80f43b3dd4aa6638c56`  
		Last Modified: Tue, 10 Oct 2017 01:13:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179ea4737244be5f572da462b3c5705bab2143befb6455e4336bcd8d0e407760`  
		Last Modified: Wed, 29 Nov 2017 03:15:10 GMT  
		Size: 24.5 MB (24483509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ced734833d0751f11706a7c22921175ad89ab3abdfbf8fb0f0dea144ecd5ea`  
		Last Modified: Wed, 29 Nov 2017 03:15:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8ee29af941d7de19d192ab4259ea30796ff26211bea73b25e76987e71eb29a`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58cba304d0f2c108938d18959720674f353aec0ac38de3b665de962528498423`  
		Last Modified: Wed, 29 Nov 2017 03:53:09 GMT  
		Size: 14.3 MB (14347359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593e1fe9d4684177d51cccc210e4730aeec65b083f553f1a06ecf6ee8889d0e4`  
		Last Modified: Wed, 29 Nov 2017 03:53:05 GMT  
		Size: 491.1 KB (491128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1a96819f4195e3a2ebde299f49b32dbe208a1b8cdb14dbfb2e6127c85ab0c0`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 7.8 KB (7841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355e66b9387dcf98fa1a7a0894720236d9d0944e17e37b51205fcb102b378d82`  
		Last Modified: Wed, 29 Nov 2017 03:53:26 GMT  
		Size: 56.6 MB (56571351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3754cf5b9d29327dd282bb5698cb31cd4db874059c4cf19ac91dc3db78b4195c`  
		Last Modified: Wed, 29 Nov 2017 03:53:03 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67b5d283d650a6af8d3e7dc7d8e0ad5b5175d8a22abc50740665aac632e7110`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 2.5 MB (2450388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e509a1affd384340033278c59bcf749e1666df622600502e366b835d47e9b174`  
		Last Modified: Wed, 29 Nov 2017 03:53:21 GMT  
		Size: 76.8 MB (76787012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77e61d6a1508e609ec515fc36271ef779118a525489372468278a0ea6ec0898`  
		Last Modified: Wed, 29 Nov 2017 03:53:04 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:68f9abb0c5f1c4e0fbe19ebf167ea6e5d0eacc4b0a09000eb2805d87c0a738fe
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229590045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cce26d7f9acb68b26cd7d40ff346dc3856c755a9e10512fcda4cd989a47afc7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 17:08:07 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 17:08:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 17:08:23 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 17:08:34 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 17:08:44 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 17:08:54 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 17:08:54 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 17:14:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 17:14:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 17:14:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 17:15:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 17:15:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 17:15:17 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 18:32:33 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 18:33:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:33:05 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 18:33:08 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 18:33:08 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 18:33:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 18:34:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 18:34:12 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 18:34:12 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 18:34:12 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 18:34:13 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 18:34:18 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 18:38:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 18:38:37 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 18:38:37 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 18:38:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 18:38:48 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 18:38:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b41084e68f019cf25fc21277834dad58a0e63a1acea15bb76ce9aeb16db79`  
		Last Modified: Tue, 12 Dec 2017 17:46:13 GMT  
		Size: 8.8 MB (8784106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8599123364a4e5aefe51b6627a289468e3813d42d5bc1afde40604c0f1c3255a`  
		Last Modified: Tue, 12 Dec 2017 17:46:10 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c72aedb8b4b2a0b291b1bc898df0d835218c40f8735512eb8ca7e1933208ef`  
		Last Modified: Tue, 12 Dec 2017 17:46:18 GMT  
		Size: 24.4 MB (24358002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad109c8960fde3d54a85b6a8799ffa23af42788d495b35aa613931ae3a76b8a`  
		Last Modified: Tue, 12 Dec 2017 17:46:09 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458b1027829d187f6c0828f1ac76d5294db76e8a5c70157a83697e3c14633e7f`  
		Last Modified: Tue, 12 Dec 2017 18:51:25 GMT  
		Size: 2.1 KB (2083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a56916c0018f784f10535bcf91b9e8234b7bbe1cfcd67eafd8296bdd47a43`  
		Last Modified: Tue, 12 Dec 2017 18:51:29 GMT  
		Size: 14.1 MB (14134516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759c29e24f85dad0b2499a4e31292f7f62eeadfe6c6323ba354fa0e842192ba8`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 475.3 KB (475269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7a801c933c32dbaa8067af92939c6badccd9b25ca4310a11207a1c71a867e6`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 7.3 KB (7310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d126b20f90f0a5f9d4e769907a634d26c6e8b465848822d35ab6049cb2c01efe`  
		Last Modified: Tue, 12 Dec 2017 18:51:40 GMT  
		Size: 54.3 MB (54343951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05655c680f8a7db6fa3266e880ef324c3c80966b163485b5d570bd72c0cff43e`  
		Last Modified: Tue, 12 Dec 2017 18:51:22 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6da5b6b62f3ea514b458d43899d8cf600cb2e05add7d76ea06d428d56d0353`  
		Last Modified: Tue, 12 Dec 2017 18:51:24 GMT  
		Size: 2.5 MB (2450398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb5da03c73f85986c5e5cb9822c0472be125309cf7a1df413021b998c6ea159`  
		Last Modified: Tue, 12 Dec 2017 18:51:41 GMT  
		Size: 76.3 MB (76340376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8798ae73dd16d3c3f987a538a61ad7114afd2b16da68268b4470ef7f1360c71d`  
		Last Modified: Tue, 12 Dec 2017 18:51:22 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:addc09881c85f8c3b7b6bce7a534ad84591ac4786042afe803638db11b5dd907
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (233959349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f95606782166eb745c0f9fd18c973435b8001a87e8c36489f10942b26c8463e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:42:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:42:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:42:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:42:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 22:21:48 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 22:21:48 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 22:31:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 22:31:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 22:31:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 22:31:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 22:31:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 22:31:19 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 23:48:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 23:49:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 23:49:24 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 23:49:28 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 23:49:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 23:49:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 23:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 23:51:13 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 23:51:14 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 23:51:14 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 23:51:15 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 23:51:20 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 30 Nov 2017 00:00:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 30 Nov 2017 00:00:07 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 30 Nov 2017 00:00:08 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Thu, 30 Nov 2017 00:00:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Nov 2017 00:00:12 GMT
EXPOSE 3000/tcp
# Thu, 30 Nov 2017 00:00:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb9deb0992b3c3191331d2f1ee15b8957d46e6792d6904c593be6b29935c3ab`  
		Last Modified: Tue, 10 Oct 2017 08:43:54 GMT  
		Size: 9.3 MB (9332858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d0c7a7a38998f8780fbb4422cf52a5fdb996dac324c47f96d12414e07ca1a2`  
		Last Modified: Tue, 10 Oct 2017 08:43:39 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2227776c3ec6362e4c4f1121e213193523f8a94c5f8defdf3b91df017f3b967c`  
		Last Modified: Wed, 29 Nov 2017 23:21:06 GMT  
		Size: 24.7 MB (24668103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc0e07c76e0a26ce16cd49f66c955e3f72d18a23e070407f99adf4ab437013b`  
		Last Modified: Wed, 29 Nov 2017 23:20:55 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0165ddc176cd64bd625c505f61d69d2a3f645a1c26b320f743dc16daa554189`  
		Last Modified: Thu, 30 Nov 2017 00:24:51 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eba3fd7779d562b974f54c293d74359359001a94edc6e162c8571019c4d6c62`  
		Last Modified: Thu, 30 Nov 2017 00:24:56 GMT  
		Size: 14.5 MB (14462643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30962df026b0aa96467c33a73c4a6b5f0ef32474648912afb933e874bd745f34`  
		Last Modified: Thu, 30 Nov 2017 00:24:50 GMT  
		Size: 468.7 KB (468701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c17b2fb08e724f6095008dfccfd09c20edda89bfe9ca8ad3504356f607e8279`  
		Last Modified: Thu, 30 Nov 2017 00:24:49 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5e7d93c0a0bfa419b38d7f97569bd22fdd62741875f8110f848f550e11594ed`  
		Last Modified: Thu, 30 Nov 2017 00:25:08 GMT  
		Size: 55.8 MB (55785821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63eaa6a04fd57b4a631961253f269382287bcc81044dfb300e129bed1f97f796`  
		Last Modified: Thu, 30 Nov 2017 00:24:47 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6479aff9188e35ce25b4bb917cccb36e30ef8a0f3fd37e6805b1df7bad0e49e`  
		Last Modified: Thu, 30 Nov 2017 00:24:49 GMT  
		Size: 2.4 MB (2449729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c92b90f267f25da42232a69ede1c2ca36d44eb73356c2f0b4c2138ae5d1b38`  
		Last Modified: Thu, 30 Nov 2017 00:26:05 GMT  
		Size: 76.8 MB (76849718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e520587212c6f106b8425234d9ef89aee370fea11175d9e1350f3b69f5f425a`  
		Last Modified: Thu, 30 Nov 2017 00:24:47 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:44b13c8d466c6445c050a1bb2c4dc64f31f84faffad4f4328888c78fc383800f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245866473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86389fee9180696c76db1a6a637972ba4b26d3fe2ef698950aafef50b3b6a270`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:52:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:52:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:52:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:52:31 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 04:08:08 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 04:08:08 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 04:12:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 04:12:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 04:12:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 04:12:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 04:12:10 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 05:11:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 05:11:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:11:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 05:11:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 05:11:47 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 05:11:49 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 05:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 05:12:47 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 05:12:47 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 05:12:47 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 05:12:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 05:15:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 05:15:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 05:15:38 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 05:15:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 05:15:39 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 05:15:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b245b3d81726ad922f57b42d3d3ae158b3f9b0d5b857393cd7f0bbcdc7288c2`  
		Last Modified: Tue, 10 Oct 2017 03:24:41 GMT  
		Size: 14.6 MB (14627562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fedfa5820000b970d1b2e0cc60aae6fcde93fc6f7881668acad61bae074cca0`  
		Last Modified: Tue, 10 Oct 2017 03:24:37 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d606874a95f77a281a95ea62aecc6652e267ab2ad0d20ee2abe625c0108ea6a`  
		Last Modified: Wed, 29 Nov 2017 04:47:48 GMT  
		Size: 23.7 MB (23707414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b3b5e60949389e180d533eefbb7fb23c3814ffe2dc87fb4d356431d68e097`  
		Last Modified: Wed, 29 Nov 2017 04:47:40 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6290ab79572fcdca52bc6d4dedfe3f2a6c32bbd8fa40110ee26b2b650a6fdc14`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 2.1 KB (2092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8907d7b491156601acd90d0bbd05dcf53369287764f4f32decae43da940dfe`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 14.8 MB (14817396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0bdebc662d70bd06cecd81a4c20122dd591b2ba2ace4e6f085a0b7b4cce465`  
		Last Modified: Wed, 29 Nov 2017 05:36:25 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea035533dab2cebad7ee27b3db7987cebb653a0129f7ed3121fe8e07961f1e1`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 8.6 KB (8564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab9bed729e63931113d8749301a61b0789c36c5555e389ae0426c271f612478`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 60.1 MB (60111462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b2d57c91aa6b268ad6bfc48c017655c9cdf076e23092da03a220fb7d787bd9`  
		Last Modified: Wed, 29 Nov 2017 05:36:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23cfd68b0fc24d07e4046edfc414d177dff85d55d28bbafd83d9e4fa3493baf`  
		Last Modified: Wed, 29 Nov 2017 05:36:29 GMT  
		Size: 2.4 MB (2449741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05e2e1eda9fbe74fd148246a53dfbac200c88c6dc7602ee40ad3b95dbdec5b1`  
		Last Modified: Wed, 29 Nov 2017 05:36:46 GMT  
		Size: 76.9 MB (76885610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5aa498c25050d6fd9f7d3e7fe9378b05c0c96f7a9ed7c7d8f38b352fa23b486`  
		Last Modified: Wed, 29 Nov 2017 05:36:23 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:06b583e1b1ba3ab83c95222d31184dd87711df70a0a36b4024d07c963dfc7fd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240752720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d896b06c401427d9c3645302c885c62deb465818dfa2bb287c7c9ace6b77e606`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:31:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:31:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:31:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:31:20 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:31:22 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:31:24 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:31:27 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:46:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:46:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:46:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:46:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:46:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:46:54 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 13:32:03 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 13:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:32:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 13:32:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 13:32:54 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 13:32:59 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 13:36:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 13:36:21 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 13:36:22 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 13:36:23 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 13:36:25 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 13:36:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 13:47:10 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 13:47:12 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 13:47:13 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 13:47:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 13:47:16 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 13:47:17 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ae982691aa906d43336b6ca92b76ceba4c216f15080c45cc16486ab60bc7b6`  
		Last Modified: Tue, 12 Dec 2017 08:36:03 GMT  
		Size: 10.2 MB (10156016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a2b683db99e62428a6fff67dba72b88e09a7219006fdd924825ec78a77923`  
		Last Modified: Tue, 12 Dec 2017 08:35:54 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbc821e42be3df18a8ebd892a9228209f29a4c16812da6e9d1576ede0677e525`  
		Last Modified: Tue, 12 Dec 2017 08:36:07 GMT  
		Size: 25.2 MB (25169131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09da9bd5b0a1dbf8b88924e45347110a717a7bd381d81e45da4904889d36fb9f`  
		Last Modified: Tue, 12 Dec 2017 08:35:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f301e969c0236a54bc20c8892975762c767a0a0e01fba7ad7314aad4f9da7`  
		Last Modified: Tue, 12 Dec 2017 14:15:16 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518dcbc66e6ed4cc87bae6a527d3e67d01760db78314f45e0b000a32e19cc7bc`  
		Last Modified: Tue, 12 Dec 2017 14:15:17 GMT  
		Size: 14.7 MB (14720904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ac56c23f77fac25e7aaed9da38c980070e1c636ae764ded679f6251f71ec83`  
		Last Modified: Tue, 12 Dec 2017 14:15:12 GMT  
		Size: 469.8 KB (469845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f957941330ff684841723121af364da2c9af59b04f4c696da87dc17e128f63`  
		Last Modified: Tue, 12 Dec 2017 14:15:12 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95004aeb23849070241696c0d4ee230663894d1ab2fe2696008c167ad3825fdb`  
		Last Modified: Tue, 12 Dec 2017 14:15:25 GMT  
		Size: 58.1 MB (58127224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fca6de94f887ce0c08d6e05ae290a5de8a7ba610b38336b040108746cde80bd`  
		Last Modified: Tue, 12 Dec 2017 14:15:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d05030113c23fb46f2145c57d58167aa0add6e0d4285a45002cbcc31a6d93c6`  
		Last Modified: Tue, 12 Dec 2017 14:15:10 GMT  
		Size: 2.5 MB (2450387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f9cb62f3f47435d80994c72c3273bf43e99df4d7a5ed957f7218b2fa295a10`  
		Last Modified: Tue, 12 Dec 2017 14:15:25 GMT  
		Size: 77.8 MB (77837201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a719e77ea2befeaff5c8a4cdf5941e1de9ecf05c0d28acccc8beb9245b54e61`  
		Last Modified: Tue, 12 Dec 2017 14:15:10 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:5427407fea74009d757762b807075c30871317b91f9ec1df560a75cbde3bd29f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244737088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c668a254a4bdd63e46f6e2227a1323576949f2f4cae692d2b7807600bfc1e7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:59:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:59:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:59:56 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:59:57 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 29 Nov 2017 09:45:47 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:45:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:49:00 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:49:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:49:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:49:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:49:02 GMT
CMD ["irb"]
# Wed, 29 Nov 2017 10:26:32 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 29 Nov 2017 10:26:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:26:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 29 Nov 2017 10:26:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 29 Nov 2017 10:26:46 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 29 Nov 2017 10:26:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 29 Nov 2017 10:27:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 Nov 2017 10:27:21 GMT
ENV RAILS_ENV=production
# Wed, 29 Nov 2017 10:27:21 GMT
WORKDIR /usr/src/redmine
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 29 Nov 2017 10:27:22 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 29 Nov 2017 10:27:25 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 29 Nov 2017 10:29:52 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 29 Nov 2017 10:29:52 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 29 Nov 2017 10:29:53 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Wed, 29 Nov 2017 10:29:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Nov 2017 10:29:53 GMT
EXPOSE 3000/tcp
# Wed, 29 Nov 2017 10:29:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf8aa5961a767b579c9aa37b3d69ef90083b51d39cad7dd36ccf0a5c352e4d0`  
		Last Modified: Tue, 10 Oct 2017 00:16:49 GMT  
		Size: 10.0 MB (9960225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9dccaad64d4b878f094ea772d89458091747cfd070b6615bf67a0ead18ab18`  
		Last Modified: Tue, 10 Oct 2017 00:16:47 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d4ee3f2152ec599a26f35e14003e134c639db2f56399563c1726a8b7a8d29a`  
		Last Modified: Wed, 29 Nov 2017 10:07:07 GMT  
		Size: 25.1 MB (25111185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951848c9263d526779afb0312759897b5d73819b19ac1c2f12c68ccc05a977af`  
		Last Modified: Wed, 29 Nov 2017 10:07:02 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72fe2550444116bdfc46721f26860f83c0422bc33bcef6ae8b9f3bf3ed8ea5c1`  
		Last Modified: Wed, 29 Nov 2017 10:36:10 GMT  
		Size: 2.1 KB (2103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0a53223f31c10d034019dc8488f9dfdeb46f2b9429098d6c65b8600ca2146c`  
		Last Modified: Wed, 29 Nov 2017 10:36:13 GMT  
		Size: 14.8 MB (14815027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9639d76a25bbb1bf06d9c487892a8fbf3e296a2092f5ce2386481188b883a3b3`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 486.8 KB (486816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2384c1671418080426f0bfbe9e5f1fb477aa230e26f16add728b943e7aa110d1`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 8.6 KB (8625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc25ea638c611e9ac4370c065dcf7c96dd948eaa929af93a4987c15e30ae5041`  
		Last Modified: Wed, 29 Nov 2017 10:36:20 GMT  
		Size: 59.1 MB (59082388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cac7b2191e12520e7d79b4d3181176f37aa11dc9b83516e15a1d22ff7be7496`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604cd9a3a7a58f7575f3dbbdda98a97ef30bdad45c3fd0882bfc4d00c1919b35`  
		Last Modified: Wed, 29 Nov 2017 10:36:09 GMT  
		Size: 2.4 MB (2449744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7dc1025ef8f402bce9c33dcf7b8deed5d54a790d5498120ec36c1397807bc`  
		Last Modified: Wed, 29 Nov 2017 10:36:24 GMT  
		Size: 80.0 MB (80029892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b060c1b16c6a3d0a51649ba9382c820351a8a386d6828b571fa3825bf621ea1`  
		Last Modified: Wed, 29 Nov 2017 10:36:08 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:8a748ce0adf35534f99ebfe699fedbdfbd1edf6df8965440ff64207592d5b3fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:c769ee230f49a00a12c97162347f63ba7e8507ff57eff9072b85a12135e2691b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258928333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4238073787ac4fe007958e5619c54d32975ff72e49468fcb7fbbea88ae802828`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:29:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:29:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:29:29 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 12 Dec 2017 07:29:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Tue, 12 Dec 2017 07:29:30 GMT
ENV BUNDLER_VERSION=1.16.0
# Tue, 12 Dec 2017 07:32:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 12 Dec 2017 07:32:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Dec 2017 07:32:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 07:32:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Dec 2017 07:32:50 GMT
CMD ["irb"]
# Tue, 12 Dec 2017 11:08:29 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 12 Dec 2017 11:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:08:41 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 11:08:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 12 Dec 2017 11:08:46 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 12 Dec 2017 11:08:48 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 12 Dec 2017 11:09:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 11:09:23 GMT
ENV RAILS_ENV=production
# Tue, 12 Dec 2017 11:09:23 GMT
WORKDIR /usr/src/redmine
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 12 Dec 2017 11:09:24 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Tue, 12 Dec 2017 11:09:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 12 Dec 2017 11:11:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:11:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 12 Dec 2017 11:11:55 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Tue, 12 Dec 2017 11:11:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 12 Dec 2017 11:11:55 GMT
EXPOSE 3000/tcp
# Tue, 12 Dec 2017 11:11:55 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 12 Dec 2017 11:18:10 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 12 Dec 2017 11:18:28 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 12 Dec 2017 11:18:29 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 12 Dec 2017 11:18:29 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5e933f26566c8d3c5148dfb15fe65c216e6ca4a4f49322dc9e1be3e1ecb453`  
		Last Modified: Tue, 12 Dec 2017 07:42:43 GMT  
		Size: 10.2 MB (10184822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d8409825c17a94357118c91daedf678cc6a77da5732fd30ce36574ccf24ecd`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f604ae96ee784438143980e4b4e0f22d17634362066650aa6c64b937ef0ca635`  
		Last Modified: Tue, 12 Dec 2017 07:42:47 GMT  
		Size: 24.7 MB (24724295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ccbae1ae11177967fda6b128cd5d281eec517b5c779ee61aa2f942f4c628c`  
		Last Modified: Tue, 12 Dec 2017 07:42:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9d2d007a1b4cc24e295c787ef116c98d33a535067b231fd854b30881061567`  
		Last Modified: Tue, 12 Dec 2017 11:39:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2afbd34df6cd1b991197242543e8970916dcd74d9d492a011b561ddc83af06`  
		Last Modified: Tue, 12 Dec 2017 11:39:30 GMT  
		Size: 14.7 MB (14650317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb99ec2634066d865eebd3286f22edb86c11ec8ac751c0f05eed26cff83eff42`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044ff622f1969cb74fbe88f2dcce45047c513bfd4703bc265b86193240b437f3`  
		Last Modified: Tue, 12 Dec 2017 11:39:23 GMT  
		Size: 8.5 KB (8501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fd6a369e8e1edd2500cd654d0a56df124e05d84bf6955533bf3db877ef28c7`  
		Last Modified: Tue, 12 Dec 2017 11:39:37 GMT  
		Size: 59.3 MB (59266619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4b37a5f1f5f0d1ab67c8bb322d927ab5d14e9322bf4b197c04b295981897ed`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35b0d8b2fbcfeaa5a2a941906fc5e441da01b59bb23df8c53798850dc8cb40`  
		Last Modified: Tue, 12 Dec 2017 11:39:24 GMT  
		Size: 2.4 MB (2449724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf99175dd2d3ed595b3ac6ae9c8c78551e653e827d77259fb5ac4e42dd210ae`  
		Last Modified: Tue, 12 Dec 2017 11:39:39 GMT  
		Size: 77.7 MB (77701966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c21de491f6015951426f1795dcecfc68622ec03db3152dacdefbfe7ad05042`  
		Last Modified: Tue, 12 Dec 2017 11:39:20 GMT  
		Size: 1.7 KB (1706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c398086d76939647d62f2baced93a4629b5b429b69f51c663b3fc2c176277cf9`  
		Last Modified: Tue, 12 Dec 2017 11:40:32 GMT  
		Size: 12.8 MB (12760499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785176f52d9efdc5118ec7d7c29013c78d58a0207b7b314088484cc70d3dd465`  
		Last Modified: Tue, 12 Dec 2017 11:40:28 GMT  
		Size: 4.1 MB (4076918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
