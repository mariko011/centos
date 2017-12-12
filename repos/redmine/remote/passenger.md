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
