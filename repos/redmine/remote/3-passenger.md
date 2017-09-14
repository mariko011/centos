## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:77a0f2fec58252d7f29a529d570b2cfead561980ee8bfd8dde2586974ef626e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:912180d7b397be7e60435a3384efbc22ec15c82f411d8ed97027905209e83a4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259772362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38f1fe4975f61b1bd891f38bd1771ad3041c4256c211f3faeccf01b7cb8cd19`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:59:15 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:59:16 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_MAJOR=2.4
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_VERSION=2.4.1
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Thu, 14 Sep 2017 02:59:17 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Thu, 14 Sep 2017 03:05:34 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 14 Sep 2017 03:05:34 GMT
ENV BUNDLER_VERSION=1.15.4
# Thu, 14 Sep 2017 03:05:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 14 Sep 2017 03:05:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 14 Sep 2017 03:05:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 14 Sep 2017 03:05:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Sep 2017 03:05:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 14 Sep 2017 03:05:38 GMT
CMD ["irb"]
# Thu, 14 Sep 2017 05:15:23 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Thu, 14 Sep 2017 05:15:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 05:15:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 14 Sep 2017 05:15:58 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Thu, 14 Sep 2017 05:15:59 GMT
ENV TINI_VERSION=v0.16.1
# Thu, 14 Sep 2017 05:16:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Thu, 14 Sep 2017 05:16:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 05:16:59 GMT
ENV RAILS_ENV=production
# Thu, 14 Sep 2017 05:17:00 GMT
WORKDIR /usr/src/redmine
# Thu, 14 Sep 2017 05:17:00 GMT
ENV REDMINE_VERSION=3.4.2
# Thu, 14 Sep 2017 05:17:00 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Thu, 14 Sep 2017 05:17:05 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Thu, 14 Sep 2017 05:21:33 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Sep 2017 05:21:34 GMT
VOLUME [/usr/src/redmine/files]
# Thu, 14 Sep 2017 05:21:34 GMT
COPY file:48ac4da47b7f343106bccb51ed58f7693c40d728da4301b808bf2ce826c7c41d in / 
# Thu, 14 Sep 2017 05:21:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Sep 2017 05:21:35 GMT
EXPOSE 3000/tcp
# Thu, 14 Sep 2017 05:21:35 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Thu, 14 Sep 2017 05:23:40 GMT
ENV PASSENGER_VERSION=5.1.8
# Thu, 14 Sep 2017 05:24:22 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Thu, 14 Sep 2017 05:24:24 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Thu, 14 Sep 2017 05:24:24 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237a1e0ccc9352231fddd1758a91657e79fe89f4fd7904871f888576a51782df`  
		Last Modified: Thu, 14 Sep 2017 03:52:29 GMT  
		Size: 10.2 MB (10161348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3db0faddae6c97ab63de5d95e66104d5532e514cc689fa7d60127ea72d2fa1b`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a629e4783437e748a06803d4717662c8e48acc023132e08423351b9efef9b56f`  
		Last Modified: Thu, 14 Sep 2017 03:52:35 GMT  
		Size: 23.5 MB (23539099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8102d346b81076e07f2abcceec1819aabacfe4a7d9a14f887c30d9c8bf20b9e2`  
		Last Modified: Thu, 14 Sep 2017 03:52:24 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3861e003f4b22fd57da758f0f20e0b245e405189c8251bcf3186f4af6cbeee`  
		Last Modified: Thu, 14 Sep 2017 03:52:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541b8dddd33c768ce32384572d99a35cc4e469f7ecd5e7436449164b77887217`  
		Last Modified: Thu, 14 Sep 2017 05:46:41 GMT  
		Size: 2.1 KB (2098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53d13e02842f641b93b41371539a035b3506023e581ef5e75e06f336ecf2a87`  
		Last Modified: Thu, 14 Sep 2017 05:46:48 GMT  
		Size: 14.7 MB (14650230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96c47da38b3641fd23816653f9f00e2839e72eb5e822a650c521d06d90555b9`  
		Last Modified: Thu, 14 Sep 2017 05:46:39 GMT  
		Size: 500.7 KB (500669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e192ef71119dec166656eac6939c1e042783e0fa7714a182cc908c9507c2f387`  
		Last Modified: Thu, 14 Sep 2017 05:46:39 GMT  
		Size: 8.5 KB (8503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0833f6bdd1ee95ad28270d728916b2c7ed4914521515dc627a5800d12637b0ca`  
		Last Modified: Thu, 14 Sep 2017 05:47:06 GMT  
		Size: 59.2 MB (59237206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ffb1e0cfe7ca1ebfb637edd1b2c54a0889648acc3da3c2608d6b091650f214`  
		Last Modified: Thu, 14 Sep 2017 05:46:36 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091922b14d0c7ef466b94f48456a4f5005cd811b113e7f989318942aaa6b5b46`  
		Last Modified: Thu, 14 Sep 2017 05:46:40 GMT  
		Size: 2.4 MB (2448159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f33b2e65d30ae4ced34dcd13c1fd3a6f6e780e06082de046a4ac2fa8ba8bf3`  
		Last Modified: Thu, 14 Sep 2017 05:47:05 GMT  
		Size: 76.7 MB (76740285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79972f636b7af727e743fcb369608ab5373958861345da994d838443a76e7142`  
		Last Modified: Thu, 14 Sep 2017 05:46:36 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce51b658ce2e7996b498e6da87064e5ddfd33ffe6a57fe39b031ebd07398da8b`  
		Last Modified: Thu, 14 Sep 2017 05:47:46 GMT  
		Size: 14.9 MB (14936001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840d3862b8573358c428ea6eb73bbfed68b2f2008f0aaa917d022d37ae94d7cb`  
		Last Modified: Thu, 14 Sep 2017 05:47:40 GMT  
		Size: 4.3 MB (4273935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
