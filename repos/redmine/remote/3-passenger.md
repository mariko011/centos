## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:3f0132e04994fdc02f838eef9e57a36a2e21f026803afa847dac6f530006710a
```

-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259050085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da68b79d184d7a16a55a442a94611df11ad78b592d6c295dfbdb22f1602b8740`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["passenger","start"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Jul 2017 23:27:27 GMT
ENV BUNDLER_VERSION=1.15.2
# Tue, 18 Jul 2017 23:27:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Jul 2017 23:27:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Jul 2017 23:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jul 2017 23:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Jul 2017 23:27:34 GMT
CMD ["irb"]
# Tue, 18 Jul 2017 23:42:02 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 18 Jul 2017 23:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:17 GMT
ENV GOSU_VERSION=1.7
# Tue, 18 Jul 2017 23:42:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 18 Jul 2017 23:42:22 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 18 Jul 2017 23:42:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 18 Jul 2017 23:42:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jul 2017 23:42:56 GMT
ENV RAILS_ENV=production
# Tue, 18 Jul 2017 23:42:56 GMT
WORKDIR /usr/src/redmine
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_VERSION=3.4.2
# Tue, 18 Jul 2017 23:42:57 GMT
ENV REDMINE_DOWNLOAD_MD5=2980b80e9acc81c01c06adb86eb4f37d
# Tue, 18 Jul 2017 23:43:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 18 Jul 2017 23:45:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:45:45 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 18 Jul 2017 23:45:46 GMT
COPY file:48b9246df3a0fcea0cca2c906055aaebc7448368e432f06a50823d722fd7c9ce in / 
# Tue, 18 Jul 2017 23:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Jul 2017 23:45:47 GMT
EXPOSE 3000/tcp
# Tue, 18 Jul 2017 23:45:48 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 18 Jul 2017 23:45:56 GMT
ENV PASSENGER_VERSION=5.1.5
# Tue, 18 Jul 2017 23:46:13 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Jul 2017 23:46:15 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 18 Jul 2017 23:46:15 GMT
CMD ["passenger" "start"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64782b2a92d7169e75dc0324da36aef00efdd6026c3d137ec2ce7469ee998281`  
		Last Modified: Tue, 18 Jul 2017 23:33:06 GMT  
		Size: 673.2 KB (673158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:380cc3cfd27d113113da29f527b1b53173068667759836a746db4b350bf1ae7c`  
		Last Modified: Tue, 18 Jul 2017 23:33:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e890a2d4ce7dcf6c5861042440c8ec8eea7b1ffc8e7d81a34f353ef9e67611c`  
		Last Modified: Tue, 18 Jul 2017 23:56:16 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd56b15c618821c15bfdcd9cc2121fed6d85cab19e8ff6b9e1efac824f3b436`  
		Last Modified: Tue, 18 Jul 2017 23:56:18 GMT  
		Size: 14.4 MB (14421898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d66b3d31b6ef8ef198df0cd421ead690068cb9556119051259889b12a0cb33`  
		Last Modified: Tue, 18 Jul 2017 23:56:15 GMT  
		Size: 818.8 KB (818802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5845b7e772419fdb562436140c27b3f2ff12d42e982db49dd2f10e4e276f4ff`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 7.3 KB (7289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc346098487b4356f2b2206d26536ebf1d85f581cef31edc5f15169bf8299f9`  
		Last Modified: Tue, 18 Jul 2017 23:56:25 GMT  
		Size: 59.2 MB (59241674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24662def763ef2159dbe937ee1949810384bf7b6c287d465d42c2b0d4321dc`  
		Last Modified: Tue, 18 Jul 2017 23:56:12 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a17afe0da876d08940fdbf0dc526434432a95598512e61d10929a82dc81896`  
		Last Modified: Tue, 18 Jul 2017 23:56:14 GMT  
		Size: 2.4 MB (2447804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32a306822b1fdf59846b163226583d19c2f28a78ec98174875b5e0dbb405e19`  
		Last Modified: Tue, 18 Jul 2017 23:56:24 GMT  
		Size: 76.7 MB (76689353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c634066335c08ac6b640afcaf07b499b17c0480ff780c0502228e71efdbb00`  
		Last Modified: Tue, 18 Jul 2017 23:56:13 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89654f46ebc2d911a6052e9ac1acf73f997432ec9fbf78188464d96b4319d798`  
		Last Modified: Tue, 18 Jul 2017 23:57:13 GMT  
		Size: 14.5 MB (14524324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052776d4fb58aa8066c1a3d8cb5224f345db6a2e7af64bf22a50e53ce1f9b4dd`  
		Last Modified: Tue, 18 Jul 2017 23:57:12 GMT  
		Size: 4.2 MB (4223457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
