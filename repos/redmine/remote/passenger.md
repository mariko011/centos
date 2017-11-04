## `redmine:passenger`

```console
$ docker pull redmine@sha256:ddb731784b5f364a52f94fe7c1ade9a150772854ddd707bffe355069abbd9006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:d68a734de6a71997282ac882a103361dac80b96598fef8ca190914e74fe99b3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258576598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8135b5ad5c3727e06e9c0487bc2b80eee9dae6c5996612b334be0973077cf2b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 05:58:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:58:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_MAJOR=2.4
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_VERSION=2.4.2
# Sat, 04 Nov 2017 05:58:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Sat, 04 Nov 2017 05:58:14 GMT
ENV RUBYGEMS_VERSION=2.7.0
# Sat, 04 Nov 2017 05:58:14 GMT
ENV BUNDLER_VERSION=1.16.0
# Sat, 04 Nov 2017 06:01:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 04 Nov 2017 06:01:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 04 Nov 2017 06:01:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 04 Nov 2017 06:01:41 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 06:01:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 04 Nov 2017 06:01:42 GMT
CMD ["irb"]
# Sat, 04 Nov 2017 08:35:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 04 Nov 2017 08:36:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:36:12 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 08:36:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 04 Nov 2017 08:36:16 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 04 Nov 2017 08:36:19 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 04 Nov 2017 08:36:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 08:36:51 GMT
ENV RAILS_ENV=production
# Sat, 04 Nov 2017 08:36:51 GMT
WORKDIR /usr/src/redmine
# Sat, 04 Nov 2017 08:36:51 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 04 Nov 2017 08:36:51 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 04 Nov 2017 08:36:55 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 04 Nov 2017 08:39:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 08:39:19 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 04 Nov 2017 08:39:19 GMT
COPY file:c528f0ec041fb8cc2ac2be3e5ef52d70d1dcd0b5aa20216909017d412967719a in / 
# Sat, 04 Nov 2017 08:39:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 04 Nov 2017 08:39:20 GMT
EXPOSE 3000/tcp
# Sat, 04 Nov 2017 08:39:20 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Sat, 04 Nov 2017 08:39:35 GMT
ENV PASSENGER_VERSION=5.1.11
# Sat, 04 Nov 2017 08:39:51 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 04 Nov 2017 08:39:52 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Sat, 04 Nov 2017 08:39:53 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a46e15c564acb884f00c5973578d261e1ab3899cc1685ecc123f6a18921d8d`  
		Last Modified: Sat, 04 Nov 2017 06:30:45 GMT  
		Size: 10.2 MB (10162034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ad831b974352297cb8571ff3c1f0a266bcc6d919729e24d1281edc033c3a92`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460785dba7d40f76f8bcc5fd00a5d65cdec267a85163486a47ba12dae7ae91a9`  
		Last Modified: Sat, 04 Nov 2017 06:30:52 GMT  
		Size: 24.7 MB (24681036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a7022e26fd05812adebfda921ff341507031b603a5b2d326954159d313a631`  
		Last Modified: Sat, 04 Nov 2017 06:30:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d974a8de753d21b0d9999c596952c3d51a5461af6efbff98af91789b6464be84`  
		Last Modified: Sat, 04 Nov 2017 08:47:25 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4340f00313d54680aaedb966ae358ba1907e7c5c9e4fdd89b12ce2d7bcb94130`  
		Last Modified: Sat, 04 Nov 2017 08:47:26 GMT  
		Size: 14.7 MB (14650127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b71de78a56ec0d6fbe064781575812be361ee954e44c8309a6e5bbcf649aaa`  
		Last Modified: Sat, 04 Nov 2017 08:47:23 GMT  
		Size: 500.7 KB (500660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c84a4b9c23b7339af014861329ffcc6f3925737723d4d26f0119ff473ea49ed9`  
		Last Modified: Sat, 04 Nov 2017 08:47:22 GMT  
		Size: 8.5 KB (8504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe69a942b238d8561d43157528f6d56e1199d674931df216fa3e92fbc7d84cc`  
		Last Modified: Sat, 04 Nov 2017 08:47:37 GMT  
		Size: 59.2 MB (59228294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9564a34a1e72096cf47df65219c9405f2ec82e43c294764c5e5f4f0c5beb2b51`  
		Last Modified: Sat, 04 Nov 2017 08:47:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba034faa6b46c267213644ce8ff3fc78b0b8696c41461ce5734bc12a9853b941`  
		Last Modified: Sat, 04 Nov 2017 08:47:20 GMT  
		Size: 2.4 MB (2449710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996207e0f36ef66260375a59a875998495155231f1607504b30e6229b9fda370`  
		Last Modified: Sat, 04 Nov 2017 08:47:34 GMT  
		Size: 77.5 MB (77470656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a58b8648eac8bf669de8d30a53551495b9e6a04cde31394904ef718a8ef394c`  
		Last Modified: Sat, 04 Nov 2017 08:47:20 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef142b9e90378209008be618afc0c4de0fa66db6410900db5df71c153e84c98`  
		Last Modified: Sat, 04 Nov 2017 08:48:00 GMT  
		Size: 12.8 MB (12750504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe793302028ceda40d968d03c035bd8de94bdb91e10214f34eef476efebe0286`  
		Last Modified: Sat, 04 Nov 2017 08:47:58 GMT  
		Size: 4.1 MB (4075634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
