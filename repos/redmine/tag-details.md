<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `redmine`

-	[`redmine:3`](#redmine3)
-	[`redmine:3.2`](#redmine32)
-	[`redmine:3.2.9`](#redmine329)
-	[`redmine:3.2.9-passenger`](#redmine329-passenger)
-	[`redmine:3.2-passenger`](#redmine32-passenger)
-	[`redmine:3.3`](#redmine33)
-	[`redmine:3.3.6`](#redmine336)
-	[`redmine:3.3.6-passenger`](#redmine336-passenger)
-	[`redmine:3.3-passenger`](#redmine33-passenger)
-	[`redmine:3.4`](#redmine34)
-	[`redmine:3.4.4`](#redmine344)
-	[`redmine:3.4.4-passenger`](#redmine344-passenger)
-	[`redmine:3.4-passenger`](#redmine34-passenger)
-	[`redmine:3-passenger`](#redmine3-passenger)
-	[`redmine:latest`](#redminelatest)
-	[`redmine:passenger`](#redminepassenger)

## `redmine:3`

```console
$ docker pull redmine@sha256:bfb7de97a0825bc4291069a2384ab172de58d10c63cc579e179fdc3b2e9dbb31
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
$ docker pull redmine@sha256:172022bf8ffe3dd6d0edb8b1bb1f78bc472e857d821fee04beb5641c77b73b8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259635885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923e24ba7225d87880f87d6e75fd510e35e9b27f543db545a26ac9d3e4a83196`
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
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 21:13:43 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:13:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 05:05:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 05:05:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 05:05:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 05:05:49 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 06:06:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 06:07:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 06:07:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 06:07:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 06:07:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 06:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:48 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 06:07:48 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 06:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 06:10:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:10:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 06:10:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 06:10:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:10:43 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 06:10:43 GMT
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
	-	`sha256:914af5a077ad24690c7165c325515672c4e7d3ed22b4552469808eba58d38ebc`  
		Last Modified: Wed, 24 Jan 2018 05:40:30 GMT  
		Size: 21.3 MB (21265666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b28bf63e1ed304239fcfc42598f0b4ac1911f015308a6e58858193e292009f4`  
		Last Modified: Wed, 24 Jan 2018 05:40:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c140c2ef821682fb47e7992f7400b9e41dc4127af655861ef1d00e871c2085b8`  
		Last Modified: Wed, 24 Jan 2018 06:18:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5607421fd57058686825dae91e6fea9c01bdaf222f5a244d012cb1e8151663`  
		Last Modified: Wed, 24 Jan 2018 06:18:29 GMT  
		Size: 14.7 MB (14650359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f587cb4b48f36ef70f751ecd7a6a3834e0275dbac711f32f3173ebe68d6c5bf6`  
		Last Modified: Wed, 24 Jan 2018 06:18:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ac044f1b6586f3e2dea8488075d942fdcbb86cdd0b3ed8339fd64f7237e7e5`  
		Last Modified: Wed, 24 Jan 2018 06:18:22 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1c4ae051a2fd60b9493ab375c753feaaf378a0bf1d186a7b758bfe2a1492e`  
		Last Modified: Wed, 24 Jan 2018 06:18:38 GMT  
		Size: 59.3 MB (59271821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c879104edf2528d20632cf2b10b97d6592b1172fcbabdff177f2bf0b2c617`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4814fd2da77ac373e5ef2c7e59015dba56d05a0baadd9417a761acb95d32198`  
		Last Modified: Wed, 24 Jan 2018 06:18:24 GMT  
		Size: 2.5 MB (2454045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7196a1a3332d4f79d7310e334474b75e4163238977091cde6b0ed9688f53a128`  
		Last Modified: Wed, 24 Jan 2018 06:18:46 GMT  
		Size: 98.7 MB (98695903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3736c62c383560fc8135594bb3f86e9bfd9cf6be584a35950772e9c690bfe22`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:2455b90bd274d41d9e0bf4b36857cbc47db1550abe9baaaea4297e8f4067ac20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f519885f6de79e433587080d02808a717c6dc38cc3b3dbbf54ddc2b04e27181`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 02:45:06 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:45:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:50:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:50:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:50:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:50:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:50:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:50:55 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:31:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:31:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:31:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:32:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:32:01 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:32:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:33:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:33:09 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:33:09 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:33:09 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:33:09 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:33:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:38:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:38:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:38:49 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:38:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7483140cfd546c750cbd1d0523b2b5275827212b56b167f0cc7cfd589c402731`  
		Last Modified: Wed, 24 Jan 2018 03:12:41 GMT  
		Size: 21.0 MB (21034010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3788a5c745fba98326e4ecaf4cb2a7f410ac15c33ec1b99ff2afde5ebec9412`  
		Last Modified: Wed, 24 Jan 2018 03:12:35 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8c0617a52d583f3b94cd9a96cd706ac88bf950439bafa3ecd3844e4860bf36`  
		Last Modified: Wed, 24 Jan 2018 03:50:01 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c688fbe8bb1ac7162c13ee67c90d6f2a08588ac73657f3b1f527fc875109f4a3`  
		Last Modified: Wed, 24 Jan 2018 03:50:04 GMT  
		Size: 14.3 MB (14347448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d5cc976d79706ac9d29539326a13e4982a4f13813be4fa083b234ee1e95b50`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b962c088279e643abe79a4eab45c11b06f8c9f40e2ffce2833405bea4b4a7e5`  
		Last Modified: Wed, 24 Jan 2018 03:49:58 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60379fd03bcc99ec7f0aaf0bfa7e9dcfbffc4de82d852c220ec07513179d7141`  
		Last Modified: Wed, 24 Jan 2018 03:50:16 GMT  
		Size: 56.6 MB (56608411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37785bb9eea93486da7fd55a1b86b83b6870b75fb9bcb44d3b6c130a305b0a21`  
		Last Modified: Wed, 24 Jan 2018 03:49:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7fa4ba6cb36cd1eefbd31fb5822ec93409b5c166d2fad559f5cb4b98873160`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 2.5 MB (2454586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f231eb7071a124d037617afcfdf3e92ea32e6b1616382bcb60ee4970158a96b2`  
		Last Modified: Wed, 24 Jan 2018 03:50:25 GMT  
		Size: 98.0 MB (97959462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f11e91601b80ab8fbdbdd62e520fd68ffc57476931b46fdb3c10bd7a58c8ac`  
		Last Modified: Wed, 24 Jan 2018 03:49:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:249b29c86540d6f7b14ca1d36e082aca46ce03bbd10b8bb03c4035faa72b0156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (246961318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeed8dc519a889166a5f9a5776d86bb20d875194cb916e8a8b6785e1d61b47aa`
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
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 02:32:29 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:32:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:38:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:38:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:38:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:38:09 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:17:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:18:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:18:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:18:30 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:18:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:19:33 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:19:33 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:19:33 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:19:33 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:19:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:24:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:24:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:24:38 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:24:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:24:38 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:24:38 GMT
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
	-	`sha256:89b44b0543d36a3cb4cf292c2bf4c6c080583809c0685cc28908f1cb179c50d7`  
		Last Modified: Wed, 24 Jan 2018 02:59:00 GMT  
		Size: 20.9 MB (20897193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b4635578f2c1dfb352100d0480be8d9b2e6105f2772bb185b7bced7ae17197`  
		Last Modified: Wed, 24 Jan 2018 02:58:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55419b7ef85ae6240af7f5e4789243ff7591a59d48439535917847f75ef89d05`  
		Last Modified: Wed, 24 Jan 2018 03:35:23 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872c80f439844044946395e2200cd82876bff2e983f8fad9f4bbb61684578fea`  
		Last Modified: Wed, 24 Jan 2018 03:35:25 GMT  
		Size: 14.1 MB (14134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b7826bbfb3f8a64ede3a440bd69e3240654a7f1c5ab98ee0364cc0adfb1543`  
		Last Modified: Wed, 24 Jan 2018 03:35:22 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59b0eb27f06c0ea992919b8225f748d21eff00487897b8e3c7cc0a031ab56b0`  
		Last Modified: Wed, 24 Jan 2018 03:35:20 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9005eb60348f0ff4ae0a5adace972512d40a315ccec4b595fb6d89e9440610`  
		Last Modified: Wed, 24 Jan 2018 03:35:37 GMT  
		Size: 54.3 MB (54345905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ff000e1d1d8539027fcc1260ec3577e3d0e5dacc3b198491217c23ef0693d0`  
		Last Modified: Wed, 24 Jan 2018 03:35:19 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f434ad215b9c8ba1deb454d78420165531eb42640eeb844999f011c2bd21f848`  
		Last Modified: Wed, 24 Jan 2018 03:35:22 GMT  
		Size: 2.5 MB (2454587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1f8f9d953d5f71a6048b91ec5b3d9896206b4268ae1f9188f3178bc5bf5737`  
		Last Modified: Wed, 24 Jan 2018 03:35:44 GMT  
		Size: 97.2 MB (97166203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab659d79536d22d01f02b029c58cfa6afdb40bfef5c2b627a4a1c4d53d952d`  
		Last Modified: Wed, 24 Jan 2018 03:35:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:7848fe25ed61fe7605ca18d9d6b2b6c0f8d419590f1a397582ebe44d46481b25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255257246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f66041a3e60341df36a596d045237ce891f5b76d8ae119110879d4c9dfdd4912`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 22:20:01 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 22:20:01 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 22:29:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 22:29:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 22:29:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 22:29:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 22:29:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 22:29:23 GMT
CMD ["irb"]
# Tue, 26 Dec 2017 23:39:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 26 Dec 2017 23:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 23:40:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Dec 2017 23:40:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 26 Dec 2017 23:40:23 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 26 Dec 2017 23:40:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 26 Dec 2017 23:42:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 23:42:08 GMT
ENV RAILS_ENV=production
# Tue, 26 Dec 2017 23:42:08 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 07:38:42 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 07:38:42 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 07:38:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 07:48:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 07:49:00 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 07:49:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 07:49:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 07:49:02 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 07:49:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ab1c5caf6a50baa15c5c800df30fb8674ac52f90ff7142212a909f1a77a11d`  
		Last Modified: Tue, 26 Dec 2017 23:18:37 GMT  
		Size: 24.7 MB (24693886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575945fa7cd6bcb7867f564dba9ac23e8984aea80824dc63c1a4bed210fc1995`  
		Last Modified: Tue, 26 Dec 2017 23:18:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1787d0d06cd02e94247087cd7d84d1f40018f6ee07c1f03fc7954f4d6393ad0e`  
		Last Modified: Fri, 29 Dec 2017 08:08:43 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb265c86040d87c9286f61b2e757113032200769d06c475ae053f8d2cf1a90af`  
		Last Modified: Fri, 29 Dec 2017 08:08:47 GMT  
		Size: 14.5 MB (14462701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797731e8fee63ca3be7164a5703afc4cef34b81d9e518cb0078299a3edca98f9`  
		Last Modified: Fri, 29 Dec 2017 08:08:42 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ea7fbb5748dd0a486c8e209b761025ba632a5129d43b13c3e00b35e84ab816`  
		Last Modified: Fri, 29 Dec 2017 08:08:41 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c2db19ace8d73fec3ef6d746f8ee5b7a2651aa48998d74003374906fb2afb2`  
		Last Modified: Fri, 29 Dec 2017 08:09:00 GMT  
		Size: 55.8 MB (55784460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402c5efb964f8282d86f17fcb87c15e6f862ad73888e459ef2c2c5e8c3c73630`  
		Last Modified: Fri, 29 Dec 2017 08:08:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc371ac57e9f02f13e63da2f73e2cd450deb9a1729da8299a1cf57d57dab7137`  
		Last Modified: Tue, 09 Jan 2018 08:11:30 GMT  
		Size: 2.5 MB (2454052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b900dd7ee1e3aca014b5fda2e543f2cae48604fc3a1502662b14bb8ab55e38`  
		Last Modified: Tue, 09 Jan 2018 08:12:01 GMT  
		Size: 98.1 MB (98099242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb62659f8e630c975ae4074c7e79d3e99889e2f88be721d6659457aaeef27108`  
		Last Modified: Tue, 09 Jan 2018 08:11:28 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:fb3ed234d23071e20ec1e02757677d87fceb01daaae776c302ed884eb6ae36e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266039395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df896df024196b28777ae4cf8117634fad5cf71de6879bcbbfaa26727bcc800`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 04:39:08 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 04:39:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 27 Dec 2017 04:43:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 04:43:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 04:43:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 04:43:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 04:43:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 04:43:15 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 06:31:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 06:31:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 06:31:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 06:31:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 06:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 06:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 06:32:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 06:32:20 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 06:32:21 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 13:37:46 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 13:37:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 13:37:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 13:42:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 13:47:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 13:47:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 13:47:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 13:47:44 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 13:47:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bba21b01e7c8114b30b0e3a49d9707610df91b49ba775f27e79fbc5770ddc3`  
		Last Modified: Wed, 27 Dec 2017 06:02:35 GMT  
		Size: 23.7 MB (23733463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a103a0dc13d436f3688d9b83a4c52ae654f550fac1434be471f7a093473b61`  
		Last Modified: Wed, 27 Dec 2017 06:02:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c71d242a904acd472a9e1661d22105d6800544421fbb7a1a61dc2eb2053fa2`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec270341b06efa46f956ced61ae13818039a02423d158c5a53a025dde8086cf`  
		Last Modified: Wed, 27 Dec 2017 07:55:41 GMT  
		Size: 14.8 MB (14817460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd2629573ca50e58add16888cf1bb9341cfbf25b39b7f0d8d90646d25d1ad5c`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1deaaca310a3eb605a277e83c7675490707b1212011955622e7669cc4b8a9c`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed5640eb3fbb2dd0cf5d629b49a4d37b749cc7479dc4652bdc8dee29c3e8031`  
		Last Modified: Wed, 27 Dec 2017 07:56:04 GMT  
		Size: 60.1 MB (60138719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1de7f5c97e943bc365047e494cb9f18d69fcb394f878425ae9aaa3a0187b22`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b8b2e38cd4e2eaf5664b916a46fb337b581dc186f83eef95f94ce35dcc1e6`  
		Last Modified: Tue, 09 Jan 2018 14:36:11 GMT  
		Size: 2.5 MB (2454055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be581ba4c107fc907cd38e3441c0b859c782a383854bcf310ecef2c7b3b3e679`  
		Last Modified: Tue, 09 Jan 2018 14:36:46 GMT  
		Size: 97.0 MB (96976535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335013ce436fb2cd5dd26a2407e4c5000209a6f46458741c211cdcfc11918c54`  
		Last Modified: Tue, 09 Jan 2018 14:36:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:fb1232495eee52d63e7722495b854a5b295464c96cbc378bb49b715375831059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258859438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa5f42cc5af10195816f4ce40d7aeeb76bce99fc142557175388a0fb6930e6a`
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
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 01:53:28 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 01:53:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:01:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:01:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:01:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:01:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:01:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:01:18 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:03:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:03:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:04:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:04:05 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:04:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:07:53 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:07:55 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:07:56 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:07:57 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:08:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:24:21 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:24:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:24:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:24:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:24:33 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:24:36 GMT
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
	-	`sha256:7583ee388c15854c522c6d9b5c72fbeb9c598084759bbce298bfab55f53bb024`  
		Last Modified: Wed, 24 Jan 2018 02:43:40 GMT  
		Size: 21.7 MB (21711659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b5136cb35537a7eac06b6a34299696953acca12ed75262c9066cf55ad5bd8`  
		Last Modified: Wed, 24 Jan 2018 02:43:34 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e19a56b41f05bb0e55697969207b4fd28d74a2b3d7fa67ae06ab6978f14c62`  
		Last Modified: Wed, 24 Jan 2018 03:49:44 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8bc55fdac33b2ac32c9c7a05735aad3bc67706e2439d17f1a8c4ac1893b826`  
		Last Modified: Wed, 24 Jan 2018 03:49:46 GMT  
		Size: 14.7 MB (14720526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a78cb0f37922a2fbcf6a5f043c08478cb95d7a63f889dab4457a9c25eec5371`  
		Last Modified: Wed, 24 Jan 2018 03:49:41 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5517ae38336ff4e117efab4a3bd8a1e4065162aa498eb3db2d082b0d5f31c1b`  
		Last Modified: Wed, 24 Jan 2018 03:49:40 GMT  
		Size: 8.6 KB (8642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63e6c62bbf069baa4dd2ec05d43516ff26691d8458c0535fb52104284b38fa6`  
		Last Modified: Wed, 24 Jan 2018 03:49:53 GMT  
		Size: 58.1 MB (58133330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6195cae25aa4a2523e7e415f42d3804251a79a2334734e2f554a8d1bbdfa20`  
		Last Modified: Wed, 24 Jan 2018 03:49:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118f5f4693b7ba1a658ffb887ca5f64e901a5c03e1313243615fc9008b3f22ae`  
		Last Modified: Wed, 24 Jan 2018 03:49:46 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31584ee9dd94b2cac16c99292ec0c330abf35cb9bda1f8d2c6ca546aa164abe0`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 99.4 MB (99391362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01496bfdc37a4901674aeba8034808dcd2089483ba545dc041c0a53dc5ad5cfe`  
		Last Modified: Wed, 24 Jan 2018 03:49:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; s390x

```console
$ docker pull redmine@sha256:c257d045f585963b53e4cb8d45df9d003793cffc50e07e7c906588edf596e953
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267165606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360bacda566727b89c4a3b20c9e2e8b798ee2855730dd5a546976cd534dfc982`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:58:10 GMT
ENV RUBY_MAJOR=2.4
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_VERSION=2.4.3
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 07 Jan 2018 06:53:58 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Sun, 07 Jan 2018 06:53:58 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 07 Jan 2018 06:56:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 07 Jan 2018 06:56:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 07 Jan 2018 06:56:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 07 Jan 2018 06:56:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 06:56:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 07 Jan 2018 06:57:03 GMT
CMD ["irb"]
# Sun, 07 Jan 2018 11:22:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 07 Jan 2018 11:23:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:23:09 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 11:23:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 07 Jan 2018 11:23:11 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 07 Jan 2018 11:23:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 07 Jan 2018 11:23:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:23:52 GMT
ENV RAILS_ENV=production
# Sun, 07 Jan 2018 11:23:52 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 23:43:35 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 23:43:36 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 23:43:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 23:46:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 23:46:20 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 23:46:20 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 23:46:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:46:21 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 23:46:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb49332cdc153c93bfd498785457d31189cfc37e46491f3a44b0f2bbe55bccb`  
		Last Modified: Sun, 07 Jan 2018 07:21:00 GMT  
		Size: 25.1 MB (25144704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274c2f7a6d74cf11965f2607a9f997c78e37fa2bfb50623a941b662b1084a658`  
		Last Modified: Sun, 07 Jan 2018 07:20:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4d5d651b3275fbcecd74f469bb3c13e139211b136e47e0b8e502fd5db0777`  
		Last Modified: Sun, 07 Jan 2018 11:35:50 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0ce8cedbd53c226cc39ddb9ac71fa267139dc45bccc6c3f06e739ec40c06bb`  
		Last Modified: Sun, 07 Jan 2018 11:35:53 GMT  
		Size: 14.8 MB (14815142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3063fd41e5c59f155e5eaa1b296ed8205f1e51c18eaa88156e12485eefc307`  
		Last Modified: Sun, 07 Jan 2018 11:35:48 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c22820e147c1ce8acd065399ae6d181437ed9fa284c9c3d0e0333c0145436d5`  
		Last Modified: Sun, 07 Jan 2018 11:35:48 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6338b23232fb68e21fdf807aee2fd16c68247ae9e3cb94ea56ead7187124801e`  
		Last Modified: Sun, 07 Jan 2018 11:36:05 GMT  
		Size: 59.1 MB (59105542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53fba1dcf9b568e08165b5cbf3669cb52f5844d7d05599782092d100affddbd`  
		Last Modified: Sun, 07 Jan 2018 11:35:46 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2214c194d024b878fd5b301976e99a675535f74bbcedd9c6376b661f5bfcd884`  
		Last Modified: Tue, 09 Jan 2018 23:51:44 GMT  
		Size: 2.5 MB (2454046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417ee399267230149508893db74b50bda473bf3104f0680e652db062e8f35586`  
		Last Modified: Tue, 09 Jan 2018 23:51:58 GMT  
		Size: 102.4 MB (102376522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca717c2a65b96ff760b38a70a2cdb42b8055217ad118004fbb038b9b59ba6047`  
		Last Modified: Tue, 09 Jan 2018 23:51:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2`

```console
$ docker pull redmine@sha256:872a2ccdea9b381851147c2d8f9a87fd7facadf25dc2b6907f0085efad6273fb
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
$ docker pull redmine@sha256:46fa9fb0e5488c49bebfacdf2552aded31c087a67d38fbbab3e09983810811cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253599376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042e8db50c8169b30298058c6a30366cd1f32b1551d3428ce9a0d76ddeace5f5`
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
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 21:39:36 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:39:37 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:42:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:42:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:42:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:42:20 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 00:47:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 00:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:47:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 00:47:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 00:47:36 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 00:47:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 00:48:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:48:12 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 00:48:12 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 01:19:41 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 01:19:41 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 01:19:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 01:23:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:23:59 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 01:24:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 01:24:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 01:24:00 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 01:24:00 GMT
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
	-	`sha256:6e474c9afe180dc9afb2c470f985a85bb617a0e261904d2a92c93c3da98bbfa4`  
		Last Modified: Tue, 26 Dec 2017 22:04:13 GMT  
		Size: 35.3 MB (35328463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d66ac80f46f844bced5b6e67646102218eb23f56a2aee58b21cbd1040076e59`  
		Last Modified: Tue, 26 Dec 2017 22:04:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb22a04a8c5fbeef6e3cdbe1a5c73d4ba5996b31b3043f23230925fd140594c`  
		Last Modified: Fri, 29 Dec 2017 02:27:05 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93ec21959dc84be4348264bba0717f32a959e81f288ab34b545fc8619d0019b`  
		Last Modified: Fri, 29 Dec 2017 02:27:06 GMT  
		Size: 14.7 MB (14650312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ec2fc2c71ce4ad8a55087c4dd1ecb89e1b94392617160db979e0f346ee9f07`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7d0e1edae09791b9c0d1818dc84048420cbdf3caa9e41625b2aa94a91c8c37`  
		Last Modified: Fri, 29 Dec 2017 02:27:00 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e720d0a70ed26731a5572d411e2079b7e633018462c5bd48243239b27e793de`  
		Last Modified: Fri, 29 Dec 2017 02:27:15 GMT  
		Size: 59.3 MB (59266783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a54e97a7f7e164da773df729acdcf6c1386d88138b239737da6c628da309385`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa58ed19baa12b115b80922c04b8cecdfa66cc4e83904c56dc663bee4c543b42`  
		Last Modified: Tue, 09 Jan 2018 02:03:19 GMT  
		Size: 2.3 MB (2347495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc54a2158cd34d9999c85cb1a74af46c88a39660bdfb990e5c1994a9cfd9c605`  
		Last Modified: Tue, 09 Jan 2018 02:03:35 GMT  
		Size: 78.7 MB (78708223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786a785138b0200424e99aae65e9eb4375a32f5e29f67d425178d704509bf98`  
		Last Modified: Tue, 09 Jan 2018 02:03:16 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:75222e2af192a4522b95c423743476ebc4ba40f80762486db05c199f0c7d252f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242617263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c8fac274578961802be02b0d64c5e05f1ab48c94758ac6c0c614af293fcbdc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 03:05:35 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 03:05:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 03:09:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 03:09:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 03:09:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 03:09:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 03:09:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 03:09:17 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:39:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:39:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:39:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:39:39 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:39:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:40:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:40:34 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:40:34 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:45:17 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 24 Jan 2018 03:45:17 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 24 Jan 2018 03:45:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:49:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:49:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:49:38 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:49:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:49:38 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:49:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca22a5febdeae6c6f26d3b16d9f78539c80bc4b2131b1d84fbe676bb5208636e`  
		Last Modified: Wed, 24 Jan 2018 03:15:26 GMT  
		Size: 30.8 MB (30802634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a21caa94528f6f6faaa7cc3122f273f9d3c5e802e3b20d71004b511548739`  
		Last Modified: Wed, 24 Jan 2018 03:15:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550174a5014f11432d40d85582d5ddb978911c2935862488d4bceaa0bbddd6ee`  
		Last Modified: Wed, 24 Jan 2018 03:50:54 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770273e963a9f961982de0aa679b7475b228a86ef3476fa2ddba8b5734573776`  
		Last Modified: Wed, 24 Jan 2018 03:50:58 GMT  
		Size: 14.3 MB (14347490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebc77956eef7bcbcd337ed6bb10b23432de7dab6a34a5d86030f7a029e70864`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 491.1 KB (491126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6435e086bb8c35fffbd90989e1de568691995e2f66b6c7805c06e3d155c4ef6`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a5c1c865c893c57631279160481b99c9018f0deffedd398bd42905b04081d7`  
		Last Modified: Wed, 24 Jan 2018 03:51:10 GMT  
		Size: 56.6 MB (56603531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d627d8b9863c4dbb72200e5aebc3c86819c946a24640c657c4f472484f4840f`  
		Last Modified: Wed, 24 Jan 2018 03:50:51 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a353adfc685e520bdbb9d5732ee39d17154ba53c6489ea4cf9878d9ffa699`  
		Last Modified: Wed, 24 Jan 2018 03:51:26 GMT  
		Size: 2.3 MB (2347816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c51951d3bff2741b6e51948c155b64711ebbdfd110220e66779fff39863283`  
		Last Modified: Wed, 24 Jan 2018 03:51:43 GMT  
		Size: 78.0 MB (77997365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed7bf9e2c33ebb74b5d8325e236e3d5270a8a3b1b9c5dbe1487ea5975775298`  
		Last Modified: Wed, 24 Jan 2018 03:51:24 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:142312ca83f78c1f2e81102e0df8563c055771a91f599d434c3118d31f0d35c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236820723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571f5d854f84a1397de60b92e629bbaf83906826fc03f1d8f7b9992fb645db91`
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
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 02:50:52 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:50:52 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:55:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:55:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:55:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:55:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:55:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:55:17 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:24:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:25:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:25:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:25:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:25:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:25:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:26:21 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:26:21 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:30:52 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 24 Jan 2018 03:30:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 24 Jan 2018 03:30:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:35:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:35:04 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:35:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:35:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:35:05 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:35:05 GMT
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
	-	`sha256:90208f9d9b093eeaef7969ca24f8ae51a6a51e5fdcb07053f9d20fc71e61bb0c`  
		Last Modified: Wed, 24 Jan 2018 03:01:53 GMT  
		Size: 30.6 MB (30581442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fe6597b68caf87240e9839fae089a98b43463a5e99691e0431e1934d68b982`  
		Last Modified: Wed, 24 Jan 2018 03:01:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d054f11e2c9412caf728a8a5d628313352532f8eeab8daa4926a7686fe933409`  
		Last Modified: Wed, 24 Jan 2018 03:36:15 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab108f1f3fe76ac7f534da5260fbc8ac018f315f0652a514d80f7ac5e7942553`  
		Last Modified: Wed, 24 Jan 2018 03:36:19 GMT  
		Size: 14.1 MB (14134519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89af20c9223a656dde4dab338d00af6b6a38404a8a9ba8c06c94d062a5a1d6b`  
		Last Modified: Wed, 24 Jan 2018 03:36:13 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9411cf5efd82f991d21a46e21d53670098da7e5616dc2dc5768698caf48fe3`  
		Last Modified: Wed, 24 Jan 2018 03:36:13 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4db4b365a17e7a994d5441542b6ebc721749776df65f2761a6bec91dff7709`  
		Last Modified: Wed, 24 Jan 2018 03:36:28 GMT  
		Size: 54.3 MB (54346287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450fb0889a40e8b1700ab5941881943bb044a9dbcac24abe1f40dd08bcb63524`  
		Last Modified: Wed, 24 Jan 2018 03:36:11 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec016730a83fab5db51ed8a5cca2a45c510a294259e379b280ecdc21155728e4`  
		Last Modified: Wed, 24 Jan 2018 03:36:47 GMT  
		Size: 2.3 MB (2347825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5d2dbd22d03b161dafa042c562fe091471b1b976f08fafacff57b25b78af6a`  
		Last Modified: Wed, 24 Jan 2018 03:37:03 GMT  
		Size: 77.4 MB (77447758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d9cb0ee9e648aac38fc862bdd95705746dde001d5b7f72cdc40aabc00f511d`  
		Last Modified: Wed, 24 Jan 2018 03:36:46 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:48054269dca210623034d8203b0d48aca38bba9f73e811bcab50ee7d68910696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245773764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a152afbeb5d26c7586ab0802fcde918e7e2247bcf6caef64d38b38fa789e755`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 23:05:06 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 23:05:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 23:12:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 23:12:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 23:12:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 23:12:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 23:12:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 23:12:28 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 01:57:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 01:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 01:57:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 01:57:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 01:57:58 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 01:58:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 01:59:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 01:59:40 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 01:59:40 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 07:59:54 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 07:59:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 08:00:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 08:10:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 08:10:59 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 08:11:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 08:11:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 08:11:02 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 08:11:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4df6f80dda3c9d98ea283c916e8ac7ed0e954eb44e55b7e36696e40e6f14a1`  
		Last Modified: Tue, 26 Dec 2017 23:23:28 GMT  
		Size: 35.5 MB (35465051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc53bc9641ee37e3a235565248f1e6956350fc6d2e6b25c654f29734a84d899d`  
		Last Modified: Tue, 26 Dec 2017 23:23:12 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dbfbd9e9a248418bda6fe4bccd11aba9385f738998cbf0cdc783b6eb4f268d`  
		Last Modified: Fri, 29 Dec 2017 08:09:40 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9aaa5e6c2219745eab6dd77174718d996ab1b9786780797f6952a285e277dd`  
		Last Modified: Fri, 29 Dec 2017 08:09:44 GMT  
		Size: 14.5 MB (14462642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab150e6e0be355a383a222c0c15b71da6e52f85e0643a16ef975c2b92168073`  
		Last Modified: Fri, 29 Dec 2017 08:09:38 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cf000300fcca9e37148140564d0ea493a5d45c3bb7415ce6563be257ea87a4`  
		Last Modified: Fri, 29 Dec 2017 08:09:38 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c4d3775e2bffb97b61476cb0cc36d083228a1561bff808404797dca6c31bd5`  
		Last Modified: Fri, 29 Dec 2017 08:09:56 GMT  
		Size: 55.8 MB (55784664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bc533bf3e52c39a4ce92c398d432c65fa7287207ff03ef731b099a768078cb`  
		Last Modified: Fri, 29 Dec 2017 08:09:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16aeef0e615c7f9389559642a0ffbcda638f9fa04286a2a88c13998c23e9658c`  
		Last Modified: Tue, 09 Jan 2018 08:13:26 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a414ebecef73146647484d71ca6e152235d6037a527fa04772c5a97e5223ade`  
		Last Modified: Tue, 09 Jan 2018 08:13:48 GMT  
		Size: 78.0 MB (77951004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fad3232a767354f8c93f53bf4d48451a2c965bf878cc1abbcaeaa41e424dc3e`  
		Last Modified: Tue, 09 Jan 2018 08:13:26 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:bf25118489264592f42727d128bbcf0333944adc2c41253d56aafe4ed92a1c87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (256006912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b0ef538f115c3e2ab578dc0c6d10749afb8906f00352aac12ca97df5bb75ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 05:35:17 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 05:35:17 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 27 Dec 2017 05:38:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 05:38:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 05:38:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 05:38:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 05:38:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 05:38:44 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 07:30:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 07:31:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 07:31:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 07:31:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 07:31:13 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 07:31:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 07:32:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 07:32:10 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 07:32:11 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 14:15:24 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 14:15:24 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 14:15:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 14:21:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 14:21:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 14:21:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 14:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 14:21:12 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 14:21:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8433cc792f3631a19d39b1b13bc1d91aecaea3ee58a2749aef6ed157062a90f4`  
		Last Modified: Wed, 27 Dec 2017 06:13:43 GMT  
		Size: 32.8 MB (32804994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8544e6f5c46702a731a8cf1ab004083b860f59d43bb20d0ae9c06ef4e4cc23a`  
		Last Modified: Wed, 27 Dec 2017 06:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1f03b8086d0a736be57d706b878064d4bfc7a6d7ebcc9a9963092e0354606d`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215ad51247312c8cd80b09fcfa2fb352aba5508bcea4ea4922cbee6378d3dbc6`  
		Last Modified: Wed, 27 Dec 2017 07:59:01 GMT  
		Size: 14.8 MB (14817449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39860f5eb83b7c68a9bdc1bceb2341990d0bab7864735e97b284b884c47e283d`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3b7d3a5f9c2dd02661c14cf9d51b57ec6af36fb1ac9ac20a2e7268cd1eaed6`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf94345696cac4440cd6ac92e7804a1d25224bafa29367222c37250b382c109`  
		Last Modified: Wed, 27 Dec 2017 07:59:24 GMT  
		Size: 60.1 MB (60138354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2720e38323b776f1133d9a5e9c0d90c7ec99081fdc6c52b08c2b38db3eb1a1`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1b72a4a6aba2cd972a2e277383621e5c7816fbeea30d4935740cb45008e141`  
		Last Modified: Tue, 09 Jan 2018 15:02:06 GMT  
		Size: 2.3 MB (2347494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b2fb9945c215dfd2568cc4f0e2294be0ddc960790bd8ceafacc97855e9280`  
		Last Modified: Tue, 09 Jan 2018 15:02:30 GMT  
		Size: 78.0 MB (77979461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132f45661e88154933064d608be98708f1f397b85528c22be2dddf88363309c3`  
		Last Modified: Tue, 09 Jan 2018 15:01:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:b1a825b7232565104701cf80ab0d390f78f47b8b8c04142f74a75e036eaed9ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249498344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1515d78e774df46d3d0c4eef6e1a1c2bdb4667bc31cf10dbc8d3c2708b7f8e10`
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
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 02:27:38 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:27:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:38:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:38:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:39:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:39:03 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:25:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:25:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:25:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:26:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:26:02 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:26:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:29:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:29:34 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:29:35 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:40:04 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 24 Jan 2018 03:40:05 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 24 Jan 2018 03:40:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:49:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:49:13 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:49:15 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:49:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:49:18 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:49:19 GMT
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
	-	`sha256:3137fa42767f14aa70db9afcaa682216cebe07aa438b32400d049e1f2b180d7b`  
		Last Modified: Wed, 24 Jan 2018 02:47:12 GMT  
		Size: 32.9 MB (32877209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dff2aad52c74c59b4235f081e3c2a9f80222094df9aaccaaacca36da32a1f1c`  
		Last Modified: Wed, 24 Jan 2018 02:47:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c02281fbd4e65f3fa1fe1bce08df79548d7debfc6848d20d6186200928ccd5d`  
		Last Modified: Wed, 24 Jan 2018 03:50:29 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da4432e70d3bdc7f379d5d01bd7e0bc70f501c750bec6cc6d003894eb10935`  
		Last Modified: Wed, 24 Jan 2018 03:50:32 GMT  
		Size: 14.7 MB (14720473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea798bef07da02aaa8593f76da2716b151e1a49843c78d6ad8bfbee15f81181`  
		Last Modified: Wed, 24 Jan 2018 03:50:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42595821bef47ba0e4927aea307b4f8fbff8ffb452f1ccb7726c29e3ddf61529`  
		Last Modified: Wed, 24 Jan 2018 03:50:27 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ea3db94185c5ccbc1d135280dd052167535458b7d63b600dd9849ba8b5cbe`  
		Last Modified: Wed, 24 Jan 2018 03:50:40 GMT  
		Size: 58.1 MB (58133154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b512f95b1b26c9a0b13bb07819a797e943460239d7215d2a272c7eca0d2b967`  
		Last Modified: Wed, 24 Jan 2018 03:50:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e22d143e04d97c5775ffd93386315b2adacfe84edcd4a01745ec9f5dd98096`  
		Last Modified: Wed, 24 Jan 2018 03:50:57 GMT  
		Size: 2.3 MB (2347815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ed1bfcbda2c4cca1c3a00373f1ee694330c69a8f52399ee541409bdd1b567e`  
		Last Modified: Wed, 24 Jan 2018 03:51:13 GMT  
		Size: 79.0 MB (78971714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d7d9f7775710544d62efca878c6eddb78b66e8c930b8f408d0cc284ad67335`  
		Last Modified: Wed, 24 Jan 2018 03:50:56 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; s390x

```console
$ docker pull redmine@sha256:15acba99d2d408fe9a3717fcab72712cfdc57ad9d6dd1fc370b8073b48decf3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259633686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8d1010c47cdae0bd16b7fee07983a7bc1d34d86643f142daeec1e259a3accd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 09:11:12 GMT
ENV RUBY_MAJOR=2.2
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_VERSION=2.2.9
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Sun, 07 Jan 2018 07:12:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 07 Jan 2018 07:15:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 07 Jan 2018 07:15:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 07 Jan 2018 07:15:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 07 Jan 2018 07:15:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 07:15:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 07 Jan 2018 07:15:23 GMT
CMD ["irb"]
# Sun, 07 Jan 2018 11:28:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 07 Jan 2018 11:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:28:25 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 11:28:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 07 Jan 2018 11:28:27 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 07 Jan 2018 11:28:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 07 Jan 2018 11:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:29:06 GMT
ENV RAILS_ENV=production
# Sun, 07 Jan 2018 11:29:06 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 23:49:19 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 23:49:19 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 23:49:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 23:51:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 23:51:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 23:51:23 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 23:51:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:51:23 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 23:51:23 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888e794c0fce17e4a9b4adf85d0fc22b1762df460da5715841e252187d1f93a7`  
		Last Modified: Sun, 07 Jan 2018 07:25:28 GMT  
		Size: 39.0 MB (39021507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a791dbff8b78310a044c5f42341c032980ad3cc31621ab2213e4fed5e35f1a`  
		Last Modified: Sun, 07 Jan 2018 07:25:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb55d565fa9c9bb567ff4220a1f16e04d3f176b65c814c432f20a7db9732668`  
		Last Modified: Sun, 07 Jan 2018 11:36:38 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d3cc22e5450e137b316844471fd6b14a2d16e06e07e2b71db3341e768a0d0f`  
		Last Modified: Sun, 07 Jan 2018 11:36:43 GMT  
		Size: 14.8 MB (14815174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a90f9712a91230ac3919e9b627a0ed8c8f3312969c1d58710dbda013fd98c6`  
		Last Modified: Sun, 07 Jan 2018 11:36:37 GMT  
		Size: 486.8 KB (486830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3fdd17eb3220367989f9b0343d648093f4d56dd89c1d9e7946e52a4ee3b10f`  
		Last Modified: Sun, 07 Jan 2018 11:36:37 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f95972bda65e5ea00a62c4f219fca028d848de636d6d346ab881daadc24bf`  
		Last Modified: Sun, 07 Jan 2018 11:36:54 GMT  
		Size: 59.1 MB (59105759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60aea330e97a01e0e7850cca8e4df4f9bf0f9b2c094be0ec8162eb2323ee2eae`  
		Last Modified: Sun, 07 Jan 2018 11:36:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b2399782cb05495c6311eda0b2213d50daa6ba4185410587a7c6f0220319e`  
		Last Modified: Tue, 09 Jan 2018 23:52:57 GMT  
		Size: 2.3 MB (2347497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0396e7cfe41cc077f30b5c919a8c1e319ff788a96176a80ab6b805c1568c11`  
		Last Modified: Tue, 09 Jan 2018 23:53:07 GMT  
		Size: 81.1 MB (81074091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dad086a76847cfe5ccc1be25c896ff966013a4b1a33d43034527d869daf6a9`  
		Last Modified: Tue, 09 Jan 2018 23:52:59 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.9`

```console
$ docker pull redmine@sha256:872a2ccdea9b381851147c2d8f9a87fd7facadf25dc2b6907f0085efad6273fb
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

### `redmine:3.2.9` - linux; amd64

```console
$ docker pull redmine@sha256:46fa9fb0e5488c49bebfacdf2552aded31c087a67d38fbbab3e09983810811cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253599376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042e8db50c8169b30298058c6a30366cd1f32b1551d3428ce9a0d76ddeace5f5`
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
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 21:39:36 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:39:37 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:42:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:42:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:42:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:42:20 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 00:47:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 00:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:47:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 00:47:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 00:47:36 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 00:47:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 00:48:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:48:12 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 00:48:12 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 01:19:41 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 01:19:41 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 01:19:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 01:23:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:23:59 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 01:24:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 01:24:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 01:24:00 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 01:24:00 GMT
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
	-	`sha256:6e474c9afe180dc9afb2c470f985a85bb617a0e261904d2a92c93c3da98bbfa4`  
		Last Modified: Tue, 26 Dec 2017 22:04:13 GMT  
		Size: 35.3 MB (35328463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d66ac80f46f844bced5b6e67646102218eb23f56a2aee58b21cbd1040076e59`  
		Last Modified: Tue, 26 Dec 2017 22:04:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb22a04a8c5fbeef6e3cdbe1a5c73d4ba5996b31b3043f23230925fd140594c`  
		Last Modified: Fri, 29 Dec 2017 02:27:05 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93ec21959dc84be4348264bba0717f32a959e81f288ab34b545fc8619d0019b`  
		Last Modified: Fri, 29 Dec 2017 02:27:06 GMT  
		Size: 14.7 MB (14650312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ec2fc2c71ce4ad8a55087c4dd1ecb89e1b94392617160db979e0f346ee9f07`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7d0e1edae09791b9c0d1818dc84048420cbdf3caa9e41625b2aa94a91c8c37`  
		Last Modified: Fri, 29 Dec 2017 02:27:00 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e720d0a70ed26731a5572d411e2079b7e633018462c5bd48243239b27e793de`  
		Last Modified: Fri, 29 Dec 2017 02:27:15 GMT  
		Size: 59.3 MB (59266783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a54e97a7f7e164da773df729acdcf6c1386d88138b239737da6c628da309385`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa58ed19baa12b115b80922c04b8cecdfa66cc4e83904c56dc663bee4c543b42`  
		Last Modified: Tue, 09 Jan 2018 02:03:19 GMT  
		Size: 2.3 MB (2347495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc54a2158cd34d9999c85cb1a74af46c88a39660bdfb990e5c1994a9cfd9c605`  
		Last Modified: Tue, 09 Jan 2018 02:03:35 GMT  
		Size: 78.7 MB (78708223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786a785138b0200424e99aae65e9eb4375a32f5e29f67d425178d704509bf98`  
		Last Modified: Tue, 09 Jan 2018 02:03:16 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v5

```console
$ docker pull redmine@sha256:75222e2af192a4522b95c423743476ebc4ba40f80762486db05c199f0c7d252f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242617263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c8fac274578961802be02b0d64c5e05f1ab48c94758ac6c0c614af293fcbdc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 03:05:35 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 03:05:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 03:09:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 03:09:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 03:09:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 03:09:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 03:09:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 03:09:17 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:39:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:39:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:39:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:39:39 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:39:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:40:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:40:34 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:40:34 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:45:17 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 24 Jan 2018 03:45:17 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 24 Jan 2018 03:45:21 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:49:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:49:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:49:38 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:49:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:49:38 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:49:39 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca22a5febdeae6c6f26d3b16d9f78539c80bc4b2131b1d84fbe676bb5208636e`  
		Last Modified: Wed, 24 Jan 2018 03:15:26 GMT  
		Size: 30.8 MB (30802634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a21caa94528f6f6faaa7cc3122f273f9d3c5e802e3b20d71004b511548739`  
		Last Modified: Wed, 24 Jan 2018 03:15:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550174a5014f11432d40d85582d5ddb978911c2935862488d4bceaa0bbddd6ee`  
		Last Modified: Wed, 24 Jan 2018 03:50:54 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770273e963a9f961982de0aa679b7475b228a86ef3476fa2ddba8b5734573776`  
		Last Modified: Wed, 24 Jan 2018 03:50:58 GMT  
		Size: 14.3 MB (14347490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebc77956eef7bcbcd337ed6bb10b23432de7dab6a34a5d86030f7a029e70864`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 491.1 KB (491126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6435e086bb8c35fffbd90989e1de568691995e2f66b6c7805c06e3d155c4ef6`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a5c1c865c893c57631279160481b99c9018f0deffedd398bd42905b04081d7`  
		Last Modified: Wed, 24 Jan 2018 03:51:10 GMT  
		Size: 56.6 MB (56603531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d627d8b9863c4dbb72200e5aebc3c86819c946a24640c657c4f472484f4840f`  
		Last Modified: Wed, 24 Jan 2018 03:50:51 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028a353adfc685e520bdbb9d5732ee39d17154ba53c6489ea4cf9878d9ffa699`  
		Last Modified: Wed, 24 Jan 2018 03:51:26 GMT  
		Size: 2.3 MB (2347816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c51951d3bff2741b6e51948c155b64711ebbdfd110220e66779fff39863283`  
		Last Modified: Wed, 24 Jan 2018 03:51:43 GMT  
		Size: 78.0 MB (77997365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ed7bf9e2c33ebb74b5d8325e236e3d5270a8a3b1b9c5dbe1487ea5975775298`  
		Last Modified: Wed, 24 Jan 2018 03:51:24 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm variant v7

```console
$ docker pull redmine@sha256:142312ca83f78c1f2e81102e0df8563c055771a91f599d434c3118d31f0d35c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236820723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:571f5d854f84a1397de60b92e629bbaf83906826fc03f1d8f7b9992fb645db91`
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
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 02:50:52 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:50:52 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:55:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:55:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:55:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:55:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:55:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:55:17 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:24:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:25:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:25:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:25:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:25:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:25:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:26:21 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:26:21 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:30:52 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 24 Jan 2018 03:30:53 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 24 Jan 2018 03:30:57 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:35:04 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:35:04 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:35:05 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:35:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:35:05 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:35:05 GMT
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
	-	`sha256:90208f9d9b093eeaef7969ca24f8ae51a6a51e5fdcb07053f9d20fc71e61bb0c`  
		Last Modified: Wed, 24 Jan 2018 03:01:53 GMT  
		Size: 30.6 MB (30581442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fe6597b68caf87240e9839fae089a98b43463a5e99691e0431e1934d68b982`  
		Last Modified: Wed, 24 Jan 2018 03:01:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d054f11e2c9412caf728a8a5d628313352532f8eeab8daa4926a7686fe933409`  
		Last Modified: Wed, 24 Jan 2018 03:36:15 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab108f1f3fe76ac7f534da5260fbc8ac018f315f0652a514d80f7ac5e7942553`  
		Last Modified: Wed, 24 Jan 2018 03:36:19 GMT  
		Size: 14.1 MB (14134519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89af20c9223a656dde4dab338d00af6b6a38404a8a9ba8c06c94d062a5a1d6b`  
		Last Modified: Wed, 24 Jan 2018 03:36:13 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9411cf5efd82f991d21a46e21d53670098da7e5616dc2dc5768698caf48fe3`  
		Last Modified: Wed, 24 Jan 2018 03:36:13 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4db4b365a17e7a994d5441542b6ebc721749776df65f2761a6bec91dff7709`  
		Last Modified: Wed, 24 Jan 2018 03:36:28 GMT  
		Size: 54.3 MB (54346287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450fb0889a40e8b1700ab5941881943bb044a9dbcac24abe1f40dd08bcb63524`  
		Last Modified: Wed, 24 Jan 2018 03:36:11 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec016730a83fab5db51ed8a5cca2a45c510a294259e379b280ecdc21155728e4`  
		Last Modified: Wed, 24 Jan 2018 03:36:47 GMT  
		Size: 2.3 MB (2347825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5d2dbd22d03b161dafa042c562fe091471b1b976f08fafacff57b25b78af6a`  
		Last Modified: Wed, 24 Jan 2018 03:37:03 GMT  
		Size: 77.4 MB (77447758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d9cb0ee9e648aac38fc862bdd95705746dde001d5b7f72cdc40aabc00f511d`  
		Last Modified: Wed, 24 Jan 2018 03:36:46 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:48054269dca210623034d8203b0d48aca38bba9f73e811bcab50ee7d68910696
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245773764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a152afbeb5d26c7586ab0802fcde918e7e2247bcf6caef64d38b38fa789e755`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 23:05:06 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 23:05:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 23:12:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 23:12:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 23:12:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 23:12:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 23:12:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 23:12:28 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 01:57:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 01:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 01:57:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 01:57:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 01:57:58 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 01:58:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 01:59:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 01:59:40 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 01:59:40 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 07:59:54 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 07:59:55 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 08:00:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 08:10:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 08:10:59 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 08:11:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 08:11:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 08:11:02 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 08:11:02 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4df6f80dda3c9d98ea283c916e8ac7ed0e954eb44e55b7e36696e40e6f14a1`  
		Last Modified: Tue, 26 Dec 2017 23:23:28 GMT  
		Size: 35.5 MB (35465051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc53bc9641ee37e3a235565248f1e6956350fc6d2e6b25c654f29734a84d899d`  
		Last Modified: Tue, 26 Dec 2017 23:23:12 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dbfbd9e9a248418bda6fe4bccd11aba9385f738998cbf0cdc783b6eb4f268d`  
		Last Modified: Fri, 29 Dec 2017 08:09:40 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9aaa5e6c2219745eab6dd77174718d996ab1b9786780797f6952a285e277dd`  
		Last Modified: Fri, 29 Dec 2017 08:09:44 GMT  
		Size: 14.5 MB (14462642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab150e6e0be355a383a222c0c15b71da6e52f85e0643a16ef975c2b92168073`  
		Last Modified: Fri, 29 Dec 2017 08:09:38 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cf000300fcca9e37148140564d0ea493a5d45c3bb7415ce6563be257ea87a4`  
		Last Modified: Fri, 29 Dec 2017 08:09:38 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c4d3775e2bffb97b61476cb0cc36d083228a1561bff808404797dca6c31bd5`  
		Last Modified: Fri, 29 Dec 2017 08:09:56 GMT  
		Size: 55.8 MB (55784664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bc533bf3e52c39a4ce92c398d432c65fa7287207ff03ef731b099a768078cb`  
		Last Modified: Fri, 29 Dec 2017 08:09:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16aeef0e615c7f9389559642a0ffbcda638f9fa04286a2a88c13998c23e9658c`  
		Last Modified: Tue, 09 Jan 2018 08:13:26 GMT  
		Size: 2.3 MB (2347496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a414ebecef73146647484d71ca6e152235d6037a527fa04772c5a97e5223ade`  
		Last Modified: Tue, 09 Jan 2018 08:13:48 GMT  
		Size: 78.0 MB (77951004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fad3232a767354f8c93f53bf4d48451a2c965bf878cc1abbcaeaa41e424dc3e`  
		Last Modified: Tue, 09 Jan 2018 08:13:26 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; 386

```console
$ docker pull redmine@sha256:bf25118489264592f42727d128bbcf0333944adc2c41253d56aafe4ed92a1c87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (256006912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b0ef538f115c3e2ab578dc0c6d10749afb8906f00352aac12ca97df5bb75ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 05:35:17 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 05:35:17 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 27 Dec 2017 05:38:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 05:38:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 05:38:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 05:38:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 05:38:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 05:38:44 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 07:30:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 07:31:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 07:31:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 07:31:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 07:31:13 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 07:31:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 07:32:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 07:32:10 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 07:32:11 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 14:15:24 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 14:15:24 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 14:15:30 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 14:21:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 14:21:10 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 14:21:11 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 14:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 14:21:12 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 14:21:12 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8433cc792f3631a19d39b1b13bc1d91aecaea3ee58a2749aef6ed157062a90f4`  
		Last Modified: Wed, 27 Dec 2017 06:13:43 GMT  
		Size: 32.8 MB (32804994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8544e6f5c46702a731a8cf1ab004083b860f59d43bb20d0ae9c06ef4e4cc23a`  
		Last Modified: Wed, 27 Dec 2017 06:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1f03b8086d0a736be57d706b878064d4bfc7a6d7ebcc9a9963092e0354606d`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215ad51247312c8cd80b09fcfa2fb352aba5508bcea4ea4922cbee6378d3dbc6`  
		Last Modified: Wed, 27 Dec 2017 07:59:01 GMT  
		Size: 14.8 MB (14817449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39860f5eb83b7c68a9bdc1bceb2341990d0bab7864735e97b284b884c47e283d`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3b7d3a5f9c2dd02661c14cf9d51b57ec6af36fb1ac9ac20a2e7268cd1eaed6`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf94345696cac4440cd6ac92e7804a1d25224bafa29367222c37250b382c109`  
		Last Modified: Wed, 27 Dec 2017 07:59:24 GMT  
		Size: 60.1 MB (60138354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2720e38323b776f1133d9a5e9c0d90c7ec99081fdc6c52b08c2b38db3eb1a1`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1b72a4a6aba2cd972a2e277383621e5c7816fbeea30d4935740cb45008e141`  
		Last Modified: Tue, 09 Jan 2018 15:02:06 GMT  
		Size: 2.3 MB (2347494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b2fb9945c215dfd2568cc4f0e2294be0ddc960790bd8ceafacc97855e9280`  
		Last Modified: Tue, 09 Jan 2018 15:02:30 GMT  
		Size: 78.0 MB (77979461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132f45661e88154933064d608be98708f1f397b85528c22be2dddf88363309c3`  
		Last Modified: Tue, 09 Jan 2018 15:01:59 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; ppc64le

```console
$ docker pull redmine@sha256:b1a825b7232565104701cf80ab0d390f78f47b8b8c04142f74a75e036eaed9ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249498344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1515d78e774df46d3d0c4eef6e1a1c2bdb4667bc31cf10dbc8d3c2708b7f8e10`
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
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 02:27:38 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:27:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:38:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:38:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:39:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:39:03 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:25:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:25:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:25:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:26:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:26:02 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:26:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:29:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:29:34 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:29:35 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:40:04 GMT
ENV REDMINE_VERSION=3.2.9
# Wed, 24 Jan 2018 03:40:05 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Wed, 24 Jan 2018 03:40:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:49:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:49:13 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:49:15 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:49:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:49:18 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:49:19 GMT
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
	-	`sha256:3137fa42767f14aa70db9afcaa682216cebe07aa438b32400d049e1f2b180d7b`  
		Last Modified: Wed, 24 Jan 2018 02:47:12 GMT  
		Size: 32.9 MB (32877209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dff2aad52c74c59b4235f081e3c2a9f80222094df9aaccaaacca36da32a1f1c`  
		Last Modified: Wed, 24 Jan 2018 02:47:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c02281fbd4e65f3fa1fe1bce08df79548d7debfc6848d20d6186200928ccd5d`  
		Last Modified: Wed, 24 Jan 2018 03:50:29 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da4432e70d3bdc7f379d5d01bd7e0bc70f501c750bec6cc6d003894eb10935`  
		Last Modified: Wed, 24 Jan 2018 03:50:32 GMT  
		Size: 14.7 MB (14720473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea798bef07da02aaa8593f76da2716b151e1a49843c78d6ad8bfbee15f81181`  
		Last Modified: Wed, 24 Jan 2018 03:50:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42595821bef47ba0e4927aea307b4f8fbff8ffb452f1ccb7726c29e3ddf61529`  
		Last Modified: Wed, 24 Jan 2018 03:50:27 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ea3db94185c5ccbc1d135280dd052167535458b7d63b600dd9849ba8b5cbe`  
		Last Modified: Wed, 24 Jan 2018 03:50:40 GMT  
		Size: 58.1 MB (58133154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b512f95b1b26c9a0b13bb07819a797e943460239d7215d2a272c7eca0d2b967`  
		Last Modified: Wed, 24 Jan 2018 03:50:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e22d143e04d97c5775ffd93386315b2adacfe84edcd4a01745ec9f5dd98096`  
		Last Modified: Wed, 24 Jan 2018 03:50:57 GMT  
		Size: 2.3 MB (2347815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ed1bfcbda2c4cca1c3a00373f1ee694330c69a8f52399ee541409bdd1b567e`  
		Last Modified: Wed, 24 Jan 2018 03:51:13 GMT  
		Size: 79.0 MB (78971714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d7d9f7775710544d62efca878c6eddb78b66e8c930b8f408d0cc284ad67335`  
		Last Modified: Wed, 24 Jan 2018 03:50:56 GMT  
		Size: 1.8 KB (1791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.9` - linux; s390x

```console
$ docker pull redmine@sha256:15acba99d2d408fe9a3717fcab72712cfdc57ad9d6dd1fc370b8073b48decf3b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259633686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8d1010c47cdae0bd16b7fee07983a7bc1d34d86643f142daeec1e259a3accd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 09:11:12 GMT
ENV RUBY_MAJOR=2.2
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_VERSION=2.2.9
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Sun, 07 Jan 2018 07:12:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 07 Jan 2018 07:15:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 07 Jan 2018 07:15:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 07 Jan 2018 07:15:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 07 Jan 2018 07:15:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 07:15:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 07 Jan 2018 07:15:23 GMT
CMD ["irb"]
# Sun, 07 Jan 2018 11:28:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 07 Jan 2018 11:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:28:25 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 11:28:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 07 Jan 2018 11:28:27 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 07 Jan 2018 11:28:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 07 Jan 2018 11:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:29:06 GMT
ENV RAILS_ENV=production
# Sun, 07 Jan 2018 11:29:06 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 23:49:19 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 23:49:19 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 23:49:22 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 23:51:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 23:51:22 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 23:51:23 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 23:51:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:51:23 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 23:51:23 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888e794c0fce17e4a9b4adf85d0fc22b1762df460da5715841e252187d1f93a7`  
		Last Modified: Sun, 07 Jan 2018 07:25:28 GMT  
		Size: 39.0 MB (39021507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a791dbff8b78310a044c5f42341c032980ad3cc31621ab2213e4fed5e35f1a`  
		Last Modified: Sun, 07 Jan 2018 07:25:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb55d565fa9c9bb567ff4220a1f16e04d3f176b65c814c432f20a7db9732668`  
		Last Modified: Sun, 07 Jan 2018 11:36:38 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d3cc22e5450e137b316844471fd6b14a2d16e06e07e2b71db3341e768a0d0f`  
		Last Modified: Sun, 07 Jan 2018 11:36:43 GMT  
		Size: 14.8 MB (14815174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a90f9712a91230ac3919e9b627a0ed8c8f3312969c1d58710dbda013fd98c6`  
		Last Modified: Sun, 07 Jan 2018 11:36:37 GMT  
		Size: 486.8 KB (486830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3fdd17eb3220367989f9b0343d648093f4d56dd89c1d9e7946e52a4ee3b10f`  
		Last Modified: Sun, 07 Jan 2018 11:36:37 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f95972bda65e5ea00a62c4f219fca028d848de636d6d346ab881daadc24bf`  
		Last Modified: Sun, 07 Jan 2018 11:36:54 GMT  
		Size: 59.1 MB (59105759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60aea330e97a01e0e7850cca8e4df4f9bf0f9b2c094be0ec8162eb2323ee2eae`  
		Last Modified: Sun, 07 Jan 2018 11:36:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b2399782cb05495c6311eda0b2213d50daa6ba4185410587a7c6f0220319e`  
		Last Modified: Tue, 09 Jan 2018 23:52:57 GMT  
		Size: 2.3 MB (2347497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0396e7cfe41cc077f30b5c919a8c1e319ff788a96176a80ab6b805c1568c11`  
		Last Modified: Tue, 09 Jan 2018 23:53:07 GMT  
		Size: 81.1 MB (81074091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61dad086a76847cfe5ccc1be25c896ff966013a4b1a33d43034527d869daf6a9`  
		Last Modified: Tue, 09 Jan 2018 23:52:59 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2.9-passenger`

```console
$ docker pull redmine@sha256:b02c9d21f58bb9cd3692dd3885dcb5b874fa60ac6f5303f14116c6de871ceba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.9-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:46de5c8df3dba9e7163f2811ead74f805b13a2b407f037bf5dcc85a6e81b5982
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.4 MB (270429133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d674384c3a7b7f25301978b1d9ab3207cbaff3bb619add72e599c0aa472cb9d`
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
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 21:39:36 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:39:37 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:42:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:42:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:42:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:42:20 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 00:47:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 00:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:47:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 00:47:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 00:47:36 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 00:47:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 00:48:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:48:12 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 00:48:12 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 01:19:41 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 01:19:41 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 01:19:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 01:23:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:23:59 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 01:24:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 01:24:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 01:24:00 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 01:24:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 09 Jan 2018 01:34:39 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 09 Jan 2018 01:34:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:35:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 09 Jan 2018 01:35:04 GMT
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
	-	`sha256:6e474c9afe180dc9afb2c470f985a85bb617a0e261904d2a92c93c3da98bbfa4`  
		Last Modified: Tue, 26 Dec 2017 22:04:13 GMT  
		Size: 35.3 MB (35328463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d66ac80f46f844bced5b6e67646102218eb23f56a2aee58b21cbd1040076e59`  
		Last Modified: Tue, 26 Dec 2017 22:04:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb22a04a8c5fbeef6e3cdbe1a5c73d4ba5996b31b3043f23230925fd140594c`  
		Last Modified: Fri, 29 Dec 2017 02:27:05 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93ec21959dc84be4348264bba0717f32a959e81f288ab34b545fc8619d0019b`  
		Last Modified: Fri, 29 Dec 2017 02:27:06 GMT  
		Size: 14.7 MB (14650312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ec2fc2c71ce4ad8a55087c4dd1ecb89e1b94392617160db979e0f346ee9f07`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7d0e1edae09791b9c0d1818dc84048420cbdf3caa9e41625b2aa94a91c8c37`  
		Last Modified: Fri, 29 Dec 2017 02:27:00 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e720d0a70ed26731a5572d411e2079b7e633018462c5bd48243239b27e793de`  
		Last Modified: Fri, 29 Dec 2017 02:27:15 GMT  
		Size: 59.3 MB (59266783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a54e97a7f7e164da773df729acdcf6c1386d88138b239737da6c628da309385`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa58ed19baa12b115b80922c04b8cecdfa66cc4e83904c56dc663bee4c543b42`  
		Last Modified: Tue, 09 Jan 2018 02:03:19 GMT  
		Size: 2.3 MB (2347495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc54a2158cd34d9999c85cb1a74af46c88a39660bdfb990e5c1994a9cfd9c605`  
		Last Modified: Tue, 09 Jan 2018 02:03:35 GMT  
		Size: 78.7 MB (78708223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786a785138b0200424e99aae65e9eb4375a32f5e29f67d425178d704509bf98`  
		Last Modified: Tue, 09 Jan 2018 02:03:16 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734b1e5c26e35c0559e0c08c8e784eee8fd18f746b3bfbba9927602ba5ef67c`  
		Last Modified: Tue, 09 Jan 2018 02:04:17 GMT  
		Size: 12.8 MB (12752815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abae52f25def97b54d40976fc6aeb8450836733fd506350ad4b90fd5a4063922`  
		Last Modified: Tue, 09 Jan 2018 02:04:12 GMT  
		Size: 4.1 MB (4076942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:b02c9d21f58bb9cd3692dd3885dcb5b874fa60ac6f5303f14116c6de871ceba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:46de5c8df3dba9e7163f2811ead74f805b13a2b407f037bf5dcc85a6e81b5982
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.4 MB (270429133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d674384c3a7b7f25301978b1d9ab3207cbaff3bb619add72e599c0aa472cb9d`
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
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 21:39:36 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:39:37 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:42:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:42:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:42:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:42:20 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 00:47:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 00:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:47:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 00:47:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 00:47:36 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 00:47:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 00:48:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:48:12 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 00:48:12 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 01:19:41 GMT
ENV REDMINE_VERSION=3.2.9
# Tue, 09 Jan 2018 01:19:41 GMT
ENV REDMINE_DOWNLOAD_MD5=5d6f3ae2785113e83106c5f89dc2ce92
# Tue, 09 Jan 2018 01:19:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 01:23:59 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:23:59 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 01:24:00 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 01:24:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 01:24:00 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 01:24:00 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 09 Jan 2018 01:34:39 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 09 Jan 2018 01:34:58 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:35:03 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 09 Jan 2018 01:35:04 GMT
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
	-	`sha256:6e474c9afe180dc9afb2c470f985a85bb617a0e261904d2a92c93c3da98bbfa4`  
		Last Modified: Tue, 26 Dec 2017 22:04:13 GMT  
		Size: 35.3 MB (35328463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d66ac80f46f844bced5b6e67646102218eb23f56a2aee58b21cbd1040076e59`  
		Last Modified: Tue, 26 Dec 2017 22:04:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb22a04a8c5fbeef6e3cdbe1a5c73d4ba5996b31b3043f23230925fd140594c`  
		Last Modified: Fri, 29 Dec 2017 02:27:05 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93ec21959dc84be4348264bba0717f32a959e81f288ab34b545fc8619d0019b`  
		Last Modified: Fri, 29 Dec 2017 02:27:06 GMT  
		Size: 14.7 MB (14650312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ec2fc2c71ce4ad8a55087c4dd1ecb89e1b94392617160db979e0f346ee9f07`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7d0e1edae09791b9c0d1818dc84048420cbdf3caa9e41625b2aa94a91c8c37`  
		Last Modified: Fri, 29 Dec 2017 02:27:00 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e720d0a70ed26731a5572d411e2079b7e633018462c5bd48243239b27e793de`  
		Last Modified: Fri, 29 Dec 2017 02:27:15 GMT  
		Size: 59.3 MB (59266783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a54e97a7f7e164da773df729acdcf6c1386d88138b239737da6c628da309385`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa58ed19baa12b115b80922c04b8cecdfa66cc4e83904c56dc663bee4c543b42`  
		Last Modified: Tue, 09 Jan 2018 02:03:19 GMT  
		Size: 2.3 MB (2347495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc54a2158cd34d9999c85cb1a74af46c88a39660bdfb990e5c1994a9cfd9c605`  
		Last Modified: Tue, 09 Jan 2018 02:03:35 GMT  
		Size: 78.7 MB (78708223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786a785138b0200424e99aae65e9eb4375a32f5e29f67d425178d704509bf98`  
		Last Modified: Tue, 09 Jan 2018 02:03:16 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5734b1e5c26e35c0559e0c08c8e784eee8fd18f746b3bfbba9927602ba5ef67c`  
		Last Modified: Tue, 09 Jan 2018 02:04:17 GMT  
		Size: 12.8 MB (12752815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abae52f25def97b54d40976fc6aeb8450836733fd506350ad4b90fd5a4063922`  
		Last Modified: Tue, 09 Jan 2018 02:04:12 GMT  
		Size: 4.1 MB (4076942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:52cae5d5d1c0b1948b8b2d6743e5f23b785fca50887ffe2408869a0e7b15dda7
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
$ docker pull redmine@sha256:e806cda745a0ce66e5eb5a667fec358f207ab25d29376612aa0268c41b766ad6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253644543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d30e54bda359e50499138e70d6af5288bd084f36ffd73617e7fd31b9369b1d`
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
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 21:39:36 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:39:37 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:42:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:42:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:42:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:42:20 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 00:47:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 00:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:47:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 00:47:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 00:47:36 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 00:47:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 00:48:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:48:12 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 00:48:12 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 01:05:51 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 01:05:52 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 01:05:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 01:09:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 01:09:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 01:09:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 01:09:52 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 01:09:53 GMT
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
	-	`sha256:6e474c9afe180dc9afb2c470f985a85bb617a0e261904d2a92c93c3da98bbfa4`  
		Last Modified: Tue, 26 Dec 2017 22:04:13 GMT  
		Size: 35.3 MB (35328463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d66ac80f46f844bced5b6e67646102218eb23f56a2aee58b21cbd1040076e59`  
		Last Modified: Tue, 26 Dec 2017 22:04:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb22a04a8c5fbeef6e3cdbe1a5c73d4ba5996b31b3043f23230925fd140594c`  
		Last Modified: Fri, 29 Dec 2017 02:27:05 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93ec21959dc84be4348264bba0717f32a959e81f288ab34b545fc8619d0019b`  
		Last Modified: Fri, 29 Dec 2017 02:27:06 GMT  
		Size: 14.7 MB (14650312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ec2fc2c71ce4ad8a55087c4dd1ecb89e1b94392617160db979e0f346ee9f07`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7d0e1edae09791b9c0d1818dc84048420cbdf3caa9e41625b2aa94a91c8c37`  
		Last Modified: Fri, 29 Dec 2017 02:27:00 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e720d0a70ed26731a5572d411e2079b7e633018462c5bd48243239b27e793de`  
		Last Modified: Fri, 29 Dec 2017 02:27:15 GMT  
		Size: 59.3 MB (59266783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a54e97a7f7e164da773df729acdcf6c1386d88138b239737da6c628da309385`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732c9e8f58df3871c1b978280f049b453aa9de13e9b6965c3b6aa24636b9fc5d`  
		Last Modified: Tue, 09 Jan 2018 01:52:40 GMT  
		Size: 2.4 MB (2392406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8a8eecd1bb4783d5e6f16b6f31ba901513de090ca10c6cc0b8cb902be478cc`  
		Last Modified: Tue, 09 Jan 2018 01:53:01 GMT  
		Size: 78.7 MB (78708479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b204fb3b73945b9db272abb4a3264f754fc0620d49f5dbcc2ff7e8d3edab60aa`  
		Last Modified: Tue, 09 Jan 2018 01:52:37 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:5c34450af788287da6b93348fa4a964c4ef3b34ff31c0080ea0a5c90dac1a20a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242691981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af9c5e2b1efbc5500ac30b4edee33db87212aa6cab1b65837b64a69f959368a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 03:05:35 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 03:05:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 03:09:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 03:09:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 03:09:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 03:09:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 03:09:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 03:09:17 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:39:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:39:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:39:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:39:39 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:39:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:40:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:40:34 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:40:34 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:40:34 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 24 Jan 2018 03:40:34 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 24 Jan 2018 03:40:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:45:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:45:02 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:45:02 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:45:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:45:03 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:45:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca22a5febdeae6c6f26d3b16d9f78539c80bc4b2131b1d84fbe676bb5208636e`  
		Last Modified: Wed, 24 Jan 2018 03:15:26 GMT  
		Size: 30.8 MB (30802634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a21caa94528f6f6faaa7cc3122f273f9d3c5e802e3b20d71004b511548739`  
		Last Modified: Wed, 24 Jan 2018 03:15:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550174a5014f11432d40d85582d5ddb978911c2935862488d4bceaa0bbddd6ee`  
		Last Modified: Wed, 24 Jan 2018 03:50:54 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770273e963a9f961982de0aa679b7475b228a86ef3476fa2ddba8b5734573776`  
		Last Modified: Wed, 24 Jan 2018 03:50:58 GMT  
		Size: 14.3 MB (14347490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebc77956eef7bcbcd337ed6bb10b23432de7dab6a34a5d86030f7a029e70864`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 491.1 KB (491126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6435e086bb8c35fffbd90989e1de568691995e2f66b6c7805c06e3d155c4ef6`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a5c1c865c893c57631279160481b99c9018f0deffedd398bd42905b04081d7`  
		Last Modified: Wed, 24 Jan 2018 03:51:10 GMT  
		Size: 56.6 MB (56603531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d627d8b9863c4dbb72200e5aebc3c86819c946a24640c657c4f472484f4840f`  
		Last Modified: Wed, 24 Jan 2018 03:50:51 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e05c5280e76e69074fb491083135f9f7e873ab420461ddbd79969764ac470b5`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 2.4 MB (2392611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c80fe324da4233fa0a79720d6a3a0d0ff299cf88a76210acf00ae43bf995b9`  
		Last Modified: Wed, 24 Jan 2018 03:51:10 GMT  
		Size: 78.0 MB (78027287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927dc9fcda5022c2b21dfffaf7fc2c0f682c730b6408e8db6b809f3adc8a97e1`  
		Last Modified: Wed, 24 Jan 2018 03:50:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:19f19793a263ee38be1148257af64f71c7f158d4fc68c11db5720c2ed3631688
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236896147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b660ff91a1f09d980a6c836e30492664f3f520175f6fb51180a781ef4cdd19d`
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
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 02:50:52 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:50:52 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:55:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:55:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:55:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:55:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:55:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:55:17 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:24:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:25:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:25:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:25:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:25:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:25:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:26:21 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:26:21 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:26:22 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 24 Jan 2018 03:26:22 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 24 Jan 2018 03:26:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:30:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:30:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:30:38 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:30:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:30:38 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:30:39 GMT
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
	-	`sha256:90208f9d9b093eeaef7969ca24f8ae51a6a51e5fdcb07053f9d20fc71e61bb0c`  
		Last Modified: Wed, 24 Jan 2018 03:01:53 GMT  
		Size: 30.6 MB (30581442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fe6597b68caf87240e9839fae089a98b43463a5e99691e0431e1934d68b982`  
		Last Modified: Wed, 24 Jan 2018 03:01:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d054f11e2c9412caf728a8a5d628313352532f8eeab8daa4926a7686fe933409`  
		Last Modified: Wed, 24 Jan 2018 03:36:15 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab108f1f3fe76ac7f534da5260fbc8ac018f315f0652a514d80f7ac5e7942553`  
		Last Modified: Wed, 24 Jan 2018 03:36:19 GMT  
		Size: 14.1 MB (14134519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89af20c9223a656dde4dab338d00af6b6a38404a8a9ba8c06c94d062a5a1d6b`  
		Last Modified: Wed, 24 Jan 2018 03:36:13 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9411cf5efd82f991d21a46e21d53670098da7e5616dc2dc5768698caf48fe3`  
		Last Modified: Wed, 24 Jan 2018 03:36:13 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4db4b365a17e7a994d5441542b6ebc721749776df65f2761a6bec91dff7709`  
		Last Modified: Wed, 24 Jan 2018 03:36:28 GMT  
		Size: 54.3 MB (54346287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450fb0889a40e8b1700ab5941881943bb044a9dbcac24abe1f40dd08bcb63524`  
		Last Modified: Wed, 24 Jan 2018 03:36:11 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c07c9be92431a8d7867e43e6bd80d2f0c5b3f4dec5bc23f6b976e0839a868fa`  
		Last Modified: Wed, 24 Jan 2018 03:36:14 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed2375e068228067cb9a92be85359c1200d77994d59bbfc56420f039fde5619`  
		Last Modified: Wed, 24 Jan 2018 03:36:29 GMT  
		Size: 77.5 MB (77478405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eded849b15cd246f945040e66583e8f6b70f8e5322ec71c229b57107df8c6f0`  
		Last Modified: Wed, 24 Jan 2018 03:36:12 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:af382514a8616b35e192d4ae294d94d9ba766eb654af1f556491e5475ebf929d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245819336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8883858584248cfae2156de6acfbab3ee29b1344609a159d6711a43bbb07612`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 23:05:06 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 23:05:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 23:12:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 23:12:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 23:12:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 23:12:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 23:12:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 23:12:28 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 01:57:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 01:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 01:57:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 01:57:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 01:57:58 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 01:58:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 01:59:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 01:59:40 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 01:59:40 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 07:49:26 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 07:49:27 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 07:49:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 07:59:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 07:59:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 07:59:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 07:59:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 07:59:43 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 07:59:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4df6f80dda3c9d98ea283c916e8ac7ed0e954eb44e55b7e36696e40e6f14a1`  
		Last Modified: Tue, 26 Dec 2017 23:23:28 GMT  
		Size: 35.5 MB (35465051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc53bc9641ee37e3a235565248f1e6956350fc6d2e6b25c654f29734a84d899d`  
		Last Modified: Tue, 26 Dec 2017 23:23:12 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dbfbd9e9a248418bda6fe4bccd11aba9385f738998cbf0cdc783b6eb4f268d`  
		Last Modified: Fri, 29 Dec 2017 08:09:40 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9aaa5e6c2219745eab6dd77174718d996ab1b9786780797f6952a285e277dd`  
		Last Modified: Fri, 29 Dec 2017 08:09:44 GMT  
		Size: 14.5 MB (14462642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab150e6e0be355a383a222c0c15b71da6e52f85e0643a16ef975c2b92168073`  
		Last Modified: Fri, 29 Dec 2017 08:09:38 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cf000300fcca9e37148140564d0ea493a5d45c3bb7415ce6563be257ea87a4`  
		Last Modified: Fri, 29 Dec 2017 08:09:38 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c4d3775e2bffb97b61476cb0cc36d083228a1561bff808404797dca6c31bd5`  
		Last Modified: Fri, 29 Dec 2017 08:09:56 GMT  
		Size: 55.8 MB (55784664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bc533bf3e52c39a4ce92c398d432c65fa7287207ff03ef731b099a768078cb`  
		Last Modified: Fri, 29 Dec 2017 08:09:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee20e498b5b8ba5cfebc55d2295195ceb3435cc2ea185d033b3f956824343a0`  
		Last Modified: Tue, 09 Jan 2018 08:12:42 GMT  
		Size: 2.4 MB (2392403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809d19e2fc86f5987bb17baa5466755c22b8f7bc3ffa797dfe3e1c23b42f8add`  
		Last Modified: Tue, 09 Jan 2018 08:13:02 GMT  
		Size: 78.0 MB (77951669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c84936f523cc1133025909da34433307dc693e6ecb62e89c2cbdf06009946a`  
		Last Modified: Tue, 09 Jan 2018 08:12:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:6155ade861929bcc7f4165d30fbda71254d65670699462dc60aed553d5d36f30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256053222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce87be94e95b6c3b10777f00657e1ea28795fcf9d1460a01b34b332072f69418`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 05:35:17 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 05:35:17 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 27 Dec 2017 05:38:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 05:38:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 05:38:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 05:38:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 05:38:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 05:38:44 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 07:30:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 07:31:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 07:31:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 07:31:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 07:31:13 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 07:31:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 07:32:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 07:32:10 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 07:32:11 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 13:55:01 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 13:55:02 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 13:55:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 14:00:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 14:00:27 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 14:00:27 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 14:00:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 14:00:28 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 14:00:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8433cc792f3631a19d39b1b13bc1d91aecaea3ee58a2749aef6ed157062a90f4`  
		Last Modified: Wed, 27 Dec 2017 06:13:43 GMT  
		Size: 32.8 MB (32804994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8544e6f5c46702a731a8cf1ab004083b860f59d43bb20d0ae9c06ef4e4cc23a`  
		Last Modified: Wed, 27 Dec 2017 06:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1f03b8086d0a736be57d706b878064d4bfc7a6d7ebcc9a9963092e0354606d`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215ad51247312c8cd80b09fcfa2fb352aba5508bcea4ea4922cbee6378d3dbc6`  
		Last Modified: Wed, 27 Dec 2017 07:59:01 GMT  
		Size: 14.8 MB (14817449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39860f5eb83b7c68a9bdc1bceb2341990d0bab7864735e97b284b884c47e283d`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3b7d3a5f9c2dd02661c14cf9d51b57ec6af36fb1ac9ac20a2e7268cd1eaed6`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf94345696cac4440cd6ac92e7804a1d25224bafa29367222c37250b382c109`  
		Last Modified: Wed, 27 Dec 2017 07:59:24 GMT  
		Size: 60.1 MB (60138354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2720e38323b776f1133d9a5e9c0d90c7ec99081fdc6c52b08c2b38db3eb1a1`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d6bf5b62648f5c3a7fe69d0980308ce5b8b9a98ec21dac1deffa967da537bf`  
		Last Modified: Tue, 09 Jan 2018 14:45:01 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd00d0d391ebe284de47279043aef59a9f450389389040eccc701d1de9dbe3b1`  
		Last Modified: Tue, 09 Jan 2018 14:45:29 GMT  
		Size: 78.0 MB (77980867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9982fcc8209280c0542abf698ba92428dc45834d538165276834aed32b077`  
		Last Modified: Tue, 09 Jan 2018 14:44:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:9710edcfa6a77d0049143195535ac371b2e2259f679b40bd5b1eeea972342c3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249512825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae74db726e3a4c4e03afb42948b0f4bc39f87ec241134e7496a723502513ab4`
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
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 02:27:38 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:27:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:38:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:38:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:39:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:39:03 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:25:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:25:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:25:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:26:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:26:02 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:26:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:29:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:29:34 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:29:35 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:29:38 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 24 Jan 2018 03:29:49 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 24 Jan 2018 03:29:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:39:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:39:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:39:42 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:39:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:39:50 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:39:51 GMT
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
	-	`sha256:3137fa42767f14aa70db9afcaa682216cebe07aa438b32400d049e1f2b180d7b`  
		Last Modified: Wed, 24 Jan 2018 02:47:12 GMT  
		Size: 32.9 MB (32877209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dff2aad52c74c59b4235f081e3c2a9f80222094df9aaccaaacca36da32a1f1c`  
		Last Modified: Wed, 24 Jan 2018 02:47:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c02281fbd4e65f3fa1fe1bce08df79548d7debfc6848d20d6186200928ccd5d`  
		Last Modified: Wed, 24 Jan 2018 03:50:29 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da4432e70d3bdc7f379d5d01bd7e0bc70f501c750bec6cc6d003894eb10935`  
		Last Modified: Wed, 24 Jan 2018 03:50:32 GMT  
		Size: 14.7 MB (14720473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea798bef07da02aaa8593f76da2716b151e1a49843c78d6ad8bfbee15f81181`  
		Last Modified: Wed, 24 Jan 2018 03:50:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42595821bef47ba0e4927aea307b4f8fbff8ffb452f1ccb7726c29e3ddf61529`  
		Last Modified: Wed, 24 Jan 2018 03:50:27 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ea3db94185c5ccbc1d135280dd052167535458b7d63b600dd9849ba8b5cbe`  
		Last Modified: Wed, 24 Jan 2018 03:50:40 GMT  
		Size: 58.1 MB (58133154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b512f95b1b26c9a0b13bb07819a797e943460239d7215d2a272c7eca0d2b967`  
		Last Modified: Wed, 24 Jan 2018 03:50:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1ffbbecab8d2a90924124bb394033551a92838847958d5b4a92ca03b68dfa3`  
		Last Modified: Wed, 24 Jan 2018 03:50:25 GMT  
		Size: 2.4 MB (2392605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d6cd0fe81c01b074afc0cbeb259c14a7b6e44796a3f6292bfc6d00c610ecc`  
		Last Modified: Wed, 24 Jan 2018 03:50:40 GMT  
		Size: 78.9 MB (78941403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819cb1336ed4aab69a8d19d5096c06b411b611300a31b422764da434cc3c9a75`  
		Last Modified: Wed, 24 Jan 2018 03:50:24 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; s390x

```console
$ docker pull redmine@sha256:27976ac3079f01271d86ddd65cfd88a3b4a3e0dcd8866c003ec0d954a810b4e8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259634357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fef49785cdfcc6e6bbf319d7960097cd95700c40f82f5eb56761086356f7ea8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 09:11:12 GMT
ENV RUBY_MAJOR=2.2
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_VERSION=2.2.9
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Sun, 07 Jan 2018 07:12:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 07 Jan 2018 07:15:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 07 Jan 2018 07:15:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 07 Jan 2018 07:15:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 07 Jan 2018 07:15:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 07:15:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 07 Jan 2018 07:15:23 GMT
CMD ["irb"]
# Sun, 07 Jan 2018 11:28:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 07 Jan 2018 11:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:28:25 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 11:28:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 07 Jan 2018 11:28:27 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 07 Jan 2018 11:28:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 07 Jan 2018 11:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:29:06 GMT
ENV RAILS_ENV=production
# Sun, 07 Jan 2018 11:29:06 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 23:46:43 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 23:46:43 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 23:46:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 23:48:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 23:48:58 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 23:48:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 23:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:48:58 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 23:48:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888e794c0fce17e4a9b4adf85d0fc22b1762df460da5715841e252187d1f93a7`  
		Last Modified: Sun, 07 Jan 2018 07:25:28 GMT  
		Size: 39.0 MB (39021507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a791dbff8b78310a044c5f42341c032980ad3cc31621ab2213e4fed5e35f1a`  
		Last Modified: Sun, 07 Jan 2018 07:25:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb55d565fa9c9bb567ff4220a1f16e04d3f176b65c814c432f20a7db9732668`  
		Last Modified: Sun, 07 Jan 2018 11:36:38 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d3cc22e5450e137b316844471fd6b14a2d16e06e07e2b71db3341e768a0d0f`  
		Last Modified: Sun, 07 Jan 2018 11:36:43 GMT  
		Size: 14.8 MB (14815174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a90f9712a91230ac3919e9b627a0ed8c8f3312969c1d58710dbda013fd98c6`  
		Last Modified: Sun, 07 Jan 2018 11:36:37 GMT  
		Size: 486.8 KB (486830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3fdd17eb3220367989f9b0343d648093f4d56dd89c1d9e7946e52a4ee3b10f`  
		Last Modified: Sun, 07 Jan 2018 11:36:37 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f95972bda65e5ea00a62c4f219fca028d848de636d6d346ab881daadc24bf`  
		Last Modified: Sun, 07 Jan 2018 11:36:54 GMT  
		Size: 59.1 MB (59105759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60aea330e97a01e0e7850cca8e4df4f9bf0f9b2c094be0ec8162eb2323ee2eae`  
		Last Modified: Sun, 07 Jan 2018 11:36:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3066206466fdf7e15eb3f198ae75a2a4d12efc35ba67a120776d8461759ab3cb`  
		Last Modified: Tue, 09 Jan 2018 23:52:25 GMT  
		Size: 2.4 MB (2392406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61319ce2454b7560d0cc75dac58c5141ac454493e17b70a461e475b508587d9b`  
		Last Modified: Tue, 09 Jan 2018 23:52:37 GMT  
		Size: 81.0 MB (81029854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6685213f99c36eaad232ad077b6a3bd4ba34826388ece02076ef4af4c707480`  
		Last Modified: Tue, 09 Jan 2018 23:52:25 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.6`

```console
$ docker pull redmine@sha256:52cae5d5d1c0b1948b8b2d6743e5f23b785fca50887ffe2408869a0e7b15dda7
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

### `redmine:3.3.6` - linux; amd64

```console
$ docker pull redmine@sha256:e806cda745a0ce66e5eb5a667fec358f207ab25d29376612aa0268c41b766ad6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253644543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d30e54bda359e50499138e70d6af5288bd084f36ffd73617e7fd31b9369b1d`
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
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 21:39:36 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:39:37 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:42:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:42:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:42:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:42:20 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 00:47:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 00:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:47:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 00:47:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 00:47:36 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 00:47:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 00:48:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:48:12 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 00:48:12 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 01:05:51 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 01:05:52 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 01:05:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 01:09:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 01:09:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 01:09:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 01:09:52 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 01:09:53 GMT
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
	-	`sha256:6e474c9afe180dc9afb2c470f985a85bb617a0e261904d2a92c93c3da98bbfa4`  
		Last Modified: Tue, 26 Dec 2017 22:04:13 GMT  
		Size: 35.3 MB (35328463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d66ac80f46f844bced5b6e67646102218eb23f56a2aee58b21cbd1040076e59`  
		Last Modified: Tue, 26 Dec 2017 22:04:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb22a04a8c5fbeef6e3cdbe1a5c73d4ba5996b31b3043f23230925fd140594c`  
		Last Modified: Fri, 29 Dec 2017 02:27:05 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93ec21959dc84be4348264bba0717f32a959e81f288ab34b545fc8619d0019b`  
		Last Modified: Fri, 29 Dec 2017 02:27:06 GMT  
		Size: 14.7 MB (14650312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ec2fc2c71ce4ad8a55087c4dd1ecb89e1b94392617160db979e0f346ee9f07`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7d0e1edae09791b9c0d1818dc84048420cbdf3caa9e41625b2aa94a91c8c37`  
		Last Modified: Fri, 29 Dec 2017 02:27:00 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e720d0a70ed26731a5572d411e2079b7e633018462c5bd48243239b27e793de`  
		Last Modified: Fri, 29 Dec 2017 02:27:15 GMT  
		Size: 59.3 MB (59266783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a54e97a7f7e164da773df729acdcf6c1386d88138b239737da6c628da309385`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732c9e8f58df3871c1b978280f049b453aa9de13e9b6965c3b6aa24636b9fc5d`  
		Last Modified: Tue, 09 Jan 2018 01:52:40 GMT  
		Size: 2.4 MB (2392406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8a8eecd1bb4783d5e6f16b6f31ba901513de090ca10c6cc0b8cb902be478cc`  
		Last Modified: Tue, 09 Jan 2018 01:53:01 GMT  
		Size: 78.7 MB (78708479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b204fb3b73945b9db272abb4a3264f754fc0620d49f5dbcc2ff7e8d3edab60aa`  
		Last Modified: Tue, 09 Jan 2018 01:52:37 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v5

```console
$ docker pull redmine@sha256:5c34450af788287da6b93348fa4a964c4ef3b34ff31c0080ea0a5c90dac1a20a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242691981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af9c5e2b1efbc5500ac30b4edee33db87212aa6cab1b65837b64a69f959368a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:32:48 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 03:04:40 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 03:05:35 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 03:05:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 03:09:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 03:09:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 03:09:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 03:09:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 03:09:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 03:09:17 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:39:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:39:37 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:39:39 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:39:39 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:39:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:40:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:40:34 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:40:34 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:40:34 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 24 Jan 2018 03:40:34 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 24 Jan 2018 03:40:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:45:01 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:45:02 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:45:02 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:45:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:45:03 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:45:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca22a5febdeae6c6f26d3b16d9f78539c80bc4b2131b1d84fbe676bb5208636e`  
		Last Modified: Wed, 24 Jan 2018 03:15:26 GMT  
		Size: 30.8 MB (30802634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039a21caa94528f6f6faaa7cc3122f273f9d3c5e802e3b20d71004b511548739`  
		Last Modified: Wed, 24 Jan 2018 03:15:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:550174a5014f11432d40d85582d5ddb978911c2935862488d4bceaa0bbddd6ee`  
		Last Modified: Wed, 24 Jan 2018 03:50:54 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770273e963a9f961982de0aa679b7475b228a86ef3476fa2ddba8b5734573776`  
		Last Modified: Wed, 24 Jan 2018 03:50:58 GMT  
		Size: 14.3 MB (14347490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebc77956eef7bcbcd337ed6bb10b23432de7dab6a34a5d86030f7a029e70864`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 491.1 KB (491126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6435e086bb8c35fffbd90989e1de568691995e2f66b6c7805c06e3d155c4ef6`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 7.8 KB (7844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a5c1c865c893c57631279160481b99c9018f0deffedd398bd42905b04081d7`  
		Last Modified: Wed, 24 Jan 2018 03:51:10 GMT  
		Size: 56.6 MB (56603531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d627d8b9863c4dbb72200e5aebc3c86819c946a24640c657c4f472484f4840f`  
		Last Modified: Wed, 24 Jan 2018 03:50:51 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e05c5280e76e69074fb491083135f9f7e873ab420461ddbd79969764ac470b5`  
		Last Modified: Wed, 24 Jan 2018 03:50:52 GMT  
		Size: 2.4 MB (2392611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c80fe324da4233fa0a79720d6a3a0d0ff299cf88a76210acf00ae43bf995b9`  
		Last Modified: Wed, 24 Jan 2018 03:51:10 GMT  
		Size: 78.0 MB (78027287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927dc9fcda5022c2b21dfffaf7fc2c0f682c730b6408e8db6b809f3adc8a97e1`  
		Last Modified: Wed, 24 Jan 2018 03:50:51 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm variant v7

```console
$ docker pull redmine@sha256:19f19793a263ee38be1148257af64f71c7f158d4fc68c11db5720c2ed3631688
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.9 MB (236896147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b660ff91a1f09d980a6c836e30492664f3f520175f6fb51180a781ef4cdd19d`
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
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:51:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 02:50:52 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:50:52 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:55:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:55:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:55:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:55:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:55:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:55:17 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:24:56 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:25:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:25:25 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:25:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:25:29 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:25:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:26:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:26:21 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:26:21 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:26:22 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 24 Jan 2018 03:26:22 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 24 Jan 2018 03:26:26 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:30:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:30:38 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:30:38 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:30:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:30:38 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:30:39 GMT
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
	-	`sha256:90208f9d9b093eeaef7969ca24f8ae51a6a51e5fdcb07053f9d20fc71e61bb0c`  
		Last Modified: Wed, 24 Jan 2018 03:01:53 GMT  
		Size: 30.6 MB (30581442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fe6597b68caf87240e9839fae089a98b43463a5e99691e0431e1934d68b982`  
		Last Modified: Wed, 24 Jan 2018 03:01:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d054f11e2c9412caf728a8a5d628313352532f8eeab8daa4926a7686fe933409`  
		Last Modified: Wed, 24 Jan 2018 03:36:15 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab108f1f3fe76ac7f534da5260fbc8ac018f315f0652a514d80f7ac5e7942553`  
		Last Modified: Wed, 24 Jan 2018 03:36:19 GMT  
		Size: 14.1 MB (14134519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89af20c9223a656dde4dab338d00af6b6a38404a8a9ba8c06c94d062a5a1d6b`  
		Last Modified: Wed, 24 Jan 2018 03:36:13 GMT  
		Size: 475.3 KB (475267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9411cf5efd82f991d21a46e21d53670098da7e5616dc2dc5768698caf48fe3`  
		Last Modified: Wed, 24 Jan 2018 03:36:13 GMT  
		Size: 7.3 KB (7312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4db4b365a17e7a994d5441542b6ebc721749776df65f2761a6bec91dff7709`  
		Last Modified: Wed, 24 Jan 2018 03:36:28 GMT  
		Size: 54.3 MB (54346287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450fb0889a40e8b1700ab5941881943bb044a9dbcac24abe1f40dd08bcb63524`  
		Last Modified: Wed, 24 Jan 2018 03:36:11 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c07c9be92431a8d7867e43e6bd80d2f0c5b3f4dec5bc23f6b976e0839a868fa`  
		Last Modified: Wed, 24 Jan 2018 03:36:14 GMT  
		Size: 2.4 MB (2392602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed2375e068228067cb9a92be85359c1200d77994d59bbfc56420f039fde5619`  
		Last Modified: Wed, 24 Jan 2018 03:36:29 GMT  
		Size: 77.5 MB (77478405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eded849b15cd246f945040e66583e8f6b70f8e5322ec71c229b57107df8c6f0`  
		Last Modified: Wed, 24 Jan 2018 03:36:12 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:af382514a8616b35e192d4ae294d94d9ba766eb654af1f556491e5475ebf929d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245819336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8883858584248cfae2156de6acfbab3ee29b1344609a159d6711a43bbb07612`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:17:37 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 08:10:58 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 08:10:59 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 23:05:06 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 23:05:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 23:12:23 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 23:12:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 23:12:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 23:12:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 23:12:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 23:12:28 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 01:57:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 01:57:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 01:57:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 01:57:57 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 01:57:58 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 01:58:01 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 01:59:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 01:59:40 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 01:59:40 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 07:49:26 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 07:49:27 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 07:49:33 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 07:59:37 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 07:59:40 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 07:59:41 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 07:59:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 07:59:43 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 07:59:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4df6f80dda3c9d98ea283c916e8ac7ed0e954eb44e55b7e36696e40e6f14a1`  
		Last Modified: Tue, 26 Dec 2017 23:23:28 GMT  
		Size: 35.5 MB (35465051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc53bc9641ee37e3a235565248f1e6956350fc6d2e6b25c654f29734a84d899d`  
		Last Modified: Tue, 26 Dec 2017 23:23:12 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93dbfbd9e9a248418bda6fe4bccd11aba9385f738998cbf0cdc783b6eb4f268d`  
		Last Modified: Fri, 29 Dec 2017 08:09:40 GMT  
		Size: 2.1 KB (2105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9aaa5e6c2219745eab6dd77174718d996ab1b9786780797f6952a285e277dd`  
		Last Modified: Fri, 29 Dec 2017 08:09:44 GMT  
		Size: 14.5 MB (14462642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab150e6e0be355a383a222c0c15b71da6e52f85e0643a16ef975c2b92168073`  
		Last Modified: Fri, 29 Dec 2017 08:09:38 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20cf000300fcca9e37148140564d0ea493a5d45c3bb7415ce6563be257ea87a4`  
		Last Modified: Fri, 29 Dec 2017 08:09:38 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c4d3775e2bffb97b61476cb0cc36d083228a1561bff808404797dca6c31bd5`  
		Last Modified: Fri, 29 Dec 2017 08:09:56 GMT  
		Size: 55.8 MB (55784664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bc533bf3e52c39a4ce92c398d432c65fa7287207ff03ef731b099a768078cb`  
		Last Modified: Fri, 29 Dec 2017 08:09:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee20e498b5b8ba5cfebc55d2295195ceb3435cc2ea185d033b3f956824343a0`  
		Last Modified: Tue, 09 Jan 2018 08:12:42 GMT  
		Size: 2.4 MB (2392403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809d19e2fc86f5987bb17baa5466755c22b8f7bc3ffa797dfe3e1c23b42f8add`  
		Last Modified: Tue, 09 Jan 2018 08:13:02 GMT  
		Size: 78.0 MB (77951669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c84936f523cc1133025909da34433307dc693e6ecb62e89c2cbdf06009946a`  
		Last Modified: Tue, 09 Jan 2018 08:12:40 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; 386

```console
$ docker pull redmine@sha256:6155ade861929bcc7f4165d30fbda71254d65670699462dc60aed553d5d36f30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256053222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce87be94e95b6c3b10777f00657e1ea28795fcf9d1460a01b34b332072f69418`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:32:29 GMT
ENV RUBY_MAJOR=2.2
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 05:06:28 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 05:35:17 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 05:35:17 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 27 Dec 2017 05:38:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 05:38:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 05:38:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 05:38:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 05:38:44 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 05:38:44 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 07:30:47 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 07:31:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 07:31:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 07:31:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 07:31:13 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 07:31:16 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 07:32:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 07:32:10 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 07:32:11 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 13:55:01 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 13:55:02 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 13:55:08 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 14:00:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 14:00:27 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 14:00:27 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 14:00:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 14:00:28 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 14:00:28 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8433cc792f3631a19d39b1b13bc1d91aecaea3ee58a2749aef6ed157062a90f4`  
		Last Modified: Wed, 27 Dec 2017 06:13:43 GMT  
		Size: 32.8 MB (32804994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8544e6f5c46702a731a8cf1ab004083b860f59d43bb20d0ae9c06ef4e4cc23a`  
		Last Modified: Wed, 27 Dec 2017 06:13:29 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1f03b8086d0a736be57d706b878064d4bfc7a6d7ebcc9a9963092e0354606d`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215ad51247312c8cd80b09fcfa2fb352aba5508bcea4ea4922cbee6378d3dbc6`  
		Last Modified: Wed, 27 Dec 2017 07:59:01 GMT  
		Size: 14.8 MB (14817449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39860f5eb83b7c68a9bdc1bceb2341990d0bab7864735e97b284b884c47e283d`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 480.6 KB (480568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3b7d3a5f9c2dd02661c14cf9d51b57ec6af36fb1ac9ac20a2e7268cd1eaed6`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 8.6 KB (8563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf94345696cac4440cd6ac92e7804a1d25224bafa29367222c37250b382c109`  
		Last Modified: Wed, 27 Dec 2017 07:59:24 GMT  
		Size: 60.1 MB (60138354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2720e38323b776f1133d9a5e9c0d90c7ec99081fdc6c52b08c2b38db3eb1a1`  
		Last Modified: Wed, 27 Dec 2017 07:58:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d6bf5b62648f5c3a7fe69d0980308ce5b8b9a98ec21dac1deffa967da537bf`  
		Last Modified: Tue, 09 Jan 2018 14:45:01 GMT  
		Size: 2.4 MB (2392398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd00d0d391ebe284de47279043aef59a9f450389389040eccc701d1de9dbe3b1`  
		Last Modified: Tue, 09 Jan 2018 14:45:29 GMT  
		Size: 78.0 MB (77980867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f9982fcc8209280c0542abf698ba92428dc45834d538165276834aed32b077`  
		Last Modified: Tue, 09 Jan 2018 14:44:55 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; ppc64le

```console
$ docker pull redmine@sha256:9710edcfa6a77d0049143195535ac371b2e2259f679b40bd5b1eeea972342c3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249512825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae74db726e3a4c4e03afb42948b0f4bc39f87ec241134e7496a723502513ab4`
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
# Sat, 16 Dec 2017 02:44:02 GMT
ENV RUBY_VERSION=2.2.9
# Sat, 16 Dec 2017 02:44:03 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Wed, 27 Dec 2017 02:27:38 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:27:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:38:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:38:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:39:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:39:03 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:25:05 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:25:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:25:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:26:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:26:02 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:26:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:29:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:29:34 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:29:35 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:29:38 GMT
ENV REDMINE_VERSION=3.3.6
# Wed, 24 Jan 2018 03:29:49 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Wed, 24 Jan 2018 03:29:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:39:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:39:40 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:39:42 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:39:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:39:50 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:39:51 GMT
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
	-	`sha256:3137fa42767f14aa70db9afcaa682216cebe07aa438b32400d049e1f2b180d7b`  
		Last Modified: Wed, 24 Jan 2018 02:47:12 GMT  
		Size: 32.9 MB (32877209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dff2aad52c74c59b4235f081e3c2a9f80222094df9aaccaaacca36da32a1f1c`  
		Last Modified: Wed, 24 Jan 2018 02:47:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c02281fbd4e65f3fa1fe1bce08df79548d7debfc6848d20d6186200928ccd5d`  
		Last Modified: Wed, 24 Jan 2018 03:50:29 GMT  
		Size: 2.1 KB (2115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5da4432e70d3bdc7f379d5d01bd7e0bc70f501c750bec6cc6d003894eb10935`  
		Last Modified: Wed, 24 Jan 2018 03:50:32 GMT  
		Size: 14.7 MB (14720473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea798bef07da02aaa8593f76da2716b151e1a49843c78d6ad8bfbee15f81181`  
		Last Modified: Wed, 24 Jan 2018 03:50:28 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42595821bef47ba0e4927aea307b4f8fbff8ffb452f1ccb7726c29e3ddf61529`  
		Last Modified: Wed, 24 Jan 2018 03:50:27 GMT  
		Size: 8.6 KB (8638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90ea3db94185c5ccbc1d135280dd052167535458b7d63b600dd9849ba8b5cbe`  
		Last Modified: Wed, 24 Jan 2018 03:50:40 GMT  
		Size: 58.1 MB (58133154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b512f95b1b26c9a0b13bb07819a797e943460239d7215d2a272c7eca0d2b967`  
		Last Modified: Wed, 24 Jan 2018 03:50:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1ffbbecab8d2a90924124bb394033551a92838847958d5b4a92ca03b68dfa3`  
		Last Modified: Wed, 24 Jan 2018 03:50:25 GMT  
		Size: 2.4 MB (2392605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9d6cd0fe81c01b074afc0cbeb259c14a7b6e44796a3f6292bfc6d00c610ecc`  
		Last Modified: Wed, 24 Jan 2018 03:50:40 GMT  
		Size: 78.9 MB (78941403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819cb1336ed4aab69a8d19d5096c06b411b611300a31b422764da434cc3c9a75`  
		Last Modified: Wed, 24 Jan 2018 03:50:24 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.6` - linux; s390x

```console
$ docker pull redmine@sha256:27976ac3079f01271d86ddd65cfd88a3b4a3e0dcd8866c003ec0d954a810b4e8
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259634357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fef49785cdfcc6e6bbf319d7960097cd95700c40f82f5eb56761086356f7ea8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 09:11:12 GMT
ENV RUBY_MAJOR=2.2
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_VERSION=2.2.9
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Sun, 07 Jan 2018 07:12:34 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Sun, 07 Jan 2018 07:12:35 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 07 Jan 2018 07:15:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 07 Jan 2018 07:15:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 07 Jan 2018 07:15:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 07 Jan 2018 07:15:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 07:15:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 07 Jan 2018 07:15:23 GMT
CMD ["irb"]
# Sun, 07 Jan 2018 11:28:08 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 07 Jan 2018 11:28:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:28:25 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 11:28:27 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 07 Jan 2018 11:28:27 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 07 Jan 2018 11:28:29 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 07 Jan 2018 11:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:29:06 GMT
ENV RAILS_ENV=production
# Sun, 07 Jan 2018 11:29:06 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 23:46:43 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 23:46:43 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 23:46:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 23:48:57 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 23:48:58 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 23:48:58 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 23:48:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:48:58 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 23:48:58 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888e794c0fce17e4a9b4adf85d0fc22b1762df460da5715841e252187d1f93a7`  
		Last Modified: Sun, 07 Jan 2018 07:25:28 GMT  
		Size: 39.0 MB (39021507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a791dbff8b78310a044c5f42341c032980ad3cc31621ab2213e4fed5e35f1a`  
		Last Modified: Sun, 07 Jan 2018 07:25:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb55d565fa9c9bb567ff4220a1f16e04d3f176b65c814c432f20a7db9732668`  
		Last Modified: Sun, 07 Jan 2018 11:36:38 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87d3cc22e5450e137b316844471fd6b14a2d16e06e07e2b71db3341e768a0d0f`  
		Last Modified: Sun, 07 Jan 2018 11:36:43 GMT  
		Size: 14.8 MB (14815174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a90f9712a91230ac3919e9b627a0ed8c8f3312969c1d58710dbda013fd98c6`  
		Last Modified: Sun, 07 Jan 2018 11:36:37 GMT  
		Size: 486.8 KB (486830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa3fdd17eb3220367989f9b0343d648093f4d56dd89c1d9e7946e52a4ee3b10f`  
		Last Modified: Sun, 07 Jan 2018 11:36:37 GMT  
		Size: 8.6 KB (8624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f95972bda65e5ea00a62c4f219fca028d848de636d6d346ab881daadc24bf`  
		Last Modified: Sun, 07 Jan 2018 11:36:54 GMT  
		Size: 59.1 MB (59105759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60aea330e97a01e0e7850cca8e4df4f9bf0f9b2c094be0ec8162eb2323ee2eae`  
		Last Modified: Sun, 07 Jan 2018 11:36:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3066206466fdf7e15eb3f198ae75a2a4d12efc35ba67a120776d8461759ab3cb`  
		Last Modified: Tue, 09 Jan 2018 23:52:25 GMT  
		Size: 2.4 MB (2392406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61319ce2454b7560d0cc75dac58c5141ac454493e17b70a461e475b508587d9b`  
		Last Modified: Tue, 09 Jan 2018 23:52:37 GMT  
		Size: 81.0 MB (81029854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6685213f99c36eaad232ad077b6a3bd4ba34826388ece02076ef4af4c707480`  
		Last Modified: Tue, 09 Jan 2018 23:52:25 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3.6-passenger`

```console
$ docker pull redmine@sha256:8b896de09e4159282c86d8a834c033ec986ae7223b7275d1c995e56a8c2a6dc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.6-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:f9be147ba6e58c47f3f5c948d70c9b99fb4cbc03293211abcbc5798b13db1e62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270474350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75646cb645b8a1ceb094e807aecdbcfb07978cefd3a81ce99dca64e355167e10`
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
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 21:39:36 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:39:37 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:42:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:42:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:42:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:42:20 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 00:47:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 00:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:47:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 00:47:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 00:47:36 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 00:47:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 00:48:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:48:12 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 00:48:12 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 01:05:51 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 01:05:52 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 01:05:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 01:09:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 01:09:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 01:09:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 01:09:52 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 01:09:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 09 Jan 2018 01:19:09 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 09 Jan 2018 01:19:29 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:19:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 09 Jan 2018 01:19:30 GMT
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
	-	`sha256:6e474c9afe180dc9afb2c470f985a85bb617a0e261904d2a92c93c3da98bbfa4`  
		Last Modified: Tue, 26 Dec 2017 22:04:13 GMT  
		Size: 35.3 MB (35328463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d66ac80f46f844bced5b6e67646102218eb23f56a2aee58b21cbd1040076e59`  
		Last Modified: Tue, 26 Dec 2017 22:04:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb22a04a8c5fbeef6e3cdbe1a5c73d4ba5996b31b3043f23230925fd140594c`  
		Last Modified: Fri, 29 Dec 2017 02:27:05 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93ec21959dc84be4348264bba0717f32a959e81f288ab34b545fc8619d0019b`  
		Last Modified: Fri, 29 Dec 2017 02:27:06 GMT  
		Size: 14.7 MB (14650312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ec2fc2c71ce4ad8a55087c4dd1ecb89e1b94392617160db979e0f346ee9f07`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7d0e1edae09791b9c0d1818dc84048420cbdf3caa9e41625b2aa94a91c8c37`  
		Last Modified: Fri, 29 Dec 2017 02:27:00 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e720d0a70ed26731a5572d411e2079b7e633018462c5bd48243239b27e793de`  
		Last Modified: Fri, 29 Dec 2017 02:27:15 GMT  
		Size: 59.3 MB (59266783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a54e97a7f7e164da773df729acdcf6c1386d88138b239737da6c628da309385`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732c9e8f58df3871c1b978280f049b453aa9de13e9b6965c3b6aa24636b9fc5d`  
		Last Modified: Tue, 09 Jan 2018 01:52:40 GMT  
		Size: 2.4 MB (2392406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8a8eecd1bb4783d5e6f16b6f31ba901513de090ca10c6cc0b8cb902be478cc`  
		Last Modified: Tue, 09 Jan 2018 01:53:01 GMT  
		Size: 78.7 MB (78708479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b204fb3b73945b9db272abb4a3264f754fc0620d49f5dbcc2ff7e8d3edab60aa`  
		Last Modified: Tue, 09 Jan 2018 01:52:37 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306911d5e8343dc6efe319fff491b58a969c0a3a2198cc268be27c6b6b84a752`  
		Last Modified: Tue, 09 Jan 2018 01:53:46 GMT  
		Size: 12.8 MB (12752863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993e64bbc845bfa83c3db7fd5415d9a426f75d2cfb7ade827dd1ed34d01e6c59`  
		Last Modified: Tue, 09 Jan 2018 01:53:40 GMT  
		Size: 4.1 MB (4076944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:8b896de09e4159282c86d8a834c033ec986ae7223b7275d1c995e56a8c2a6dc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:f9be147ba6e58c47f3f5c948d70c9b99fb4cbc03293211abcbc5798b13db1e62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.5 MB (270474350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75646cb645b8a1ceb094e807aecdbcfb07978cefd3a81ce99dca64e355167e10`
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
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_VERSION=2.2.9
# Fri, 15 Dec 2017 21:26:47 GMT
ENV RUBY_DOWNLOAD_SHA256=313b44b1105589d00bb30b9cccf7da44d263fe20a2d8d269ada536d4a7ef285c
# Tue, 26 Dec 2017 21:39:36 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:39:37 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:42:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:42:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:42:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:42:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:42:20 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 00:47:21 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 00:47:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:47:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 00:47:36 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 00:47:36 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 00:47:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 00:48:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 00:48:12 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 00:48:12 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 01:05:51 GMT
ENV REDMINE_VERSION=3.3.6
# Tue, 09 Jan 2018 01:05:52 GMT
ENV REDMINE_DOWNLOAD_MD5=103bcfc7a0603815130fba8626c97661
# Tue, 09 Jan 2018 01:05:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 01:09:51 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:09:52 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 01:09:52 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 01:09:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 01:09:52 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 01:09:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Tue, 09 Jan 2018 01:19:09 GMT
ENV PASSENGER_VERSION=5.1.12
# Tue, 09 Jan 2018 01:19:29 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:19:30 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Tue, 09 Jan 2018 01:19:30 GMT
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
	-	`sha256:6e474c9afe180dc9afb2c470f985a85bb617a0e261904d2a92c93c3da98bbfa4`  
		Last Modified: Tue, 26 Dec 2017 22:04:13 GMT  
		Size: 35.3 MB (35328463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d66ac80f46f844bced5b6e67646102218eb23f56a2aee58b21cbd1040076e59`  
		Last Modified: Tue, 26 Dec 2017 22:04:04 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb22a04a8c5fbeef6e3cdbe1a5c73d4ba5996b31b3043f23230925fd140594c`  
		Last Modified: Fri, 29 Dec 2017 02:27:05 GMT  
		Size: 2.1 KB (2100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93ec21959dc84be4348264bba0717f32a959e81f288ab34b545fc8619d0019b`  
		Last Modified: Fri, 29 Dec 2017 02:27:06 GMT  
		Size: 14.7 MB (14650312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ec2fc2c71ce4ad8a55087c4dd1ecb89e1b94392617160db979e0f346ee9f07`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7d0e1edae09791b9c0d1818dc84048420cbdf3caa9e41625b2aa94a91c8c37`  
		Last Modified: Fri, 29 Dec 2017 02:27:00 GMT  
		Size: 8.5 KB (8508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e720d0a70ed26731a5572d411e2079b7e633018462c5bd48243239b27e793de`  
		Last Modified: Fri, 29 Dec 2017 02:27:15 GMT  
		Size: 59.3 MB (59266783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a54e97a7f7e164da773df729acdcf6c1386d88138b239737da6c628da309385`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732c9e8f58df3871c1b978280f049b453aa9de13e9b6965c3b6aa24636b9fc5d`  
		Last Modified: Tue, 09 Jan 2018 01:52:40 GMT  
		Size: 2.4 MB (2392406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8a8eecd1bb4783d5e6f16b6f31ba901513de090ca10c6cc0b8cb902be478cc`  
		Last Modified: Tue, 09 Jan 2018 01:53:01 GMT  
		Size: 78.7 MB (78708479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b204fb3b73945b9db272abb4a3264f754fc0620d49f5dbcc2ff7e8d3edab60aa`  
		Last Modified: Tue, 09 Jan 2018 01:52:37 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:306911d5e8343dc6efe319fff491b58a969c0a3a2198cc268be27c6b6b84a752`  
		Last Modified: Tue, 09 Jan 2018 01:53:46 GMT  
		Size: 12.8 MB (12752863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993e64bbc845bfa83c3db7fd5415d9a426f75d2cfb7ade827dd1ed34d01e6c59`  
		Last Modified: Tue, 09 Jan 2018 01:53:40 GMT  
		Size: 4.1 MB (4076944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:bfb7de97a0825bc4291069a2384ab172de58d10c63cc579e179fdc3b2e9dbb31
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
$ docker pull redmine@sha256:172022bf8ffe3dd6d0edb8b1bb1f78bc472e857d821fee04beb5641c77b73b8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259635885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923e24ba7225d87880f87d6e75fd510e35e9b27f543db545a26ac9d3e4a83196`
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
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 21:13:43 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:13:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 05:05:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 05:05:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 05:05:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 05:05:49 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 06:06:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 06:07:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 06:07:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 06:07:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 06:07:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 06:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:48 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 06:07:48 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 06:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 06:10:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:10:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 06:10:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 06:10:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:10:43 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 06:10:43 GMT
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
	-	`sha256:914af5a077ad24690c7165c325515672c4e7d3ed22b4552469808eba58d38ebc`  
		Last Modified: Wed, 24 Jan 2018 05:40:30 GMT  
		Size: 21.3 MB (21265666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b28bf63e1ed304239fcfc42598f0b4ac1911f015308a6e58858193e292009f4`  
		Last Modified: Wed, 24 Jan 2018 05:40:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c140c2ef821682fb47e7992f7400b9e41dc4127af655861ef1d00e871c2085b8`  
		Last Modified: Wed, 24 Jan 2018 06:18:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5607421fd57058686825dae91e6fea9c01bdaf222f5a244d012cb1e8151663`  
		Last Modified: Wed, 24 Jan 2018 06:18:29 GMT  
		Size: 14.7 MB (14650359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f587cb4b48f36ef70f751ecd7a6a3834e0275dbac711f32f3173ebe68d6c5bf6`  
		Last Modified: Wed, 24 Jan 2018 06:18:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ac044f1b6586f3e2dea8488075d942fdcbb86cdd0b3ed8339fd64f7237e7e5`  
		Last Modified: Wed, 24 Jan 2018 06:18:22 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1c4ae051a2fd60b9493ab375c753feaaf378a0bf1d186a7b758bfe2a1492e`  
		Last Modified: Wed, 24 Jan 2018 06:18:38 GMT  
		Size: 59.3 MB (59271821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c879104edf2528d20632cf2b10b97d6592b1172fcbabdff177f2bf0b2c617`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4814fd2da77ac373e5ef2c7e59015dba56d05a0baadd9417a761acb95d32198`  
		Last Modified: Wed, 24 Jan 2018 06:18:24 GMT  
		Size: 2.5 MB (2454045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7196a1a3332d4f79d7310e334474b75e4163238977091cde6b0ed9688f53a128`  
		Last Modified: Wed, 24 Jan 2018 06:18:46 GMT  
		Size: 98.7 MB (98695903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3736c62c383560fc8135594bb3f86e9bfd9cf6be584a35950772e9c690bfe22`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:2455b90bd274d41d9e0bf4b36857cbc47db1550abe9baaaea4297e8f4067ac20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f519885f6de79e433587080d02808a717c6dc38cc3b3dbbf54ddc2b04e27181`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 02:45:06 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:45:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:50:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:50:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:50:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:50:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:50:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:50:55 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:31:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:31:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:31:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:32:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:32:01 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:32:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:33:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:33:09 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:33:09 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:33:09 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:33:09 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:33:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:38:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:38:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:38:49 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:38:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7483140cfd546c750cbd1d0523b2b5275827212b56b167f0cc7cfd589c402731`  
		Last Modified: Wed, 24 Jan 2018 03:12:41 GMT  
		Size: 21.0 MB (21034010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3788a5c745fba98326e4ecaf4cb2a7f410ac15c33ec1b99ff2afde5ebec9412`  
		Last Modified: Wed, 24 Jan 2018 03:12:35 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8c0617a52d583f3b94cd9a96cd706ac88bf950439bafa3ecd3844e4860bf36`  
		Last Modified: Wed, 24 Jan 2018 03:50:01 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c688fbe8bb1ac7162c13ee67c90d6f2a08588ac73657f3b1f527fc875109f4a3`  
		Last Modified: Wed, 24 Jan 2018 03:50:04 GMT  
		Size: 14.3 MB (14347448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d5cc976d79706ac9d29539326a13e4982a4f13813be4fa083b234ee1e95b50`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b962c088279e643abe79a4eab45c11b06f8c9f40e2ffce2833405bea4b4a7e5`  
		Last Modified: Wed, 24 Jan 2018 03:49:58 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60379fd03bcc99ec7f0aaf0bfa7e9dcfbffc4de82d852c220ec07513179d7141`  
		Last Modified: Wed, 24 Jan 2018 03:50:16 GMT  
		Size: 56.6 MB (56608411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37785bb9eea93486da7fd55a1b86b83b6870b75fb9bcb44d3b6c130a305b0a21`  
		Last Modified: Wed, 24 Jan 2018 03:49:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7fa4ba6cb36cd1eefbd31fb5822ec93409b5c166d2fad559f5cb4b98873160`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 2.5 MB (2454586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f231eb7071a124d037617afcfdf3e92ea32e6b1616382bcb60ee4970158a96b2`  
		Last Modified: Wed, 24 Jan 2018 03:50:25 GMT  
		Size: 98.0 MB (97959462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f11e91601b80ab8fbdbdd62e520fd68ffc57476931b46fdb3c10bd7a58c8ac`  
		Last Modified: Wed, 24 Jan 2018 03:49:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:249b29c86540d6f7b14ca1d36e082aca46ce03bbd10b8bb03c4035faa72b0156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (246961318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeed8dc519a889166a5f9a5776d86bb20d875194cb916e8a8b6785e1d61b47aa`
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
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 02:32:29 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:32:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:38:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:38:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:38:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:38:09 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:17:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:18:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:18:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:18:30 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:18:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:19:33 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:19:33 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:19:33 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:19:33 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:19:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:24:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:24:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:24:38 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:24:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:24:38 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:24:38 GMT
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
	-	`sha256:89b44b0543d36a3cb4cf292c2bf4c6c080583809c0685cc28908f1cb179c50d7`  
		Last Modified: Wed, 24 Jan 2018 02:59:00 GMT  
		Size: 20.9 MB (20897193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b4635578f2c1dfb352100d0480be8d9b2e6105f2772bb185b7bced7ae17197`  
		Last Modified: Wed, 24 Jan 2018 02:58:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55419b7ef85ae6240af7f5e4789243ff7591a59d48439535917847f75ef89d05`  
		Last Modified: Wed, 24 Jan 2018 03:35:23 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872c80f439844044946395e2200cd82876bff2e983f8fad9f4bbb61684578fea`  
		Last Modified: Wed, 24 Jan 2018 03:35:25 GMT  
		Size: 14.1 MB (14134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b7826bbfb3f8a64ede3a440bd69e3240654a7f1c5ab98ee0364cc0adfb1543`  
		Last Modified: Wed, 24 Jan 2018 03:35:22 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59b0eb27f06c0ea992919b8225f748d21eff00487897b8e3c7cc0a031ab56b0`  
		Last Modified: Wed, 24 Jan 2018 03:35:20 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9005eb60348f0ff4ae0a5adace972512d40a315ccec4b595fb6d89e9440610`  
		Last Modified: Wed, 24 Jan 2018 03:35:37 GMT  
		Size: 54.3 MB (54345905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ff000e1d1d8539027fcc1260ec3577e3d0e5dacc3b198491217c23ef0693d0`  
		Last Modified: Wed, 24 Jan 2018 03:35:19 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f434ad215b9c8ba1deb454d78420165531eb42640eeb844999f011c2bd21f848`  
		Last Modified: Wed, 24 Jan 2018 03:35:22 GMT  
		Size: 2.5 MB (2454587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1f8f9d953d5f71a6048b91ec5b3d9896206b4268ae1f9188f3178bc5bf5737`  
		Last Modified: Wed, 24 Jan 2018 03:35:44 GMT  
		Size: 97.2 MB (97166203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab659d79536d22d01f02b029c58cfa6afdb40bfef5c2b627a4a1c4d53d952d`  
		Last Modified: Wed, 24 Jan 2018 03:35:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:7848fe25ed61fe7605ca18d9d6b2b6c0f8d419590f1a397582ebe44d46481b25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255257246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f66041a3e60341df36a596d045237ce891f5b76d8ae119110879d4c9dfdd4912`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 22:20:01 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 22:20:01 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 22:29:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 22:29:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 22:29:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 22:29:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 22:29:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 22:29:23 GMT
CMD ["irb"]
# Tue, 26 Dec 2017 23:39:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 26 Dec 2017 23:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 23:40:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Dec 2017 23:40:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 26 Dec 2017 23:40:23 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 26 Dec 2017 23:40:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 26 Dec 2017 23:42:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 23:42:08 GMT
ENV RAILS_ENV=production
# Tue, 26 Dec 2017 23:42:08 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 07:38:42 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 07:38:42 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 07:38:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 07:48:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 07:49:00 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 07:49:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 07:49:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 07:49:02 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 07:49:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ab1c5caf6a50baa15c5c800df30fb8674ac52f90ff7142212a909f1a77a11d`  
		Last Modified: Tue, 26 Dec 2017 23:18:37 GMT  
		Size: 24.7 MB (24693886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575945fa7cd6bcb7867f564dba9ac23e8984aea80824dc63c1a4bed210fc1995`  
		Last Modified: Tue, 26 Dec 2017 23:18:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1787d0d06cd02e94247087cd7d84d1f40018f6ee07c1f03fc7954f4d6393ad0e`  
		Last Modified: Fri, 29 Dec 2017 08:08:43 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb265c86040d87c9286f61b2e757113032200769d06c475ae053f8d2cf1a90af`  
		Last Modified: Fri, 29 Dec 2017 08:08:47 GMT  
		Size: 14.5 MB (14462701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797731e8fee63ca3be7164a5703afc4cef34b81d9e518cb0078299a3edca98f9`  
		Last Modified: Fri, 29 Dec 2017 08:08:42 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ea7fbb5748dd0a486c8e209b761025ba632a5129d43b13c3e00b35e84ab816`  
		Last Modified: Fri, 29 Dec 2017 08:08:41 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c2db19ace8d73fec3ef6d746f8ee5b7a2651aa48998d74003374906fb2afb2`  
		Last Modified: Fri, 29 Dec 2017 08:09:00 GMT  
		Size: 55.8 MB (55784460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402c5efb964f8282d86f17fcb87c15e6f862ad73888e459ef2c2c5e8c3c73630`  
		Last Modified: Fri, 29 Dec 2017 08:08:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc371ac57e9f02f13e63da2f73e2cd450deb9a1729da8299a1cf57d57dab7137`  
		Last Modified: Tue, 09 Jan 2018 08:11:30 GMT  
		Size: 2.5 MB (2454052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b900dd7ee1e3aca014b5fda2e543f2cae48604fc3a1502662b14bb8ab55e38`  
		Last Modified: Tue, 09 Jan 2018 08:12:01 GMT  
		Size: 98.1 MB (98099242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb62659f8e630c975ae4074c7e79d3e99889e2f88be721d6659457aaeef27108`  
		Last Modified: Tue, 09 Jan 2018 08:11:28 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:fb3ed234d23071e20ec1e02757677d87fceb01daaae776c302ed884eb6ae36e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266039395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df896df024196b28777ae4cf8117634fad5cf71de6879bcbbfaa26727bcc800`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 04:39:08 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 04:39:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 27 Dec 2017 04:43:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 04:43:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 04:43:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 04:43:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 04:43:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 04:43:15 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 06:31:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 06:31:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 06:31:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 06:31:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 06:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 06:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 06:32:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 06:32:20 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 06:32:21 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 13:37:46 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 13:37:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 13:37:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 13:42:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 13:47:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 13:47:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 13:47:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 13:47:44 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 13:47:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bba21b01e7c8114b30b0e3a49d9707610df91b49ba775f27e79fbc5770ddc3`  
		Last Modified: Wed, 27 Dec 2017 06:02:35 GMT  
		Size: 23.7 MB (23733463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a103a0dc13d436f3688d9b83a4c52ae654f550fac1434be471f7a093473b61`  
		Last Modified: Wed, 27 Dec 2017 06:02:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c71d242a904acd472a9e1661d22105d6800544421fbb7a1a61dc2eb2053fa2`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec270341b06efa46f956ced61ae13818039a02423d158c5a53a025dde8086cf`  
		Last Modified: Wed, 27 Dec 2017 07:55:41 GMT  
		Size: 14.8 MB (14817460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd2629573ca50e58add16888cf1bb9341cfbf25b39b7f0d8d90646d25d1ad5c`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1deaaca310a3eb605a277e83c7675490707b1212011955622e7669cc4b8a9c`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed5640eb3fbb2dd0cf5d629b49a4d37b749cc7479dc4652bdc8dee29c3e8031`  
		Last Modified: Wed, 27 Dec 2017 07:56:04 GMT  
		Size: 60.1 MB (60138719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1de7f5c97e943bc365047e494cb9f18d69fcb394f878425ae9aaa3a0187b22`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b8b2e38cd4e2eaf5664b916a46fb337b581dc186f83eef95f94ce35dcc1e6`  
		Last Modified: Tue, 09 Jan 2018 14:36:11 GMT  
		Size: 2.5 MB (2454055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be581ba4c107fc907cd38e3441c0b859c782a383854bcf310ecef2c7b3b3e679`  
		Last Modified: Tue, 09 Jan 2018 14:36:46 GMT  
		Size: 97.0 MB (96976535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335013ce436fb2cd5dd26a2407e4c5000209a6f46458741c211cdcfc11918c54`  
		Last Modified: Tue, 09 Jan 2018 14:36:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:fb1232495eee52d63e7722495b854a5b295464c96cbc378bb49b715375831059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258859438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa5f42cc5af10195816f4ce40d7aeeb76bce99fc142557175388a0fb6930e6a`
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
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 01:53:28 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 01:53:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:01:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:01:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:01:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:01:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:01:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:01:18 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:03:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:03:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:04:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:04:05 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:04:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:07:53 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:07:55 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:07:56 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:07:57 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:08:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:24:21 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:24:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:24:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:24:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:24:33 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:24:36 GMT
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
	-	`sha256:7583ee388c15854c522c6d9b5c72fbeb9c598084759bbce298bfab55f53bb024`  
		Last Modified: Wed, 24 Jan 2018 02:43:40 GMT  
		Size: 21.7 MB (21711659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b5136cb35537a7eac06b6a34299696953acca12ed75262c9066cf55ad5bd8`  
		Last Modified: Wed, 24 Jan 2018 02:43:34 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e19a56b41f05bb0e55697969207b4fd28d74a2b3d7fa67ae06ab6978f14c62`  
		Last Modified: Wed, 24 Jan 2018 03:49:44 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8bc55fdac33b2ac32c9c7a05735aad3bc67706e2439d17f1a8c4ac1893b826`  
		Last Modified: Wed, 24 Jan 2018 03:49:46 GMT  
		Size: 14.7 MB (14720526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a78cb0f37922a2fbcf6a5f043c08478cb95d7a63f889dab4457a9c25eec5371`  
		Last Modified: Wed, 24 Jan 2018 03:49:41 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5517ae38336ff4e117efab4a3bd8a1e4065162aa498eb3db2d082b0d5f31c1b`  
		Last Modified: Wed, 24 Jan 2018 03:49:40 GMT  
		Size: 8.6 KB (8642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63e6c62bbf069baa4dd2ec05d43516ff26691d8458c0535fb52104284b38fa6`  
		Last Modified: Wed, 24 Jan 2018 03:49:53 GMT  
		Size: 58.1 MB (58133330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6195cae25aa4a2523e7e415f42d3804251a79a2334734e2f554a8d1bbdfa20`  
		Last Modified: Wed, 24 Jan 2018 03:49:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118f5f4693b7ba1a658ffb887ca5f64e901a5c03e1313243615fc9008b3f22ae`  
		Last Modified: Wed, 24 Jan 2018 03:49:46 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31584ee9dd94b2cac16c99292ec0c330abf35cb9bda1f8d2c6ca546aa164abe0`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 99.4 MB (99391362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01496bfdc37a4901674aeba8034808dcd2089483ba545dc041c0a53dc5ad5cfe`  
		Last Modified: Wed, 24 Jan 2018 03:49:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; s390x

```console
$ docker pull redmine@sha256:c257d045f585963b53e4cb8d45df9d003793cffc50e07e7c906588edf596e953
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267165606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360bacda566727b89c4a3b20c9e2e8b798ee2855730dd5a546976cd534dfc982`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:58:10 GMT
ENV RUBY_MAJOR=2.4
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_VERSION=2.4.3
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 07 Jan 2018 06:53:58 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Sun, 07 Jan 2018 06:53:58 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 07 Jan 2018 06:56:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 07 Jan 2018 06:56:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 07 Jan 2018 06:56:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 07 Jan 2018 06:56:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 06:56:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 07 Jan 2018 06:57:03 GMT
CMD ["irb"]
# Sun, 07 Jan 2018 11:22:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 07 Jan 2018 11:23:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:23:09 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 11:23:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 07 Jan 2018 11:23:11 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 07 Jan 2018 11:23:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 07 Jan 2018 11:23:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:23:52 GMT
ENV RAILS_ENV=production
# Sun, 07 Jan 2018 11:23:52 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 23:43:35 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 23:43:36 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 23:43:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 23:46:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 23:46:20 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 23:46:20 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 23:46:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:46:21 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 23:46:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb49332cdc153c93bfd498785457d31189cfc37e46491f3a44b0f2bbe55bccb`  
		Last Modified: Sun, 07 Jan 2018 07:21:00 GMT  
		Size: 25.1 MB (25144704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274c2f7a6d74cf11965f2607a9f997c78e37fa2bfb50623a941b662b1084a658`  
		Last Modified: Sun, 07 Jan 2018 07:20:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4d5d651b3275fbcecd74f469bb3c13e139211b136e47e0b8e502fd5db0777`  
		Last Modified: Sun, 07 Jan 2018 11:35:50 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0ce8cedbd53c226cc39ddb9ac71fa267139dc45bccc6c3f06e739ec40c06bb`  
		Last Modified: Sun, 07 Jan 2018 11:35:53 GMT  
		Size: 14.8 MB (14815142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3063fd41e5c59f155e5eaa1b296ed8205f1e51c18eaa88156e12485eefc307`  
		Last Modified: Sun, 07 Jan 2018 11:35:48 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c22820e147c1ce8acd065399ae6d181437ed9fa284c9c3d0e0333c0145436d5`  
		Last Modified: Sun, 07 Jan 2018 11:35:48 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6338b23232fb68e21fdf807aee2fd16c68247ae9e3cb94ea56ead7187124801e`  
		Last Modified: Sun, 07 Jan 2018 11:36:05 GMT  
		Size: 59.1 MB (59105542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53fba1dcf9b568e08165b5cbf3669cb52f5844d7d05599782092d100affddbd`  
		Last Modified: Sun, 07 Jan 2018 11:35:46 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2214c194d024b878fd5b301976e99a675535f74bbcedd9c6376b661f5bfcd884`  
		Last Modified: Tue, 09 Jan 2018 23:51:44 GMT  
		Size: 2.5 MB (2454046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417ee399267230149508893db74b50bda473bf3104f0680e652db062e8f35586`  
		Last Modified: Tue, 09 Jan 2018 23:51:58 GMT  
		Size: 102.4 MB (102376522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca717c2a65b96ff760b38a70a2cdb42b8055217ad118004fbb038b9b59ba6047`  
		Last Modified: Tue, 09 Jan 2018 23:51:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.4`

```console
$ docker pull redmine@sha256:bfb7de97a0825bc4291069a2384ab172de58d10c63cc579e179fdc3b2e9dbb31
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

### `redmine:3.4.4` - linux; amd64

```console
$ docker pull redmine@sha256:172022bf8ffe3dd6d0edb8b1bb1f78bc472e857d821fee04beb5641c77b73b8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259635885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923e24ba7225d87880f87d6e75fd510e35e9b27f543db545a26ac9d3e4a83196`
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
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 21:13:43 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:13:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 05:05:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 05:05:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 05:05:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 05:05:49 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 06:06:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 06:07:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 06:07:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 06:07:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 06:07:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 06:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:48 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 06:07:48 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 06:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 06:10:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:10:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 06:10:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 06:10:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:10:43 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 06:10:43 GMT
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
	-	`sha256:914af5a077ad24690c7165c325515672c4e7d3ed22b4552469808eba58d38ebc`  
		Last Modified: Wed, 24 Jan 2018 05:40:30 GMT  
		Size: 21.3 MB (21265666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b28bf63e1ed304239fcfc42598f0b4ac1911f015308a6e58858193e292009f4`  
		Last Modified: Wed, 24 Jan 2018 05:40:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c140c2ef821682fb47e7992f7400b9e41dc4127af655861ef1d00e871c2085b8`  
		Last Modified: Wed, 24 Jan 2018 06:18:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5607421fd57058686825dae91e6fea9c01bdaf222f5a244d012cb1e8151663`  
		Last Modified: Wed, 24 Jan 2018 06:18:29 GMT  
		Size: 14.7 MB (14650359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f587cb4b48f36ef70f751ecd7a6a3834e0275dbac711f32f3173ebe68d6c5bf6`  
		Last Modified: Wed, 24 Jan 2018 06:18:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ac044f1b6586f3e2dea8488075d942fdcbb86cdd0b3ed8339fd64f7237e7e5`  
		Last Modified: Wed, 24 Jan 2018 06:18:22 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1c4ae051a2fd60b9493ab375c753feaaf378a0bf1d186a7b758bfe2a1492e`  
		Last Modified: Wed, 24 Jan 2018 06:18:38 GMT  
		Size: 59.3 MB (59271821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c879104edf2528d20632cf2b10b97d6592b1172fcbabdff177f2bf0b2c617`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4814fd2da77ac373e5ef2c7e59015dba56d05a0baadd9417a761acb95d32198`  
		Last Modified: Wed, 24 Jan 2018 06:18:24 GMT  
		Size: 2.5 MB (2454045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7196a1a3332d4f79d7310e334474b75e4163238977091cde6b0ed9688f53a128`  
		Last Modified: Wed, 24 Jan 2018 06:18:46 GMT  
		Size: 98.7 MB (98695903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3736c62c383560fc8135594bb3f86e9bfd9cf6be584a35950772e9c690bfe22`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:2455b90bd274d41d9e0bf4b36857cbc47db1550abe9baaaea4297e8f4067ac20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f519885f6de79e433587080d02808a717c6dc38cc3b3dbbf54ddc2b04e27181`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 02:45:06 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:45:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:50:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:50:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:50:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:50:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:50:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:50:55 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:31:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:31:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:31:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:32:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:32:01 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:32:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:33:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:33:09 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:33:09 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:33:09 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:33:09 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:33:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:38:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:38:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:38:49 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:38:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7483140cfd546c750cbd1d0523b2b5275827212b56b167f0cc7cfd589c402731`  
		Last Modified: Wed, 24 Jan 2018 03:12:41 GMT  
		Size: 21.0 MB (21034010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3788a5c745fba98326e4ecaf4cb2a7f410ac15c33ec1b99ff2afde5ebec9412`  
		Last Modified: Wed, 24 Jan 2018 03:12:35 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8c0617a52d583f3b94cd9a96cd706ac88bf950439bafa3ecd3844e4860bf36`  
		Last Modified: Wed, 24 Jan 2018 03:50:01 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c688fbe8bb1ac7162c13ee67c90d6f2a08588ac73657f3b1f527fc875109f4a3`  
		Last Modified: Wed, 24 Jan 2018 03:50:04 GMT  
		Size: 14.3 MB (14347448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d5cc976d79706ac9d29539326a13e4982a4f13813be4fa083b234ee1e95b50`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b962c088279e643abe79a4eab45c11b06f8c9f40e2ffce2833405bea4b4a7e5`  
		Last Modified: Wed, 24 Jan 2018 03:49:58 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60379fd03bcc99ec7f0aaf0bfa7e9dcfbffc4de82d852c220ec07513179d7141`  
		Last Modified: Wed, 24 Jan 2018 03:50:16 GMT  
		Size: 56.6 MB (56608411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37785bb9eea93486da7fd55a1b86b83b6870b75fb9bcb44d3b6c130a305b0a21`  
		Last Modified: Wed, 24 Jan 2018 03:49:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7fa4ba6cb36cd1eefbd31fb5822ec93409b5c166d2fad559f5cb4b98873160`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 2.5 MB (2454586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f231eb7071a124d037617afcfdf3e92ea32e6b1616382bcb60ee4970158a96b2`  
		Last Modified: Wed, 24 Jan 2018 03:50:25 GMT  
		Size: 98.0 MB (97959462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f11e91601b80ab8fbdbdd62e520fd68ffc57476931b46fdb3c10bd7a58c8ac`  
		Last Modified: Wed, 24 Jan 2018 03:49:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:249b29c86540d6f7b14ca1d36e082aca46ce03bbd10b8bb03c4035faa72b0156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (246961318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeed8dc519a889166a5f9a5776d86bb20d875194cb916e8a8b6785e1d61b47aa`
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
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 02:32:29 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:32:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:38:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:38:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:38:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:38:09 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:17:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:18:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:18:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:18:30 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:18:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:19:33 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:19:33 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:19:33 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:19:33 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:19:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:24:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:24:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:24:38 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:24:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:24:38 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:24:38 GMT
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
	-	`sha256:89b44b0543d36a3cb4cf292c2bf4c6c080583809c0685cc28908f1cb179c50d7`  
		Last Modified: Wed, 24 Jan 2018 02:59:00 GMT  
		Size: 20.9 MB (20897193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b4635578f2c1dfb352100d0480be8d9b2e6105f2772bb185b7bced7ae17197`  
		Last Modified: Wed, 24 Jan 2018 02:58:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55419b7ef85ae6240af7f5e4789243ff7591a59d48439535917847f75ef89d05`  
		Last Modified: Wed, 24 Jan 2018 03:35:23 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872c80f439844044946395e2200cd82876bff2e983f8fad9f4bbb61684578fea`  
		Last Modified: Wed, 24 Jan 2018 03:35:25 GMT  
		Size: 14.1 MB (14134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b7826bbfb3f8a64ede3a440bd69e3240654a7f1c5ab98ee0364cc0adfb1543`  
		Last Modified: Wed, 24 Jan 2018 03:35:22 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59b0eb27f06c0ea992919b8225f748d21eff00487897b8e3c7cc0a031ab56b0`  
		Last Modified: Wed, 24 Jan 2018 03:35:20 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9005eb60348f0ff4ae0a5adace972512d40a315ccec4b595fb6d89e9440610`  
		Last Modified: Wed, 24 Jan 2018 03:35:37 GMT  
		Size: 54.3 MB (54345905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ff000e1d1d8539027fcc1260ec3577e3d0e5dacc3b198491217c23ef0693d0`  
		Last Modified: Wed, 24 Jan 2018 03:35:19 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f434ad215b9c8ba1deb454d78420165531eb42640eeb844999f011c2bd21f848`  
		Last Modified: Wed, 24 Jan 2018 03:35:22 GMT  
		Size: 2.5 MB (2454587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1f8f9d953d5f71a6048b91ec5b3d9896206b4268ae1f9188f3178bc5bf5737`  
		Last Modified: Wed, 24 Jan 2018 03:35:44 GMT  
		Size: 97.2 MB (97166203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab659d79536d22d01f02b029c58cfa6afdb40bfef5c2b627a4a1c4d53d952d`  
		Last Modified: Wed, 24 Jan 2018 03:35:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:7848fe25ed61fe7605ca18d9d6b2b6c0f8d419590f1a397582ebe44d46481b25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255257246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f66041a3e60341df36a596d045237ce891f5b76d8ae119110879d4c9dfdd4912`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 22:20:01 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 22:20:01 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 22:29:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 22:29:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 22:29:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 22:29:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 22:29:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 22:29:23 GMT
CMD ["irb"]
# Tue, 26 Dec 2017 23:39:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 26 Dec 2017 23:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 23:40:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Dec 2017 23:40:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 26 Dec 2017 23:40:23 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 26 Dec 2017 23:40:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 26 Dec 2017 23:42:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 23:42:08 GMT
ENV RAILS_ENV=production
# Tue, 26 Dec 2017 23:42:08 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 07:38:42 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 07:38:42 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 07:38:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 07:48:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 07:49:00 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 07:49:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 07:49:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 07:49:02 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 07:49:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ab1c5caf6a50baa15c5c800df30fb8674ac52f90ff7142212a909f1a77a11d`  
		Last Modified: Tue, 26 Dec 2017 23:18:37 GMT  
		Size: 24.7 MB (24693886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575945fa7cd6bcb7867f564dba9ac23e8984aea80824dc63c1a4bed210fc1995`  
		Last Modified: Tue, 26 Dec 2017 23:18:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1787d0d06cd02e94247087cd7d84d1f40018f6ee07c1f03fc7954f4d6393ad0e`  
		Last Modified: Fri, 29 Dec 2017 08:08:43 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb265c86040d87c9286f61b2e757113032200769d06c475ae053f8d2cf1a90af`  
		Last Modified: Fri, 29 Dec 2017 08:08:47 GMT  
		Size: 14.5 MB (14462701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797731e8fee63ca3be7164a5703afc4cef34b81d9e518cb0078299a3edca98f9`  
		Last Modified: Fri, 29 Dec 2017 08:08:42 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ea7fbb5748dd0a486c8e209b761025ba632a5129d43b13c3e00b35e84ab816`  
		Last Modified: Fri, 29 Dec 2017 08:08:41 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c2db19ace8d73fec3ef6d746f8ee5b7a2651aa48998d74003374906fb2afb2`  
		Last Modified: Fri, 29 Dec 2017 08:09:00 GMT  
		Size: 55.8 MB (55784460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402c5efb964f8282d86f17fcb87c15e6f862ad73888e459ef2c2c5e8c3c73630`  
		Last Modified: Fri, 29 Dec 2017 08:08:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc371ac57e9f02f13e63da2f73e2cd450deb9a1729da8299a1cf57d57dab7137`  
		Last Modified: Tue, 09 Jan 2018 08:11:30 GMT  
		Size: 2.5 MB (2454052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b900dd7ee1e3aca014b5fda2e543f2cae48604fc3a1502662b14bb8ab55e38`  
		Last Modified: Tue, 09 Jan 2018 08:12:01 GMT  
		Size: 98.1 MB (98099242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb62659f8e630c975ae4074c7e79d3e99889e2f88be721d6659457aaeef27108`  
		Last Modified: Tue, 09 Jan 2018 08:11:28 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; 386

```console
$ docker pull redmine@sha256:fb3ed234d23071e20ec1e02757677d87fceb01daaae776c302ed884eb6ae36e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266039395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df896df024196b28777ae4cf8117634fad5cf71de6879bcbbfaa26727bcc800`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 04:39:08 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 04:39:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 27 Dec 2017 04:43:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 04:43:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 04:43:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 04:43:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 04:43:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 04:43:15 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 06:31:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 06:31:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 06:31:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 06:31:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 06:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 06:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 06:32:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 06:32:20 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 06:32:21 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 13:37:46 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 13:37:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 13:37:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 13:42:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 13:47:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 13:47:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 13:47:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 13:47:44 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 13:47:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bba21b01e7c8114b30b0e3a49d9707610df91b49ba775f27e79fbc5770ddc3`  
		Last Modified: Wed, 27 Dec 2017 06:02:35 GMT  
		Size: 23.7 MB (23733463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a103a0dc13d436f3688d9b83a4c52ae654f550fac1434be471f7a093473b61`  
		Last Modified: Wed, 27 Dec 2017 06:02:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c71d242a904acd472a9e1661d22105d6800544421fbb7a1a61dc2eb2053fa2`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec270341b06efa46f956ced61ae13818039a02423d158c5a53a025dde8086cf`  
		Last Modified: Wed, 27 Dec 2017 07:55:41 GMT  
		Size: 14.8 MB (14817460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd2629573ca50e58add16888cf1bb9341cfbf25b39b7f0d8d90646d25d1ad5c`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1deaaca310a3eb605a277e83c7675490707b1212011955622e7669cc4b8a9c`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed5640eb3fbb2dd0cf5d629b49a4d37b749cc7479dc4652bdc8dee29c3e8031`  
		Last Modified: Wed, 27 Dec 2017 07:56:04 GMT  
		Size: 60.1 MB (60138719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1de7f5c97e943bc365047e494cb9f18d69fcb394f878425ae9aaa3a0187b22`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b8b2e38cd4e2eaf5664b916a46fb337b581dc186f83eef95f94ce35dcc1e6`  
		Last Modified: Tue, 09 Jan 2018 14:36:11 GMT  
		Size: 2.5 MB (2454055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be581ba4c107fc907cd38e3441c0b859c782a383854bcf310ecef2c7b3b3e679`  
		Last Modified: Tue, 09 Jan 2018 14:36:46 GMT  
		Size: 97.0 MB (96976535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335013ce436fb2cd5dd26a2407e4c5000209a6f46458741c211cdcfc11918c54`  
		Last Modified: Tue, 09 Jan 2018 14:36:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:fb1232495eee52d63e7722495b854a5b295464c96cbc378bb49b715375831059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258859438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa5f42cc5af10195816f4ce40d7aeeb76bce99fc142557175388a0fb6930e6a`
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
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 01:53:28 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 01:53:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:01:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:01:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:01:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:01:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:01:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:01:18 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:03:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:03:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:04:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:04:05 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:04:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:07:53 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:07:55 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:07:56 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:07:57 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:08:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:24:21 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:24:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:24:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:24:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:24:33 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:24:36 GMT
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
	-	`sha256:7583ee388c15854c522c6d9b5c72fbeb9c598084759bbce298bfab55f53bb024`  
		Last Modified: Wed, 24 Jan 2018 02:43:40 GMT  
		Size: 21.7 MB (21711659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b5136cb35537a7eac06b6a34299696953acca12ed75262c9066cf55ad5bd8`  
		Last Modified: Wed, 24 Jan 2018 02:43:34 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e19a56b41f05bb0e55697969207b4fd28d74a2b3d7fa67ae06ab6978f14c62`  
		Last Modified: Wed, 24 Jan 2018 03:49:44 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8bc55fdac33b2ac32c9c7a05735aad3bc67706e2439d17f1a8c4ac1893b826`  
		Last Modified: Wed, 24 Jan 2018 03:49:46 GMT  
		Size: 14.7 MB (14720526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a78cb0f37922a2fbcf6a5f043c08478cb95d7a63f889dab4457a9c25eec5371`  
		Last Modified: Wed, 24 Jan 2018 03:49:41 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5517ae38336ff4e117efab4a3bd8a1e4065162aa498eb3db2d082b0d5f31c1b`  
		Last Modified: Wed, 24 Jan 2018 03:49:40 GMT  
		Size: 8.6 KB (8642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63e6c62bbf069baa4dd2ec05d43516ff26691d8458c0535fb52104284b38fa6`  
		Last Modified: Wed, 24 Jan 2018 03:49:53 GMT  
		Size: 58.1 MB (58133330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6195cae25aa4a2523e7e415f42d3804251a79a2334734e2f554a8d1bbdfa20`  
		Last Modified: Wed, 24 Jan 2018 03:49:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118f5f4693b7ba1a658ffb887ca5f64e901a5c03e1313243615fc9008b3f22ae`  
		Last Modified: Wed, 24 Jan 2018 03:49:46 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31584ee9dd94b2cac16c99292ec0c330abf35cb9bda1f8d2c6ca546aa164abe0`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 99.4 MB (99391362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01496bfdc37a4901674aeba8034808dcd2089483ba545dc041c0a53dc5ad5cfe`  
		Last Modified: Wed, 24 Jan 2018 03:49:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.4` - linux; s390x

```console
$ docker pull redmine@sha256:c257d045f585963b53e4cb8d45df9d003793cffc50e07e7c906588edf596e953
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267165606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360bacda566727b89c4a3b20c9e2e8b798ee2855730dd5a546976cd534dfc982`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:58:10 GMT
ENV RUBY_MAJOR=2.4
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_VERSION=2.4.3
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 07 Jan 2018 06:53:58 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Sun, 07 Jan 2018 06:53:58 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 07 Jan 2018 06:56:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 07 Jan 2018 06:56:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 07 Jan 2018 06:56:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 07 Jan 2018 06:56:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 06:56:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 07 Jan 2018 06:57:03 GMT
CMD ["irb"]
# Sun, 07 Jan 2018 11:22:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 07 Jan 2018 11:23:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:23:09 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 11:23:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 07 Jan 2018 11:23:11 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 07 Jan 2018 11:23:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 07 Jan 2018 11:23:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:23:52 GMT
ENV RAILS_ENV=production
# Sun, 07 Jan 2018 11:23:52 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 23:43:35 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 23:43:36 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 23:43:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 23:46:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 23:46:20 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 23:46:20 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 23:46:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:46:21 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 23:46:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb49332cdc153c93bfd498785457d31189cfc37e46491f3a44b0f2bbe55bccb`  
		Last Modified: Sun, 07 Jan 2018 07:21:00 GMT  
		Size: 25.1 MB (25144704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274c2f7a6d74cf11965f2607a9f997c78e37fa2bfb50623a941b662b1084a658`  
		Last Modified: Sun, 07 Jan 2018 07:20:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4d5d651b3275fbcecd74f469bb3c13e139211b136e47e0b8e502fd5db0777`  
		Last Modified: Sun, 07 Jan 2018 11:35:50 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0ce8cedbd53c226cc39ddb9ac71fa267139dc45bccc6c3f06e739ec40c06bb`  
		Last Modified: Sun, 07 Jan 2018 11:35:53 GMT  
		Size: 14.8 MB (14815142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3063fd41e5c59f155e5eaa1b296ed8205f1e51c18eaa88156e12485eefc307`  
		Last Modified: Sun, 07 Jan 2018 11:35:48 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c22820e147c1ce8acd065399ae6d181437ed9fa284c9c3d0e0333c0145436d5`  
		Last Modified: Sun, 07 Jan 2018 11:35:48 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6338b23232fb68e21fdf807aee2fd16c68247ae9e3cb94ea56ead7187124801e`  
		Last Modified: Sun, 07 Jan 2018 11:36:05 GMT  
		Size: 59.1 MB (59105542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53fba1dcf9b568e08165b5cbf3669cb52f5844d7d05599782092d100affddbd`  
		Last Modified: Sun, 07 Jan 2018 11:35:46 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2214c194d024b878fd5b301976e99a675535f74bbcedd9c6376b661f5bfcd884`  
		Last Modified: Tue, 09 Jan 2018 23:51:44 GMT  
		Size: 2.5 MB (2454046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417ee399267230149508893db74b50bda473bf3104f0680e652db062e8f35586`  
		Last Modified: Tue, 09 Jan 2018 23:51:58 GMT  
		Size: 102.4 MB (102376522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca717c2a65b96ff760b38a70a2cdb42b8055217ad118004fbb038b9b59ba6047`  
		Last Modified: Tue, 09 Jan 2018 23:51:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4.4-passenger`

```console
$ docker pull redmine@sha256:04259117789f501be6a4f5e14bcaa98100a7307abd5580caeb68e2243654890d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a1466415cfc6e3f94db120e438cac9baf8f29bc5fa4b9599b93172569d24a3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276465493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d578b23861785b875c2889e116db1a3d6160c3dc3a37e6567eec6dbad63b68b`
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
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 21:13:43 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:13:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 05:05:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 05:05:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 05:05:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 05:05:49 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 06:06:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 06:07:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 06:07:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 06:07:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 06:07:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 06:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:48 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 06:07:48 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 06:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 06:10:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:10:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 06:10:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 06:10:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:10:43 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 06:10:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 24 Jan 2018 06:10:59 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 24 Jan 2018 06:11:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:11:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 24 Jan 2018 06:11:18 GMT
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
	-	`sha256:914af5a077ad24690c7165c325515672c4e7d3ed22b4552469808eba58d38ebc`  
		Last Modified: Wed, 24 Jan 2018 05:40:30 GMT  
		Size: 21.3 MB (21265666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b28bf63e1ed304239fcfc42598f0b4ac1911f015308a6e58858193e292009f4`  
		Last Modified: Wed, 24 Jan 2018 05:40:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c140c2ef821682fb47e7992f7400b9e41dc4127af655861ef1d00e871c2085b8`  
		Last Modified: Wed, 24 Jan 2018 06:18:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5607421fd57058686825dae91e6fea9c01bdaf222f5a244d012cb1e8151663`  
		Last Modified: Wed, 24 Jan 2018 06:18:29 GMT  
		Size: 14.7 MB (14650359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f587cb4b48f36ef70f751ecd7a6a3834e0275dbac711f32f3173ebe68d6c5bf6`  
		Last Modified: Wed, 24 Jan 2018 06:18:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ac044f1b6586f3e2dea8488075d942fdcbb86cdd0b3ed8339fd64f7237e7e5`  
		Last Modified: Wed, 24 Jan 2018 06:18:22 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1c4ae051a2fd60b9493ab375c753feaaf378a0bf1d186a7b758bfe2a1492e`  
		Last Modified: Wed, 24 Jan 2018 06:18:38 GMT  
		Size: 59.3 MB (59271821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c879104edf2528d20632cf2b10b97d6592b1172fcbabdff177f2bf0b2c617`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4814fd2da77ac373e5ef2c7e59015dba56d05a0baadd9417a761acb95d32198`  
		Last Modified: Wed, 24 Jan 2018 06:18:24 GMT  
		Size: 2.5 MB (2454045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7196a1a3332d4f79d7310e334474b75e4163238977091cde6b0ed9688f53a128`  
		Last Modified: Wed, 24 Jan 2018 06:18:46 GMT  
		Size: 98.7 MB (98695903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3736c62c383560fc8135594bb3f86e9bfd9cf6be584a35950772e9c690bfe22`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c22c5a9e67cff686fd3ea0c3aac585dbc7ca8682a7342a4b4319181e7ca2817`  
		Last Modified: Wed, 24 Jan 2018 06:19:47 GMT  
		Size: 12.8 MB (12752687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cc0a3c69b674faafea6607fa07d13683ffe34a5826cc4039b274955fbe3c0d`  
		Last Modified: Wed, 24 Jan 2018 06:19:46 GMT  
		Size: 4.1 MB (4076921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:04259117789f501be6a4f5e14bcaa98100a7307abd5580caeb68e2243654890d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a1466415cfc6e3f94db120e438cac9baf8f29bc5fa4b9599b93172569d24a3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276465493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d578b23861785b875c2889e116db1a3d6160c3dc3a37e6567eec6dbad63b68b`
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
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 21:13:43 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:13:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 05:05:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 05:05:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 05:05:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 05:05:49 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 06:06:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 06:07:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 06:07:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 06:07:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 06:07:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 06:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:48 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 06:07:48 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 06:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 06:10:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:10:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 06:10:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 06:10:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:10:43 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 06:10:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 24 Jan 2018 06:10:59 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 24 Jan 2018 06:11:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:11:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 24 Jan 2018 06:11:18 GMT
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
	-	`sha256:914af5a077ad24690c7165c325515672c4e7d3ed22b4552469808eba58d38ebc`  
		Last Modified: Wed, 24 Jan 2018 05:40:30 GMT  
		Size: 21.3 MB (21265666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b28bf63e1ed304239fcfc42598f0b4ac1911f015308a6e58858193e292009f4`  
		Last Modified: Wed, 24 Jan 2018 05:40:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c140c2ef821682fb47e7992f7400b9e41dc4127af655861ef1d00e871c2085b8`  
		Last Modified: Wed, 24 Jan 2018 06:18:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5607421fd57058686825dae91e6fea9c01bdaf222f5a244d012cb1e8151663`  
		Last Modified: Wed, 24 Jan 2018 06:18:29 GMT  
		Size: 14.7 MB (14650359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f587cb4b48f36ef70f751ecd7a6a3834e0275dbac711f32f3173ebe68d6c5bf6`  
		Last Modified: Wed, 24 Jan 2018 06:18:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ac044f1b6586f3e2dea8488075d942fdcbb86cdd0b3ed8339fd64f7237e7e5`  
		Last Modified: Wed, 24 Jan 2018 06:18:22 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1c4ae051a2fd60b9493ab375c753feaaf378a0bf1d186a7b758bfe2a1492e`  
		Last Modified: Wed, 24 Jan 2018 06:18:38 GMT  
		Size: 59.3 MB (59271821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c879104edf2528d20632cf2b10b97d6592b1172fcbabdff177f2bf0b2c617`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4814fd2da77ac373e5ef2c7e59015dba56d05a0baadd9417a761acb95d32198`  
		Last Modified: Wed, 24 Jan 2018 06:18:24 GMT  
		Size: 2.5 MB (2454045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7196a1a3332d4f79d7310e334474b75e4163238977091cde6b0ed9688f53a128`  
		Last Modified: Wed, 24 Jan 2018 06:18:46 GMT  
		Size: 98.7 MB (98695903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3736c62c383560fc8135594bb3f86e9bfd9cf6be584a35950772e9c690bfe22`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c22c5a9e67cff686fd3ea0c3aac585dbc7ca8682a7342a4b4319181e7ca2817`  
		Last Modified: Wed, 24 Jan 2018 06:19:47 GMT  
		Size: 12.8 MB (12752687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cc0a3c69b674faafea6607fa07d13683ffe34a5826cc4039b274955fbe3c0d`  
		Last Modified: Wed, 24 Jan 2018 06:19:46 GMT  
		Size: 4.1 MB (4076921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:04259117789f501be6a4f5e14bcaa98100a7307abd5580caeb68e2243654890d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a1466415cfc6e3f94db120e438cac9baf8f29bc5fa4b9599b93172569d24a3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276465493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d578b23861785b875c2889e116db1a3d6160c3dc3a37e6567eec6dbad63b68b`
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
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 21:13:43 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:13:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 05:05:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 05:05:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 05:05:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 05:05:49 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 06:06:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 06:07:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 06:07:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 06:07:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 06:07:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 06:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:48 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 06:07:48 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 06:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 06:10:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:10:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 06:10:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 06:10:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:10:43 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 06:10:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 24 Jan 2018 06:10:59 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 24 Jan 2018 06:11:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:11:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 24 Jan 2018 06:11:18 GMT
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
	-	`sha256:914af5a077ad24690c7165c325515672c4e7d3ed22b4552469808eba58d38ebc`  
		Last Modified: Wed, 24 Jan 2018 05:40:30 GMT  
		Size: 21.3 MB (21265666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b28bf63e1ed304239fcfc42598f0b4ac1911f015308a6e58858193e292009f4`  
		Last Modified: Wed, 24 Jan 2018 05:40:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c140c2ef821682fb47e7992f7400b9e41dc4127af655861ef1d00e871c2085b8`  
		Last Modified: Wed, 24 Jan 2018 06:18:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5607421fd57058686825dae91e6fea9c01bdaf222f5a244d012cb1e8151663`  
		Last Modified: Wed, 24 Jan 2018 06:18:29 GMT  
		Size: 14.7 MB (14650359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f587cb4b48f36ef70f751ecd7a6a3834e0275dbac711f32f3173ebe68d6c5bf6`  
		Last Modified: Wed, 24 Jan 2018 06:18:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ac044f1b6586f3e2dea8488075d942fdcbb86cdd0b3ed8339fd64f7237e7e5`  
		Last Modified: Wed, 24 Jan 2018 06:18:22 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1c4ae051a2fd60b9493ab375c753feaaf378a0bf1d186a7b758bfe2a1492e`  
		Last Modified: Wed, 24 Jan 2018 06:18:38 GMT  
		Size: 59.3 MB (59271821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c879104edf2528d20632cf2b10b97d6592b1172fcbabdff177f2bf0b2c617`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4814fd2da77ac373e5ef2c7e59015dba56d05a0baadd9417a761acb95d32198`  
		Last Modified: Wed, 24 Jan 2018 06:18:24 GMT  
		Size: 2.5 MB (2454045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7196a1a3332d4f79d7310e334474b75e4163238977091cde6b0ed9688f53a128`  
		Last Modified: Wed, 24 Jan 2018 06:18:46 GMT  
		Size: 98.7 MB (98695903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3736c62c383560fc8135594bb3f86e9bfd9cf6be584a35950772e9c690bfe22`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c22c5a9e67cff686fd3ea0c3aac585dbc7ca8682a7342a4b4319181e7ca2817`  
		Last Modified: Wed, 24 Jan 2018 06:19:47 GMT  
		Size: 12.8 MB (12752687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cc0a3c69b674faafea6607fa07d13683ffe34a5826cc4039b274955fbe3c0d`  
		Last Modified: Wed, 24 Jan 2018 06:19:46 GMT  
		Size: 4.1 MB (4076921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:f06e39f87e67110ef6a5c94fe08abe5f567135088e918c2b405feba3c3080b29
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
$ docker pull redmine@sha256:f6b2dcfbd54541244043532446b72437ddd76e6621afd10a46b88883d85fc493
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (263022795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af41875dd6948d6b2f97568a2e10a39157f764d311e10a930895133eee1eb575`
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
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 21:13:43 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:13:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:16:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:16:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:16:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:16:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:16:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:16:49 GMT
CMD ["irb"]
# Tue, 26 Dec 2017 22:28:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 26 Dec 2017 22:28:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 22:28:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Dec 2017 22:29:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 26 Dec 2017 22:29:00 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 26 Dec 2017 22:29:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 26 Dec 2017 22:29:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 22:29:39 GMT
ENV RAILS_ENV=production
# Tue, 26 Dec 2017 22:29:40 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 00:54:56 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 00:54:56 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 00:55:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 00:59:09 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 01:04:54 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 01:04:55 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 01:04:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 01:04:55 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 01:04:56 GMT
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
	-	`sha256:4e7df9f6ea425990c52c6beba72607bbb045894e0c90c2426712c62f1957ad13`  
		Last Modified: Tue, 26 Dec 2017 21:55:37 GMT  
		Size: 24.7 MB (24745099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbd519892b8d837bfb21e6cc45f8204390d11f041b3bda9db7ce62e9f40b15f`  
		Last Modified: Tue, 26 Dec 2017 21:55:31 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4c54cc054790e8476386f5c9052b10eed34ab76d9d65038a7d23722542404`  
		Last Modified: Fri, 29 Dec 2017 02:24:47 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a337341e3b42a2d447bbca4cafb1a7af2528ccdca8ff2c07b68e222f9b34931a`  
		Last Modified: Fri, 29 Dec 2017 02:24:49 GMT  
		Size: 14.7 MB (14650381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75756ee9c16f854412522950e4dce5d4e9b667f31ac6b2221c9076ef0886eab`  
		Last Modified: Fri, 29 Dec 2017 02:24:44 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dd12fc6b5b852bb5c98f66b9e27a20f285dc7d2648348100aa57b37b0f9b30`  
		Last Modified: Fri, 29 Dec 2017 02:24:43 GMT  
		Size: 8.5 KB (8509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f056c859ec16ba22bcbd6f1aea99b0603993b1f6830d7aacc01f3368bcc3490`  
		Last Modified: Fri, 29 Dec 2017 02:24:59 GMT  
		Size: 59.3 MB (59266380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89750d27e15f5249ee6435163c4368dbf4cbd6b158d991b72923ec2078095944`  
		Last Modified: Fri, 29 Dec 2017 02:24:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0f9513230c30616f93aa4e0580638b6862c6339219db8842775005ce66806e`  
		Last Modified: Tue, 09 Jan 2018 01:35:26 GMT  
		Size: 2.5 MB (2454062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4c85c0a83a22fd7cadd2afdb91bab3b2b63cd56d365bb1af7b58332d25c30f`  
		Last Modified: Tue, 09 Jan 2018 01:35:54 GMT  
		Size: 98.6 MB (98608773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40916f294b8846f78e5f444409ee1010714f1afc907881835cea2b6fcb0b044d`  
		Last Modified: Tue, 09 Jan 2018 01:35:22 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:2455b90bd274d41d9e0bf4b36857cbc47db1550abe9baaaea4297e8f4067ac20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252922342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f519885f6de79e433587080d02808a717c6dc38cc3b3dbbf54ddc2b04e27181`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:20:42 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:20:43 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 22:20:44 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:44:29 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 02:45:06 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:45:06 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:50:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:50:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:50:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:50:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:50:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:50:55 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:31:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:31:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:31:58 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:32:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:32:01 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:32:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:33:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:33:09 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:33:09 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:33:09 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:33:09 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:33:13 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:38:48 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:38:49 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:38:49 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:38:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:38:49 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:38:49 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720f57fa55a13c4632a55c080f4b198fa8a7bd32c9863f46258016221e6bf9f0`  
		Last Modified: Tue, 12 Dec 2017 22:40:02 GMT  
		Size: 9.1 MB (9132521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cd122f111a49866960e272b12e3a128b3668b6615a46feb34224c32b485da4`  
		Last Modified: Tue, 12 Dec 2017 22:39:59 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7483140cfd546c750cbd1d0523b2b5275827212b56b167f0cc7cfd589c402731`  
		Last Modified: Wed, 24 Jan 2018 03:12:41 GMT  
		Size: 21.0 MB (21034010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3788a5c745fba98326e4ecaf4cb2a7f410ac15c33ec1b99ff2afde5ebec9412`  
		Last Modified: Wed, 24 Jan 2018 03:12:35 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8c0617a52d583f3b94cd9a96cd706ac88bf950439bafa3ecd3844e4860bf36`  
		Last Modified: Wed, 24 Jan 2018 03:50:01 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c688fbe8bb1ac7162c13ee67c90d6f2a08588ac73657f3b1f527fc875109f4a3`  
		Last Modified: Wed, 24 Jan 2018 03:50:04 GMT  
		Size: 14.3 MB (14347448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d5cc976d79706ac9d29539326a13e4982a4f13813be4fa083b234ee1e95b50`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b962c088279e643abe79a4eab45c11b06f8c9f40e2ffce2833405bea4b4a7e5`  
		Last Modified: Wed, 24 Jan 2018 03:49:58 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60379fd03bcc99ec7f0aaf0bfa7e9dcfbffc4de82d852c220ec07513179d7141`  
		Last Modified: Wed, 24 Jan 2018 03:50:16 GMT  
		Size: 56.6 MB (56608411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37785bb9eea93486da7fd55a1b86b83b6870b75fb9bcb44d3b6c130a305b0a21`  
		Last Modified: Wed, 24 Jan 2018 03:49:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7fa4ba6cb36cd1eefbd31fb5822ec93409b5c166d2fad559f5cb4b98873160`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 2.5 MB (2454586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f231eb7071a124d037617afcfdf3e92ea32e6b1616382bcb60ee4970158a96b2`  
		Last Modified: Wed, 24 Jan 2018 03:50:25 GMT  
		Size: 98.0 MB (97959462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f11e91601b80ab8fbdbdd62e520fd68ffc57476931b46fdb3c10bd7a58c8ac`  
		Last Modified: Wed, 24 Jan 2018 03:49:58 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:249b29c86540d6f7b14ca1d36e082aca46ce03bbd10b8bb03c4035faa72b0156
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (246961318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeed8dc519a889166a5f9a5776d86bb20d875194cb916e8a8b6785e1d61b47aa`
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
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:32:49 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 02:32:29 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 02:32:29 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:38:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:38:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:08 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:38:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:38:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:38:09 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:17:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:18:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:18:30 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:18:30 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:18:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:19:33 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:19:33 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:19:33 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:19:33 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:19:37 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:24:36 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:24:37 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:24:38 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:24:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:24:38 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:24:38 GMT
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
	-	`sha256:89b44b0543d36a3cb4cf292c2bf4c6c080583809c0685cc28908f1cb179c50d7`  
		Last Modified: Wed, 24 Jan 2018 02:59:00 GMT  
		Size: 20.9 MB (20897193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b4635578f2c1dfb352100d0480be8d9b2e6105f2772bb185b7bced7ae17197`  
		Last Modified: Wed, 24 Jan 2018 02:58:54 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55419b7ef85ae6240af7f5e4789243ff7591a59d48439535917847f75ef89d05`  
		Last Modified: Wed, 24 Jan 2018 03:35:23 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872c80f439844044946395e2200cd82876bff2e983f8fad9f4bbb61684578fea`  
		Last Modified: Wed, 24 Jan 2018 03:35:25 GMT  
		Size: 14.1 MB (14134535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b7826bbfb3f8a64ede3a440bd69e3240654a7f1c5ab98ee0364cc0adfb1543`  
		Last Modified: Wed, 24 Jan 2018 03:35:22 GMT  
		Size: 475.3 KB (475270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c59b0eb27f06c0ea992919b8225f748d21eff00487897b8e3c7cc0a031ab56b0`  
		Last Modified: Wed, 24 Jan 2018 03:35:20 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9005eb60348f0ff4ae0a5adace972512d40a315ccec4b595fb6d89e9440610`  
		Last Modified: Wed, 24 Jan 2018 03:35:37 GMT  
		Size: 54.3 MB (54345905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ff000e1d1d8539027fcc1260ec3577e3d0e5dacc3b198491217c23ef0693d0`  
		Last Modified: Wed, 24 Jan 2018 03:35:19 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f434ad215b9c8ba1deb454d78420165531eb42640eeb844999f011c2bd21f848`  
		Last Modified: Wed, 24 Jan 2018 03:35:22 GMT  
		Size: 2.5 MB (2454587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1f8f9d953d5f71a6048b91ec5b3d9896206b4268ae1f9188f3178bc5bf5737`  
		Last Modified: Wed, 24 Jan 2018 03:35:44 GMT  
		Size: 97.2 MB (97166203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ab659d79536d22d01f02b029c58cfa6afdb40bfef5c2b627a4a1c4d53d952d`  
		Last Modified: Wed, 24 Jan 2018 03:35:19 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:7848fe25ed61fe7605ca18d9d6b2b6c0f8d419590f1a397582ebe44d46481b25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255257246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f66041a3e60341df36a596d045237ce891f5b76d8ae119110879d4c9dfdd4912`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:58:27 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:58:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:58:30 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 07:25:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 07:25:37 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 22:20:01 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 22:20:01 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 22:29:18 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 22:29:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 22:29:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 22:29:20 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 22:29:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 22:29:23 GMT
CMD ["irb"]
# Tue, 26 Dec 2017 23:39:49 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Tue, 26 Dec 2017 23:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 23:40:17 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Dec 2017 23:40:22 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Tue, 26 Dec 2017 23:40:23 GMT
ENV TINI_VERSION=v0.16.1
# Tue, 26 Dec 2017 23:40:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Tue, 26 Dec 2017 23:42:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Dec 2017 23:42:08 GMT
ENV RAILS_ENV=production
# Tue, 26 Dec 2017 23:42:08 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 07:38:42 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 07:38:42 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 07:38:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 07:48:58 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 07:49:00 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 07:49:01 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 07:49:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 07:49:02 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 07:49:03 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f10f0205c3a34bd02158044bea0230e9acdef138bd9693f516fe4e81f0dc187`  
		Last Modified: Tue, 12 Dec 2017 22:29:50 GMT  
		Size: 9.4 MB (9354974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982ca2f30915a5c7e8d0dd8df6ec06e992ef49f321049eb56e2472974ce7b8e6`  
		Last Modified: Tue, 12 Dec 2017 22:29:46 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ab1c5caf6a50baa15c5c800df30fb8674ac52f90ff7142212a909f1a77a11d`  
		Last Modified: Tue, 26 Dec 2017 23:18:37 GMT  
		Size: 24.7 MB (24693886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575945fa7cd6bcb7867f564dba9ac23e8984aea80824dc63c1a4bed210fc1995`  
		Last Modified: Tue, 26 Dec 2017 23:18:25 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1787d0d06cd02e94247087cd7d84d1f40018f6ee07c1f03fc7954f4d6393ad0e`  
		Last Modified: Fri, 29 Dec 2017 08:08:43 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb265c86040d87c9286f61b2e757113032200769d06c475ae053f8d2cf1a90af`  
		Last Modified: Fri, 29 Dec 2017 08:08:47 GMT  
		Size: 14.5 MB (14462701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797731e8fee63ca3be7164a5703afc4cef34b81d9e518cb0078299a3edca98f9`  
		Last Modified: Fri, 29 Dec 2017 08:08:42 GMT  
		Size: 468.7 KB (468704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ea7fbb5748dd0a486c8e209b761025ba632a5129d43b13c3e00b35e84ab816`  
		Last Modified: Fri, 29 Dec 2017 08:08:41 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c2db19ace8d73fec3ef6d746f8ee5b7a2651aa48998d74003374906fb2afb2`  
		Last Modified: Fri, 29 Dec 2017 08:09:00 GMT  
		Size: 55.8 MB (55784460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402c5efb964f8282d86f17fcb87c15e6f862ad73888e459ef2c2c5e8c3c73630`  
		Last Modified: Fri, 29 Dec 2017 08:08:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc371ac57e9f02f13e63da2f73e2cd450deb9a1729da8299a1cf57d57dab7137`  
		Last Modified: Tue, 09 Jan 2018 08:11:30 GMT  
		Size: 2.5 MB (2454052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b900dd7ee1e3aca014b5fda2e543f2cae48604fc3a1502662b14bb8ab55e38`  
		Last Modified: Tue, 09 Jan 2018 08:12:01 GMT  
		Size: 98.1 MB (98099242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb62659f8e630c975ae4074c7e79d3e99889e2f88be721d6659457aaeef27108`  
		Last Modified: Tue, 09 Jan 2018 08:11:28 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:fb3ed234d23071e20ec1e02757677d87fceb01daaae776c302ed884eb6ae36e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266039395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3df896df024196b28777ae4cf8117634fad5cf71de6879bcbbfaa26727bcc800`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:03:21 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:03:24 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 21:03:24 GMT
ENV RUBY_MAJOR=2.4
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 04:21:36 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 04:39:08 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 04:39:08 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 27 Dec 2017 04:43:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 04:43:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 04:43:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 04:43:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 04:43:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 04:43:15 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 06:31:04 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 06:31:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 06:31:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 06:31:31 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 06:31:31 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 06:31:33 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 06:32:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 06:32:20 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 06:32:21 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 13:37:46 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 13:37:46 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 13:37:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 13:42:14 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 13:47:43 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 13:47:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 13:47:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 13:47:44 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 13:47:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616cc8df0fc74a6b286f011d329e48529b520c66d967d12201340e9100c5b583`  
		Last Modified: Tue, 12 Dec 2017 21:42:50 GMT  
		Size: 14.6 MB (14648271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea7d994fc4f2911b5830cdfd4b29206701c3461439fdf4fc77430588ec9fb57`  
		Last Modified: Tue, 12 Dec 2017 21:42:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bba21b01e7c8114b30b0e3a49d9707610df91b49ba775f27e79fbc5770ddc3`  
		Last Modified: Wed, 27 Dec 2017 06:02:35 GMT  
		Size: 23.7 MB (23733463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52a103a0dc13d436f3688d9b83a4c52ae654f550fac1434be471f7a093473b61`  
		Last Modified: Wed, 27 Dec 2017 06:02:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c71d242a904acd472a9e1661d22105d6800544421fbb7a1a61dc2eb2053fa2`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec270341b06efa46f956ced61ae13818039a02423d158c5a53a025dde8086cf`  
		Last Modified: Wed, 27 Dec 2017 07:55:41 GMT  
		Size: 14.8 MB (14817460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd2629573ca50e58add16888cf1bb9341cfbf25b39b7f0d8d90646d25d1ad5c`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 480.6 KB (480567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1deaaca310a3eb605a277e83c7675490707b1212011955622e7669cc4b8a9c`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 8.6 KB (8566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed5640eb3fbb2dd0cf5d629b49a4d37b749cc7479dc4652bdc8dee29c3e8031`  
		Last Modified: Wed, 27 Dec 2017 07:56:04 GMT  
		Size: 60.1 MB (60138719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f1de7f5c97e943bc365047e494cb9f18d69fcb394f878425ae9aaa3a0187b22`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028b8b2e38cd4e2eaf5664b916a46fb337b581dc186f83eef95f94ce35dcc1e6`  
		Last Modified: Tue, 09 Jan 2018 14:36:11 GMT  
		Size: 2.5 MB (2454055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be581ba4c107fc907cd38e3441c0b859c782a383854bcf310ecef2c7b3b3e679`  
		Last Modified: Tue, 09 Jan 2018 14:36:46 GMT  
		Size: 97.0 MB (96976535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335013ce436fb2cd5dd26a2407e4c5000209a6f46458741c211cdcfc11918c54`  
		Last Modified: Tue, 09 Jan 2018 14:36:05 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:fb1232495eee52d63e7722495b854a5b295464c96cbc378bb49b715375831059
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258859438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa5f42cc5af10195816f4ce40d7aeeb76bce99fc142557175388a0fb6930e6a`
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
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_VERSION=2.4.3
# Sat, 16 Dec 2017 02:06:16 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Wed, 27 Dec 2017 01:53:28 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Wed, 27 Dec 2017 01:53:30 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 02:01:09 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 02:01:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 02:01:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 02:01:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 02:01:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 02:01:18 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 03:03:18 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 03:03:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:03:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 03:04:03 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 03:04:05 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 03:04:10 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 03:07:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 03:07:53 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 03:07:55 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 03:07:56 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 03:07:57 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 03:08:06 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 03:24:21 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 03:24:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 03:24:28 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 03:24:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 03:24:33 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 03:24:36 GMT
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
	-	`sha256:7583ee388c15854c522c6d9b5c72fbeb9c598084759bbce298bfab55f53bb024`  
		Last Modified: Wed, 24 Jan 2018 02:43:40 GMT  
		Size: 21.7 MB (21711659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b5136cb35537a7eac06b6a34299696953acca12ed75262c9066cf55ad5bd8`  
		Last Modified: Wed, 24 Jan 2018 02:43:34 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e19a56b41f05bb0e55697969207b4fd28d74a2b3d7fa67ae06ab6978f14c62`  
		Last Modified: Wed, 24 Jan 2018 03:49:44 GMT  
		Size: 2.1 KB (2106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8bc55fdac33b2ac32c9c7a05735aad3bc67706e2439d17f1a8c4ac1893b826`  
		Last Modified: Wed, 24 Jan 2018 03:49:46 GMT  
		Size: 14.7 MB (14720526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a78cb0f37922a2fbcf6a5f043c08478cb95d7a63f889dab4457a9c25eec5371`  
		Last Modified: Wed, 24 Jan 2018 03:49:41 GMT  
		Size: 469.8 KB (469848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5517ae38336ff4e117efab4a3bd8a1e4065162aa498eb3db2d082b0d5f31c1b`  
		Last Modified: Wed, 24 Jan 2018 03:49:40 GMT  
		Size: 8.6 KB (8642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63e6c62bbf069baa4dd2ec05d43516ff26691d8458c0535fb52104284b38fa6`  
		Last Modified: Wed, 24 Jan 2018 03:49:53 GMT  
		Size: 58.1 MB (58133330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6195cae25aa4a2523e7e415f42d3804251a79a2334734e2f554a8d1bbdfa20`  
		Last Modified: Wed, 24 Jan 2018 03:49:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:118f5f4693b7ba1a658ffb887ca5f64e901a5c03e1313243615fc9008b3f22ae`  
		Last Modified: Wed, 24 Jan 2018 03:49:46 GMT  
		Size: 2.5 MB (2454584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31584ee9dd94b2cac16c99292ec0c330abf35cb9bda1f8d2c6ca546aa164abe0`  
		Last Modified: Wed, 24 Jan 2018 03:49:59 GMT  
		Size: 99.4 MB (99391362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01496bfdc37a4901674aeba8034808dcd2089483ba545dc041c0a53dc5ad5cfe`  
		Last Modified: Wed, 24 Jan 2018 03:49:38 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; s390x

```console
$ docker pull redmine@sha256:c257d045f585963b53e4cb8d45df9d003793cffc50e07e7c906588edf596e953
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.2 MB (267165606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360bacda566727b89c4a3b20c9e2e8b798ee2855730dd5a546976cd534dfc982`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Tue, 12 Dec 2017 06:22:40 GMT
ADD file:f85dc45c68f6f29cc10d6ef236674dedc10522f11b6fa2e8a6b10a4409ca0bc7 in / 
# Tue, 12 Dec 2017 06:22:40 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 08:58:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 08:58:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 08:58:10 GMT
ENV RUBY_MAJOR=2.4
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_VERSION=2.4.3
# Sun, 07 Jan 2018 06:53:57 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Sun, 07 Jan 2018 06:53:58 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Sun, 07 Jan 2018 06:53:58 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 07 Jan 2018 06:56:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 07 Jan 2018 06:56:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 07 Jan 2018 06:56:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 07 Jan 2018 06:56:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 06:56:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 07 Jan 2018 06:57:03 GMT
CMD ["irb"]
# Sun, 07 Jan 2018 11:22:58 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 07 Jan 2018 11:23:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:23:09 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 11:23:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 07 Jan 2018 11:23:11 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 07 Jan 2018 11:23:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 07 Jan 2018 11:23:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 11:23:52 GMT
ENV RAILS_ENV=production
# Sun, 07 Jan 2018 11:23:52 GMT
WORKDIR /usr/src/redmine
# Tue, 09 Jan 2018 23:43:35 GMT
ENV REDMINE_VERSION=3.4.4
# Tue, 09 Jan 2018 23:43:36 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Tue, 09 Jan 2018 23:43:38 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Tue, 09 Jan 2018 23:46:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 09 Jan 2018 23:46:20 GMT
VOLUME [/usr/src/redmine/files]
# Tue, 09 Jan 2018 23:46:20 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Tue, 09 Jan 2018 23:46:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 23:46:21 GMT
EXPOSE 3000/tcp
# Tue, 09 Jan 2018 23:46:21 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:98cfcbfa76c6d2a42223dc7a44505bdd260000bffd3ecbb983cb33213128499b`  
		Last Modified: Tue, 12 Dec 2017 06:28:05 GMT  
		Size: 52.8 MB (52790322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7df45e2d389598163598929e461ccee40f642d98691774d43fd140d2550ce9`  
		Last Modified: Tue, 12 Dec 2017 09:17:48 GMT  
		Size: 10.0 MB (9979479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55f06776c0eaa66bf543f92323c41e32c9b9b589fa0457e82cfbbb2fedb5fad`  
		Last Modified: Tue, 12 Dec 2017 09:17:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb49332cdc153c93bfd498785457d31189cfc37e46491f3a44b0f2bbe55bccb`  
		Last Modified: Sun, 07 Jan 2018 07:21:00 GMT  
		Size: 25.1 MB (25144704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274c2f7a6d74cf11965f2607a9f997c78e37fa2bfb50623a941b662b1084a658`  
		Last Modified: Sun, 07 Jan 2018 07:20:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4d5d651b3275fbcecd74f469bb3c13e139211b136e47e0b8e502fd5db0777`  
		Last Modified: Sun, 07 Jan 2018 11:35:50 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0ce8cedbd53c226cc39ddb9ac71fa267139dc45bccc6c3f06e739ec40c06bb`  
		Last Modified: Sun, 07 Jan 2018 11:35:53 GMT  
		Size: 14.8 MB (14815142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3063fd41e5c59f155e5eaa1b296ed8205f1e51c18eaa88156e12485eefc307`  
		Last Modified: Sun, 07 Jan 2018 11:35:48 GMT  
		Size: 486.8 KB (486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c22820e147c1ce8acd065399ae6d181437ed9fa284c9c3d0e0333c0145436d5`  
		Last Modified: Sun, 07 Jan 2018 11:35:48 GMT  
		Size: 8.6 KB (8623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6338b23232fb68e21fdf807aee2fd16c68247ae9e3cb94ea56ead7187124801e`  
		Last Modified: Sun, 07 Jan 2018 11:36:05 GMT  
		Size: 59.1 MB (59105542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53fba1dcf9b568e08165b5cbf3669cb52f5844d7d05599782092d100affddbd`  
		Last Modified: Sun, 07 Jan 2018 11:35:46 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2214c194d024b878fd5b301976e99a675535f74bbcedd9c6376b661f5bfcd884`  
		Last Modified: Tue, 09 Jan 2018 23:51:44 GMT  
		Size: 2.5 MB (2454046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417ee399267230149508893db74b50bda473bf3104f0680e652db062e8f35586`  
		Last Modified: Tue, 09 Jan 2018 23:51:58 GMT  
		Size: 102.4 MB (102376522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca717c2a65b96ff760b38a70a2cdb42b8055217ad118004fbb038b9b59ba6047`  
		Last Modified: Tue, 09 Jan 2018 23:51:43 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:passenger`

```console
$ docker pull redmine@sha256:04259117789f501be6a4f5e14bcaa98100a7307abd5580caeb68e2243654890d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:a1466415cfc6e3f94db120e438cac9baf8f29bc5fa4b9599b93172569d24a3d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276465493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d578b23861785b875c2889e116db1a3d6160c3dc3a37e6567eec6dbad63b68b`
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
# Fri, 15 Dec 2017 21:01:06 GMT
ENV RUBY_VERSION=2.4.3
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBY_DOWNLOAD_SHA256=23677d40bf3b7621ba64593c978df40b1e026d8653c74a0599f0ead78ed92b51
# Tue, 26 Dec 2017 21:13:43 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:13:43 GMT
ENV BUNDLER_VERSION=1.16.1
# Wed, 24 Jan 2018 05:05:48 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force 	&& rm -r /root/.gem/
# Wed, 24 Jan 2018 05:05:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 24 Jan 2018 05:05:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jan 2018 05:05:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 24 Jan 2018 05:05:49 GMT
CMD ["irb"]
# Wed, 24 Jan 2018 06:06:55 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 24 Jan 2018 06:07:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:06 GMT
ENV GOSU_VERSION=1.10
# Wed, 24 Jan 2018 06:07:11 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 24 Jan 2018 06:07:11 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 24 Jan 2018 06:07:13 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 24 Jan 2018 06:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 24 Jan 2018 06:07:48 GMT
ENV RAILS_ENV=production
# Wed, 24 Jan 2018 06:07:48 GMT
WORKDIR /usr/src/redmine
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_VERSION=3.4.4
# Wed, 24 Jan 2018 06:07:48 GMT
ENV REDMINE_DOWNLOAD_MD5=8152aa9fd2d5d01cf50ad898090b1d78
# Wed, 24 Jan 2018 06:07:52 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 24 Jan 2018 06:10:42 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlserver sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:10:42 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 24 Jan 2018 06:10:43 GMT
COPY file:8064eeba1336402e59165b07c73d0734f58aa7e83e3c0a42b6888098f2e2c11d in / 
# Wed, 24 Jan 2018 06:10:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 24 Jan 2018 06:10:43 GMT
EXPOSE 3000/tcp
# Wed, 24 Jan 2018 06:10:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Wed, 24 Jan 2018 06:10:59 GMT
ENV PASSENGER_VERSION=5.1.12
# Wed, 24 Jan 2018 06:11:17 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 24 Jan 2018 06:11:18 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Wed, 24 Jan 2018 06:11:18 GMT
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
	-	`sha256:914af5a077ad24690c7165c325515672c4e7d3ed22b4552469808eba58d38ebc`  
		Last Modified: Wed, 24 Jan 2018 05:40:30 GMT  
		Size: 21.3 MB (21265666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b28bf63e1ed304239fcfc42598f0b4ac1911f015308a6e58858193e292009f4`  
		Last Modified: Wed, 24 Jan 2018 05:40:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c140c2ef821682fb47e7992f7400b9e41dc4127af655861ef1d00e871c2085b8`  
		Last Modified: Wed, 24 Jan 2018 06:18:25 GMT  
		Size: 2.1 KB (2095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5607421fd57058686825dae91e6fea9c01bdaf222f5a244d012cb1e8151663`  
		Last Modified: Wed, 24 Jan 2018 06:18:29 GMT  
		Size: 14.7 MB (14650359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f587cb4b48f36ef70f751ecd7a6a3834e0275dbac711f32f3173ebe68d6c5bf6`  
		Last Modified: Wed, 24 Jan 2018 06:18:23 GMT  
		Size: 500.7 KB (500671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ac044f1b6586f3e2dea8488075d942fdcbb86cdd0b3ed8339fd64f7237e7e5`  
		Last Modified: Wed, 24 Jan 2018 06:18:22 GMT  
		Size: 8.5 KB (8505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c1c4ae051a2fd60b9493ab375c753feaaf378a0bf1d186a7b758bfe2a1492e`  
		Last Modified: Wed, 24 Jan 2018 06:18:38 GMT  
		Size: 59.3 MB (59271821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c879104edf2528d20632cf2b10b97d6592b1172fcbabdff177f2bf0b2c617`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4814fd2da77ac373e5ef2c7e59015dba56d05a0baadd9417a761acb95d32198`  
		Last Modified: Wed, 24 Jan 2018 06:18:24 GMT  
		Size: 2.5 MB (2454045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7196a1a3332d4f79d7310e334474b75e4163238977091cde6b0ed9688f53a128`  
		Last Modified: Wed, 24 Jan 2018 06:18:46 GMT  
		Size: 98.7 MB (98695903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3736c62c383560fc8135594bb3f86e9bfd9cf6be584a35950772e9c690bfe22`  
		Last Modified: Wed, 24 Jan 2018 06:18:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c22c5a9e67cff686fd3ea0c3aac585dbc7ca8682a7342a4b4319181e7ca2817`  
		Last Modified: Wed, 24 Jan 2018 06:19:47 GMT  
		Size: 12.8 MB (12752687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cc0a3c69b674faafea6607fa07d13683ffe34a5826cc4039b274955fbe3c0d`  
		Last Modified: Wed, 24 Jan 2018 06:19:46 GMT  
		Size: 4.1 MB (4076921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
