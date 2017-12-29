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
$ docker pull redmine@sha256:da23d1fc9693258f42ad6875e93ce4a3880ef3a8ec8ebe8b4e317cad6ff596df
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
$ docker pull redmine@sha256:6100e93f0ded37e83ec9cc9693f7dc65bbfa28017bf245d794e37d5457d18809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242229468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3909e962e03cb5bd3b9af5a1fbb999c6a5a86abf5ba412671ec93d8f898b9964`
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
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Fri, 29 Dec 2017 01:53:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 01:56:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:02:51 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:02:52 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:02:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:02:52 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:02:52 GMT
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
	-	`sha256:7f7061cf6ad952ab7f4b74e5e381bfcd79c1a86b12420d375dea98747bf4b28a`  
		Last Modified: Fri, 29 Dec 2017 02:24:44 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d07af14ecdc768da4fdcb08ce7c9d01d8a4fd0a85a0b3bbc14eaa656f7a0eb0`  
		Last Modified: Fri, 29 Dec 2017 02:24:59 GMT  
		Size: 77.8 MB (77819821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f9d8a482ef18260adb7fb2412501905da3482ca50c1d1888fc583144350e33`  
		Last Modified: Fri, 29 Dec 2017 02:24:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a61ac31acc1e95058816393f0abb099d3fa7381ded3949c8a09fbfe7e2d8b45c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235394788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:098f16489e3b62bf6ae712cd21b5b71678334508d18dae0d34bf217eddd53c5c`
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
# Sat, 16 Dec 2017 02:44:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:44:56 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:51:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:51:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:51:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:51:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:51:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:51:14 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:31:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:31:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:31:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:31:45 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:31:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:32:52 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:32:52 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:32:52 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:32:52 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:32:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:37:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:37:39 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:37:39 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:37:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:37:40 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:37:40 GMT
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
	-	`sha256:74d3669a8d6dbafc06ec22e3a04c6d60b413016eba2dc63f9661bd6276c5ae0a`  
		Last Modified: Sun, 24 Dec 2017 03:12:51 GMT  
		Size: 24.5 MB (24507413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d742550f19c715ed4e2b76dec69dffd1c1c8e4495cef8d5ab447fa6a1d4da1`  
		Last Modified: Sun, 24 Dec 2017 03:12:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49f0e788d909e36ff37439e0506a010cf47f8bd9d85669b2d53a85623b024c`  
		Last Modified: Sun, 24 Dec 2017 03:48:44 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ac27975a90a42a722bf5feff315b38a792399286ce783cd7ff689fa12504a0`  
		Last Modified: Sun, 24 Dec 2017 03:48:48 GMT  
		Size: 14.3 MB (14347449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc970ff2d7a066b4272b737bc55ef7bbeb72a28e8537131763a3eb64135310fd`  
		Last Modified: Sun, 24 Dec 2017 03:48:43 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43231d654529dda4a0d474c66ae688d301229a6bb90c324b81bfe76402d2b6d0`  
		Last Modified: Sun, 24 Dec 2017 03:48:42 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e2a16e7ea20ae3e23c9439cc5340be000fef064bfc73087e345ba86de10831`  
		Last Modified: Sun, 24 Dec 2017 03:49:00 GMT  
		Size: 56.6 MB (56603784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592c6d07e02ee6d10749feb18b7f281f9dd9601e20a76026ce9382e74fbfc3d`  
		Last Modified: Sun, 24 Dec 2017 03:48:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2a274d4dc09af7ad1c10b243e198c95508d9b52e51f466490baec281d9aeff`  
		Last Modified: Sun, 24 Dec 2017 03:48:43 GMT  
		Size: 2.5 MB (2450383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f995f8268525db856b1d2dcd9caf9a08390ed214314d306129d23d318e9ea75`  
		Last Modified: Sun, 24 Dec 2017 03:49:01 GMT  
		Size: 77.0 MB (76967391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c23fb73b2038f79c20a5b1a05e5e33cff47201b7eb7c9e6ff068463499a72f`  
		Last Modified: Sun, 24 Dec 2017 03:48:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:a8971907cd6b09ed45acf6c2ecab1623ede108f82bbd4c4a5f8721403b82fde9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229703771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d6fda3fb87d714e121cd2e9b07851748b7a1a537823f69daaf376d1cf171a9`
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
# Sat, 16 Dec 2017 02:32:50 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:32:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:38:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:38:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:38:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:38:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:38:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:38:18 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:17:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:17:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:17:58 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:18:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:18:00 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:18:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:18:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:18:59 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:18:59 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:18:59 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:19:00 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:23:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:23:17 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:23:17 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:23:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:23:18 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:23:18 GMT
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
	-	`sha256:ce9a79e99be8b64d17842504badce751f44f82dd7fcb6394708f69c6c9bb44df`  
		Last Modified: Sun, 24 Dec 2017 02:58:59 GMT  
		Size: 24.4 MB (24372154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e6be2e75a64e644e002ab9a96c11f27e9f7e418b39ea2e546b77588dac3576`  
		Last Modified: Sun, 24 Dec 2017 02:58:50 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65122e7ac4a8cbb82fe76a27b2ec946d0b86c9603a044c95236949886d04da45`  
		Last Modified: Sun, 24 Dec 2017 03:34:11 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c7d56a00700dd16f67718374df7552f5680dbf80551e5ac028ef11892b0fc6`  
		Last Modified: Sun, 24 Dec 2017 03:34:13 GMT  
		Size: 14.1 MB (14134526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a097ae12f705eaeb758d6ff8a971ad82f4b412959e935df9eeb4a80b552897`  
		Last Modified: Sun, 24 Dec 2017 03:34:10 GMT  
		Size: 475.3 KB (475263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a08166f4302e7c2edd5efee52a222e987abc908e511077c7fde34cb664b5daf`  
		Last Modified: Sun, 24 Dec 2017 03:34:09 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffc820192155eed360cd11a15810c87df29aae7b9b9a4fa7a9aeab048dd6e52`  
		Last Modified: Sun, 24 Dec 2017 03:34:25 GMT  
		Size: 54.3 MB (54344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85476551c859ebf4716c34db2af784b24c5bffb9abfdd9268413e0905a8b3cef`  
		Last Modified: Sun, 24 Dec 2017 03:34:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fee101079177d721067918caf37b303edad90a304475f8ef127db5326aac1`  
		Last Modified: Sun, 24 Dec 2017 03:34:10 GMT  
		Size: 2.5 MB (2450395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d09195401dc8654dfc23927dd8413d651749fc2aef90b830a5b2e71f69ae90`  
		Last Modified: Sun, 24 Dec 2017 03:34:26 GMT  
		Size: 76.4 MB (76439000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22c79ae00d0680ea371b88180dbbb2c5752dd6d82fa5a508ef642b512f658d`  
		Last Modified: Sun, 24 Dec 2017 03:34:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b17a0f9257a6948dc53913c9b803eb05d507882214432c18f7a6fd20499a4523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234187855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757c61dea8c6ced66debc13be112ff6c3e209779244b73f7bcb27c7cc39a4eb4`
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
# Sat, 16 Dec 2017 07:25:38 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 22:20:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 22:29:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 22:29:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 22:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 22:29:42 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:41:48 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:41:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:41:53 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:41:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:43:42 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:43:43 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 23:43:43 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 23:43:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 23:43:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 23:52:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 23:52:35 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 23:52:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 23:52:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 23:52:37 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 23:52:38 GMT
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
	-	`sha256:8673c51c001a9bf984638ff32ca9b69fa55a922346ec362712f527ef8e90e004`  
		Last Modified: Sat, 23 Dec 2017 23:18:55 GMT  
		Size: 24.7 MB (24690330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312aafa818a3dfc76b9218fd4ca103e51b3a22b7f2b54eed603e2c8681819a14`  
		Last Modified: Sat, 23 Dec 2017 23:18:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0f66ef40a62d6b4a4dedc2cb19d378d137333c9d381fc1cd6ed8cb4a4c58eb`  
		Last Modified: Sun, 24 Dec 2017 00:16:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc4aff65cbd5771a1380192a68b0e8d8a8c4fa75d03bdb9dddb81b9d609ea`  
		Last Modified: Sun, 24 Dec 2017 00:16:32 GMT  
		Size: 14.5 MB (14462615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3f2e8c9e1fbc6c4eadd4a743a4983504129bce2f5075ccb02f5c4a0630f79`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727fe3851448999b0543d69f71c0028d2c5ae5ea53638fa8a27c675422bf8a7a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f6c5c343c2354301d6c766b2f7617190aba81d8b02f09a04003cd694d1cf13`  
		Last Modified: Sun, 24 Dec 2017 00:16:44 GMT  
		Size: 55.8 MB (55784093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fb5b33bc1a9f117df393b3a1e3ea4648faf0bf79be03ecc0077b454e75878`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabb1abccd026bf5fba3d080bdc7787892e69773bbe8edcb12c78160a80079a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c655ead65d625ac898875e056beb27e00ac5a3016e5e12169134dab1bf36b889`  
		Last Modified: Sun, 24 Dec 2017 00:16:46 GMT  
		Size: 77.0 MB (77038232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e91657b9404f53c5e9abbec3f5d5120a622ffe8ecf04f3d2c0b5abf7dbbef8`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; 386

```console
$ docker pull redmine@sha256:c35c609a3fde5e78f52fb8486c4fcfdb924ac563ca1d5d8654223d05e99ff187
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246141703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc15c653809b12f18195514782dc7cbca470b40a1590ee2c978a1411124d8b0e`
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
# Wed, 27 Dec 2017 06:32:21 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 27 Dec 2017 06:32:21 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 27 Dec 2017 07:21:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:24:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:24:35 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:24:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:24:36 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:24:36 GMT
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
	-	`sha256:1a12d88977f9e0ef1f1cb9fbe03caa0a299e5fc6a646c4f7a84f8f663372c72e`  
		Last Modified: Wed, 27 Dec 2017 07:55:41 GMT  
		Size: 2.4 MB (2449742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d1ef02aafa67feb7be4509cbdf0ef0e8dcdfbcf81d313073dcbe5badfef4fe`  
		Last Modified: Wed, 27 Dec 2017 07:56:03 GMT  
		Size: 77.1 MB (77083207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166f1fdda1443dcf50b2f8fc0b7b4a99f5c4f7aaee9ebb435f1124805bad5b4d`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3` - linux; ppc64le

```console
$ docker pull redmine@sha256:e4011e5f705fd5e6607c57585cf680efdc3240ed812656fd98258f867bfc1dd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240851082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0348a1c62e4956882dad14eb422a9819fe2c3914e9ad4cc4f04f56276e0a663`
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
# Sat, 16 Dec 2017 02:06:19 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 01:51:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 01:58:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 01:59:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 01:59:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 01:59:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 01:59:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 01:59:07 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 02:59:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:00:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:00:14 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:00:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:00:21 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:00:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:03:07 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:03:08 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:03:09 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:03:10 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:03:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:12:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:12:30 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:12:32 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:12:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:12:36 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:12:38 GMT
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
	-	`sha256:f7ca185ba20bfed3b0dfb8bead5d00e4c5603b2f9c883a3d8fbc84651c210272`  
		Last Modified: Sun, 24 Dec 2017 02:39:35 GMT  
		Size: 25.2 MB (25182594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8240b5adb3013d7ed54044dd3968a8e3e81eaaf59d537c516fd1b8b6763c73eb`  
		Last Modified: Sun, 24 Dec 2017 02:39:28 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f5f9c1fe8c9d5cd80cc9062c920b419b72b083f8c1919cab9fe141d40792f7`  
		Last Modified: Sun, 24 Dec 2017 03:35:02 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8c40506babce6518f907064cfa52a246a3b8e3282970a5ac06d1f6e91ebc65`  
		Last Modified: Sun, 24 Dec 2017 03:35:04 GMT  
		Size: 14.7 MB (14720211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ed0e185998e3d94f4ad556310fab015821a0fda458070b92485f2d283bfaa0`  
		Last Modified: Sun, 24 Dec 2017 03:34:59 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915d5c2b24b6c161910c0c672a41bdd193a6eaf73d1605e1d4661237e9e5da72`  
		Last Modified: Sun, 24 Dec 2017 03:34:59 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8d938123331aff5140fb4c145a5b5cded3ce97d4dc43631612cce858f699c3`  
		Last Modified: Sun, 24 Dec 2017 03:35:14 GMT  
		Size: 58.1 MB (58126526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dba7a2795166158c9eda0eedb12f9a1249789036fc09232c70fddbf586398e8`  
		Last Modified: Sun, 24 Dec 2017 03:34:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7aed8f8b1b2314b44819a971d12451f74fbb9d40cf9beea0094ff8d78788ae`  
		Last Modified: Sun, 24 Dec 2017 03:34:58 GMT  
		Size: 2.5 MB (2450395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a0a60ec24a9356d4587a66d4af611e2c35462ad6e548ee060dcbb6646d6d38`  
		Last Modified: Sun, 24 Dec 2017 03:35:13 GMT  
		Size: 77.9 MB (77923445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967999194750a4d7b4f8e5bfbe7c6a2e6cf11ab9b9e88473854fbee565e2991`  
		Last Modified: Sun, 24 Dec 2017 03:34:56 GMT  
		Size: 1.7 KB (1742 bytes)  
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
$ docker pull redmine@sha256:776fc64301cd5423169667d065b15dffd1fd11a85a260668e8037e48e0065088
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
$ docker pull redmine@sha256:d0a0b1e5cb60cb302b22a0f1b40ec87ee151d19b134d2fb7d0397dc4c55ec330
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253367838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f457b19f27fa9940d9d011eca2e1694aeaadba253ebac35bd26218f81738590d`
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
# Wed, 27 Dec 2017 03:06:58 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 03:06:58 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Fri, 29 Dec 2017 02:13:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 02:16:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:16:24 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:16:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:16:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:16:25 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:16:25 GMT
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
	-	`sha256:7aa2a02d25d1b32f164272ec9899255eb39e72e03fbd6fb664e811ea6764cd0a`  
		Last Modified: Fri, 29 Dec 2017 02:30:40 GMT  
		Size: 2.3 MB (2347002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a48a29c2dae59ad486068e657931af6f0e82de146477544dacdc73c2495417`  
		Last Modified: Fri, 29 Dec 2017 02:30:53 GMT  
		Size: 78.5 MB (78477232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5b2eb984dc4c210c144961f8457d6482ab59ee52b084e790484169e5b31a1`  
		Last Modified: Fri, 29 Dec 2017 02:30:37 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v5

```console
$ docker pull redmine@sha256:331834a788561ab5d7fb0f6a235eefea4b1ea4f5a0995b3f1bf5193650cf1d8b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245757476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa004376086c7b7b98371b7e50c749e2a9c675c98144231a445f8f6e272d3bd`
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
# Wed, 27 Dec 2017 03:09:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 03:10:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 03:10:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 03:10:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 03:10:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 03:10:01 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:49:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:50:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:50:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:50:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:50:20 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:50:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:51:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:51:17 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:51:17 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 07:18:56 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 07:18:56 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 27 Dec 2017 07:18:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:23:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:23:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:23:45 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:23:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:23:46 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:23:46 GMT
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
	-	`sha256:81d6c737cac380a4b0fe0d6a39a3e7329f6e2e18af593e8eb0d06993b9ae8acf`  
		Last Modified: Wed, 27 Dec 2017 03:15:00 GMT  
		Size: 34.3 MB (34264096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa8accf4727f2f5c24ab6c22a0d337d2dc581e9a2047a6b75e93211d8bb70e2`  
		Last Modified: Wed, 27 Dec 2017 03:14:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c50c6b263bca71eb5401e3291d42b3352c0db695a82259e04c8646cac07ad05`  
		Last Modified: Wed, 27 Dec 2017 07:24:07 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1fbd4bf3096748de665cf1b5207bc50c365098a62005077eb5da328a477f24`  
		Last Modified: Wed, 27 Dec 2017 07:24:11 GMT  
		Size: 14.3 MB (14347514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296a078b8c70ec401124a5d6e11db57f7428414630f5d8ec499effa64c085573`  
		Last Modified: Wed, 27 Dec 2017 07:24:06 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61741517af3e459508b0ffb4bcd97006a9dc8a7314183de41a3eb6504efdfd1`  
		Last Modified: Wed, 27 Dec 2017 07:24:07 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41ea50c0372d0e20c354d008f41f22fdfd1eb5695dc80fb4fdb0683a8b03ea4`  
		Last Modified: Wed, 27 Dec 2017 07:24:22 GMT  
		Size: 56.6 MB (56603707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ddb1bc9800d052e85418996c4d56714ea086331768c796a9589bb57b94a04d`  
		Last Modified: Wed, 27 Dec 2017 07:24:04 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fce790536a3dbeeab08078aac179e7fbb3c8e538e9cd07ffa50146b1659a339`  
		Last Modified: Wed, 27 Dec 2017 07:24:06 GMT  
		Size: 2.3 MB (2347346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30443a80ab8b1e5ca95e5fc9185df443c1c21ddf9e50b9df0934596654e2b83`  
		Last Modified: Wed, 27 Dec 2017 07:24:23 GMT  
		Size: 77.7 MB (77676441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38692c9b306a2e228715af712c5d1ca62267e2e94d15bbf2cf53ad26a5d92410`  
		Last Modified: Wed, 27 Dec 2017 07:24:04 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm variant v7

```console
$ docker pull redmine@sha256:bb967e25fd5c775b5d66512eab6d4bd94c6be107beafed650717a6e7330addb1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (239957791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60672ae71b2ba5c61ac0d353e8bbfee21eb8fb8bc1528693ae8be0abd9edff4`
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
# Wed, 27 Dec 2017 02:54:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 02:54:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 02:54:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 02:54:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 02:55:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 02:55:01 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:35:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:35:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:35:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:35:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:35:45 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:35:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:36:42 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:36:43 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 07:23:58 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 07:23:59 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 27 Dec 2017 07:24:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:28:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:28:15 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:28:16 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:28:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:28:16 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:28:16 GMT
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
	-	`sha256:8f67c3700d1fb1b8b789bb0123a3ae5ad84dbbb448a1c6b3e1ff40a39b0b1f69`  
		Last Modified: Wed, 27 Dec 2017 03:00:17 GMT  
		Size: 34.0 MB (34038725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71df5c73004b46e037f6404944bbd3c6e8f12af77979f949c6e32d462eea5121`  
		Last Modified: Wed, 27 Dec 2017 03:00:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf54000ab1cb790b2f2a0af8d16deee18fc6efae06a8c4efa537576a9e77668`  
		Last Modified: Wed, 27 Dec 2017 07:28:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb4354caba5bb72822f3c91a4678f874dc3a436def81c016d2401b1924d1c6b`  
		Last Modified: Wed, 27 Dec 2017 07:28:44 GMT  
		Size: 14.1 MB (14134514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38ea5489d42fe59d8b23294414ba582b1f7507280415d841db923a5b5d6fc73`  
		Last Modified: Wed, 27 Dec 2017 07:28:39 GMT  
		Size: 475.3 KB (475265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c5126fdcf1c3f02dbbc7e9e5101c8f46e1a7a2cd7ce928a05f0193a82aca1d`  
		Last Modified: Wed, 27 Dec 2017 07:28:38 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc9768d5a4752fb9724f1284738a99692a8b2358acf69ded17ccf137123ec49`  
		Last Modified: Wed, 27 Dec 2017 07:28:54 GMT  
		Size: 54.3 MB (54344716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3a6f199cd05d10b2b43ba85c73d503e0116372a973b3eef1cf6fffc78a2ac4`  
		Last Modified: Wed, 27 Dec 2017 07:28:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfb115b918fdec1f17b21fda46fc94a0727e882bf1fabb4745178c0245bb530`  
		Last Modified: Wed, 27 Dec 2017 07:29:08 GMT  
		Size: 2.3 MB (2347352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac78c2d3ccc638ec02d1d9740b3119e7fdc61282b0bcbb8e3fc9553fd6a591db`  
		Last Modified: Wed, 27 Dec 2017 07:29:24 GMT  
		Size: 77.1 MB (77129647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136336bdca910f415a011c365d6fd66212215943762a99ee98b9330dcc323ea7`  
		Last Modified: Wed, 27 Dec 2017 07:29:07 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:d14b611ae905f070662430a0b1ec18892240bff3e7c3168c5cc5d4123d7e67f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245549788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef75f500fcfda2b261330444079b2c36b45932542f22e1db0ec92a5d4776c99`
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
# Sat, 16 Dec 2017 08:11:00 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 23:05:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 23:12:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 23:12:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 23:12:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 23:12:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 23:12:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 23:12:47 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:52:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:53:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:53:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:53:35 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:53:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:55:48 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:55:49 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 00:06:40 GMT
ENV REDMINE_VERSION=3.2.8
# Sun, 24 Dec 2017 00:06:41 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sun, 24 Dec 2017 00:06:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 00:16:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 00:16:06 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 00:16:07 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 00:16:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 00:16:08 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 00:16:09 GMT
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
	-	`sha256:e9d549db89f24d386d2b1d1474b8a876d065f9ff7da79f55dbf71714f122f73e`  
		Last Modified: Sat, 23 Dec 2017 23:25:03 GMT  
		Size: 35.5 MB (35470235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb677abcdc25528546a189ddb65e0272d8312b3e0384c3453d2e7060cb33dabb`  
		Last Modified: Sat, 23 Dec 2017 23:24:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a90726735e68c5f7e7f535a5e62b79f109ab70b15ba7dbbf02f414a6fcec42`  
		Last Modified: Sun, 24 Dec 2017 00:17:24 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a09a572bf537aa0c86d55fa6013feb17b3177cbb25136c06f7fa528b3a0a8`  
		Last Modified: Sun, 24 Dec 2017 00:17:29 GMT  
		Size: 14.5 MB (14462690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6617bf3885a5b5aa5c6fe8ba6bee6a26920607186a5029686bf94e82ffd3fb`  
		Last Modified: Sun, 24 Dec 2017 00:17:23 GMT  
		Size: 468.7 KB (468700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d878d582f32119ef6b431001b9df4ff1693338ca007be42158b85840410482`  
		Last Modified: Sun, 24 Dec 2017 00:17:22 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802e046497405156f05c59ce96cb48e65a977b47962bced1b2264255a04db379`  
		Last Modified: Sun, 24 Dec 2017 00:17:42 GMT  
		Size: 55.8 MB (55785128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4908b4191441d3c883e1e5c7544529053b3bd585430b8391e1ed5ff512f6b7c`  
		Last Modified: Sun, 24 Dec 2017 00:17:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d071faab08f7dd13f9094d4af38d92294e085871835604217dd0eebbbddd7`  
		Last Modified: Sun, 24 Dec 2017 00:18:04 GMT  
		Size: 2.3 MB (2347004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3377f8a2f40e4937c311f4972f66619cae7cdb9d136b355f91250514054be356`  
		Last Modified: Sun, 24 Dec 2017 00:18:24 GMT  
		Size: 77.7 MB (77721887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee38a7af6002a00d1495f0b984c4664d3eb471979edc21e594720e943ad2e7`  
		Last Modified: Sun, 24 Dec 2017 00:18:02 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; 386

```console
$ docker pull redmine@sha256:88d1276e8726a9cbd26ec0e723f1c7466af0b7695f374a9ef966667d7ea8fa0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255763186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f8f114dbb0d5904b00888a76d781b49d5d7dc8b96e6e9b372805fa5cf4bd98`
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
# Wed, 27 Dec 2017 07:43:43 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 07:43:43 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 27 Dec 2017 07:43:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:47:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:47:11 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:47:12 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:47:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:47:12 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:47:12 GMT
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
	-	`sha256:e8ce3273edf1da607834a913949680aa00791e3be1f1e004e9857237f0f673f6`  
		Last Modified: Wed, 27 Dec 2017 08:06:21 GMT  
		Size: 2.3 MB (2347002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe37d66ecffcc48f8bb1eb0fa03718f8a11eb23e5097e08f02932d66f6660e43`  
		Last Modified: Wed, 27 Dec 2017 08:06:43 GMT  
		Size: 77.7 MB (77736279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20838cf677ecc676d33c0f3cd25ee49b317314da580b2bcb2f92ae8dc7d30e9`  
		Last Modified: Wed, 27 Dec 2017 08:06:17 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2` - linux; ppc64le

```console
$ docker pull redmine@sha256:26da8e5f32b14ad0124ac77999a38c20dee473bc39717ed27bd4b514a24bab0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252604861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6b7a9e1b78e1e0b398afd69e9b3aa0514af54e4173d1e2ef24a8a22b78a37f`
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
# Wed, 27 Dec 2017 02:33:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 02:33:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 02:33:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 02:33:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 02:33:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 02:34:00 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:18:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:19:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:19:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:19:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:19:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:23:04 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:23:05 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 07:30:52 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 07:30:53 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 27 Dec 2017 07:31:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:41:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:41:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:41:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:41:29 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:41:31 GMT
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
	-	`sha256:c76c6231f2277936b51e4a77b1a937c5c5b785c6d755ad3dce7e101d4c9c7229`  
		Last Modified: Wed, 27 Dec 2017 02:42:06 GMT  
		Size: 36.3 MB (36346322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4485b0d51f021f829e799cf0af619e8eb3526c5381e30b92691137d1e4a4a4`  
		Last Modified: Wed, 27 Dec 2017 02:41:53 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98907d0165103b75c323fd62b0e3cb6eee3eb9ffa70afeab7d9f48e965de707`  
		Last Modified: Wed, 27 Dec 2017 07:41:47 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9983651f1353ab6d487e25160019df9c63ad280628a666d09cb318f78335b46`  
		Last Modified: Wed, 27 Dec 2017 07:41:49 GMT  
		Size: 14.7 MB (14720172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557d8a08c7707cb3a33cee2d022a522d0a9b4c7116d9838ee77cdf626ce5af5e`  
		Last Modified: Wed, 27 Dec 2017 07:41:45 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856eee0bd1e3c18f923cf8f66a5db28c7eea75cdf6e03ccb745b89a673a5d6f6`  
		Last Modified: Wed, 27 Dec 2017 07:41:44 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230dfee5e974f5391f1c7bcd4453b6fae279cc05108c787615566b2646336ef0`  
		Last Modified: Wed, 27 Dec 2017 07:41:57 GMT  
		Size: 58.1 MB (58126376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86bc65762c86a0af00575314dd980d4ec6e31a49f0fbd681dbde0095d43ea53`  
		Last Modified: Wed, 27 Dec 2017 07:41:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782b1d3c16d8343fadbaf8abdcc3130b30f3890cff5b67309567a313b76bca58`  
		Last Modified: Wed, 27 Dec 2017 07:42:15 GMT  
		Size: 2.3 MB (2347350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d140b500a3da29a8c123a3bf5eb917a4d4c214a8afadc1864b7cc428ed433cc5`  
		Last Modified: Wed, 27 Dec 2017 07:42:29 GMT  
		Size: 78.6 MB (78616720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eea511902284b031b5d5a4c94dd1259247cf6759eafc9fb70e4ab19a4457aa8`  
		Last Modified: Wed, 27 Dec 2017 07:42:13 GMT  
		Size: 1.7 KB (1742 bytes)  
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
$ docker pull redmine@sha256:776fc64301cd5423169667d065b15dffd1fd11a85a260668e8037e48e0065088
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
$ docker pull redmine@sha256:d0a0b1e5cb60cb302b22a0f1b40ec87ee151d19b134d2fb7d0397dc4c55ec330
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253367838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f457b19f27fa9940d9d011eca2e1694aeaadba253ebac35bd26218f81738590d`
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
# Wed, 27 Dec 2017 03:06:58 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 03:06:58 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Fri, 29 Dec 2017 02:13:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 02:16:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:16:24 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:16:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:16:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:16:25 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:16:25 GMT
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
	-	`sha256:7aa2a02d25d1b32f164272ec9899255eb39e72e03fbd6fb664e811ea6764cd0a`  
		Last Modified: Fri, 29 Dec 2017 02:30:40 GMT  
		Size: 2.3 MB (2347002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a48a29c2dae59ad486068e657931af6f0e82de146477544dacdc73c2495417`  
		Last Modified: Fri, 29 Dec 2017 02:30:53 GMT  
		Size: 78.5 MB (78477232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5b2eb984dc4c210c144961f8457d6482ab59ee52b084e790484169e5b31a1`  
		Last Modified: Fri, 29 Dec 2017 02:30:37 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v5

```console
$ docker pull redmine@sha256:331834a788561ab5d7fb0f6a235eefea4b1ea4f5a0995b3f1bf5193650cf1d8b
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245757476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa004376086c7b7b98371b7e50c749e2a9c675c98144231a445f8f6e272d3bd`
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
# Wed, 27 Dec 2017 03:09:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 03:10:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 03:10:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 03:10:00 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 03:10:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 03:10:01 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:49:43 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:50:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:50:17 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:50:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:50:20 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:50:21 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:51:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:51:17 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:51:17 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 07:18:56 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 07:18:56 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 27 Dec 2017 07:18:59 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:23:44 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:23:45 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:23:45 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:23:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:23:46 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:23:46 GMT
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
	-	`sha256:81d6c737cac380a4b0fe0d6a39a3e7329f6e2e18af593e8eb0d06993b9ae8acf`  
		Last Modified: Wed, 27 Dec 2017 03:15:00 GMT  
		Size: 34.3 MB (34264096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa8accf4727f2f5c24ab6c22a0d337d2dc581e9a2047a6b75e93211d8bb70e2`  
		Last Modified: Wed, 27 Dec 2017 03:14:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c50c6b263bca71eb5401e3291d42b3352c0db695a82259e04c8646cac07ad05`  
		Last Modified: Wed, 27 Dec 2017 07:24:07 GMT  
		Size: 2.1 KB (2086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1fbd4bf3096748de665cf1b5207bc50c365098a62005077eb5da328a477f24`  
		Last Modified: Wed, 27 Dec 2017 07:24:11 GMT  
		Size: 14.3 MB (14347514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:296a078b8c70ec401124a5d6e11db57f7428414630f5d8ec499effa64c085573`  
		Last Modified: Wed, 27 Dec 2017 07:24:06 GMT  
		Size: 491.1 KB (491124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61741517af3e459508b0ffb4bcd97006a9dc8a7314183de41a3eb6504efdfd1`  
		Last Modified: Wed, 27 Dec 2017 07:24:07 GMT  
		Size: 7.8 KB (7842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41ea50c0372d0e20c354d008f41f22fdfd1eb5695dc80fb4fdb0683a8b03ea4`  
		Last Modified: Wed, 27 Dec 2017 07:24:22 GMT  
		Size: 56.6 MB (56603707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ddb1bc9800d052e85418996c4d56714ea086331768c796a9589bb57b94a04d`  
		Last Modified: Wed, 27 Dec 2017 07:24:04 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fce790536a3dbeeab08078aac179e7fbb3c8e538e9cd07ffa50146b1659a339`  
		Last Modified: Wed, 27 Dec 2017 07:24:06 GMT  
		Size: 2.3 MB (2347346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30443a80ab8b1e5ca95e5fc9185df443c1c21ddf9e50b9df0934596654e2b83`  
		Last Modified: Wed, 27 Dec 2017 07:24:23 GMT  
		Size: 77.7 MB (77676441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38692c9b306a2e228715af712c5d1ca62267e2e94d15bbf2cf53ad26a5d92410`  
		Last Modified: Wed, 27 Dec 2017 07:24:04 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm variant v7

```console
$ docker pull redmine@sha256:bb967e25fd5c775b5d66512eab6d4bd94c6be107beafed650717a6e7330addb1
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (239957791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c60672ae71b2ba5c61ac0d353e8bbfee21eb8fb8bc1528693ae8be0abd9edff4`
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
# Wed, 27 Dec 2017 02:54:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 02:54:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 02:54:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 02:54:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 02:55:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 02:55:01 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:35:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:35:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:35:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:35:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:35:45 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:35:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:36:42 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:36:43 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 07:23:58 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 07:23:59 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 27 Dec 2017 07:24:02 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:28:15 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:28:15 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:28:16 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:28:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:28:16 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:28:16 GMT
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
	-	`sha256:8f67c3700d1fb1b8b789bb0123a3ae5ad84dbbb448a1c6b3e1ff40a39b0b1f69`  
		Last Modified: Wed, 27 Dec 2017 03:00:17 GMT  
		Size: 34.0 MB (34038725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71df5c73004b46e037f6404944bbd3c6e8f12af77979f949c6e32d462eea5121`  
		Last Modified: Wed, 27 Dec 2017 03:00:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf54000ab1cb790b2f2a0af8d16deee18fc6efae06a8c4efa537576a9e77668`  
		Last Modified: Wed, 27 Dec 2017 07:28:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb4354caba5bb72822f3c91a4678f874dc3a436def81c016d2401b1924d1c6b`  
		Last Modified: Wed, 27 Dec 2017 07:28:44 GMT  
		Size: 14.1 MB (14134514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38ea5489d42fe59d8b23294414ba582b1f7507280415d841db923a5b5d6fc73`  
		Last Modified: Wed, 27 Dec 2017 07:28:39 GMT  
		Size: 475.3 KB (475265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c5126fdcf1c3f02dbbc7e9e5101c8f46e1a7a2cd7ce928a05f0193a82aca1d`  
		Last Modified: Wed, 27 Dec 2017 07:28:38 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc9768d5a4752fb9724f1284738a99692a8b2358acf69ded17ccf137123ec49`  
		Last Modified: Wed, 27 Dec 2017 07:28:54 GMT  
		Size: 54.3 MB (54344716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3a6f199cd05d10b2b43ba85c73d503e0116372a973b3eef1cf6fffc78a2ac4`  
		Last Modified: Wed, 27 Dec 2017 07:28:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfb115b918fdec1f17b21fda46fc94a0727e882bf1fabb4745178c0245bb530`  
		Last Modified: Wed, 27 Dec 2017 07:29:08 GMT  
		Size: 2.3 MB (2347352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac78c2d3ccc638ec02d1d9740b3119e7fdc61282b0bcbb8e3fc9553fd6a591db`  
		Last Modified: Wed, 27 Dec 2017 07:29:24 GMT  
		Size: 77.1 MB (77129647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136336bdca910f415a011c365d6fd66212215943762a99ee98b9330dcc323ea7`  
		Last Modified: Wed, 27 Dec 2017 07:29:07 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:d14b611ae905f070662430a0b1ec18892240bff3e7c3168c5cc5d4123d7e67f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.5 MB (245549788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef75f500fcfda2b261330444079b2c36b45932542f22e1db0ec92a5d4776c99`
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
# Sat, 16 Dec 2017 08:11:00 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 23:05:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 23:12:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 23:12:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 23:12:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 23:12:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 23:12:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 23:12:47 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:52:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:53:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:53:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:53:35 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:53:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:55:48 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:55:49 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 00:06:40 GMT
ENV REDMINE_VERSION=3.2.8
# Sun, 24 Dec 2017 00:06:41 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Sun, 24 Dec 2017 00:06:46 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 00:16:05 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 00:16:06 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 00:16:07 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 00:16:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 00:16:08 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 00:16:09 GMT
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
	-	`sha256:e9d549db89f24d386d2b1d1474b8a876d065f9ff7da79f55dbf71714f122f73e`  
		Last Modified: Sat, 23 Dec 2017 23:25:03 GMT  
		Size: 35.5 MB (35470235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb677abcdc25528546a189ddb65e0272d8312b3e0384c3453d2e7060cb33dabb`  
		Last Modified: Sat, 23 Dec 2017 23:24:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a90726735e68c5f7e7f535a5e62b79f109ab70b15ba7dbbf02f414a6fcec42`  
		Last Modified: Sun, 24 Dec 2017 00:17:24 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a09a572bf537aa0c86d55fa6013feb17b3177cbb25136c06f7fa528b3a0a8`  
		Last Modified: Sun, 24 Dec 2017 00:17:29 GMT  
		Size: 14.5 MB (14462690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6617bf3885a5b5aa5c6fe8ba6bee6a26920607186a5029686bf94e82ffd3fb`  
		Last Modified: Sun, 24 Dec 2017 00:17:23 GMT  
		Size: 468.7 KB (468700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d878d582f32119ef6b431001b9df4ff1693338ca007be42158b85840410482`  
		Last Modified: Sun, 24 Dec 2017 00:17:22 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802e046497405156f05c59ce96cb48e65a977b47962bced1b2264255a04db379`  
		Last Modified: Sun, 24 Dec 2017 00:17:42 GMT  
		Size: 55.8 MB (55785128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4908b4191441d3c883e1e5c7544529053b3bd585430b8391e1ed5ff512f6b7c`  
		Last Modified: Sun, 24 Dec 2017 00:17:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d071faab08f7dd13f9094d4af38d92294e085871835604217dd0eebbbddd7`  
		Last Modified: Sun, 24 Dec 2017 00:18:04 GMT  
		Size: 2.3 MB (2347004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3377f8a2f40e4937c311f4972f66619cae7cdb9d136b355f91250514054be356`  
		Last Modified: Sun, 24 Dec 2017 00:18:24 GMT  
		Size: 77.7 MB (77721887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee38a7af6002a00d1495f0b984c4664d3eb471979edc21e594720e943ad2e7`  
		Last Modified: Sun, 24 Dec 2017 00:18:02 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; 386

```console
$ docker pull redmine@sha256:88d1276e8726a9cbd26ec0e723f1c7466af0b7695f374a9ef966667d7ea8fa0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255763186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8f8f114dbb0d5904b00888a76d781b49d5d7dc8b96e6e9b372805fa5cf4bd98`
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
# Wed, 27 Dec 2017 07:43:43 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 07:43:43 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 27 Dec 2017 07:43:48 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:47:11 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:47:11 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:47:12 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:47:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:47:12 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:47:12 GMT
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
	-	`sha256:e8ce3273edf1da607834a913949680aa00791e3be1f1e004e9857237f0f673f6`  
		Last Modified: Wed, 27 Dec 2017 08:06:21 GMT  
		Size: 2.3 MB (2347002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe37d66ecffcc48f8bb1eb0fa03718f8a11eb23e5097e08f02932d66f6660e43`  
		Last Modified: Wed, 27 Dec 2017 08:06:43 GMT  
		Size: 77.7 MB (77736279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20838cf677ecc676d33c0f3cd25ee49b317314da580b2bcb2f92ae8dc7d30e9`  
		Last Modified: Wed, 27 Dec 2017 08:06:17 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.2.8` - linux; ppc64le

```console
$ docker pull redmine@sha256:26da8e5f32b14ad0124ac77999a38c20dee473bc39717ed27bd4b514a24bab0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252604861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6b7a9e1b78e1e0b398afd69e9b3aa0514af54e4173d1e2ef24a8a22b78a37f`
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
# Wed, 27 Dec 2017 02:33:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 02:33:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 02:33:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 02:33:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 02:33:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 02:34:00 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:18:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:19:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:19:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:19:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:19:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:23:04 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:23:05 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 07:30:52 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 07:30:53 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Wed, 27 Dec 2017 07:31:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:41:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:41:24 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:41:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:41:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:41:29 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:41:31 GMT
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
	-	`sha256:c76c6231f2277936b51e4a77b1a937c5c5b785c6d755ad3dce7e101d4c9c7229`  
		Last Modified: Wed, 27 Dec 2017 02:42:06 GMT  
		Size: 36.3 MB (36346322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4485b0d51f021f829e799cf0af619e8eb3526c5381e30b92691137d1e4a4a4`  
		Last Modified: Wed, 27 Dec 2017 02:41:53 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98907d0165103b75c323fd62b0e3cb6eee3eb9ffa70afeab7d9f48e965de707`  
		Last Modified: Wed, 27 Dec 2017 07:41:47 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9983651f1353ab6d487e25160019df9c63ad280628a666d09cb318f78335b46`  
		Last Modified: Wed, 27 Dec 2017 07:41:49 GMT  
		Size: 14.7 MB (14720172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557d8a08c7707cb3a33cee2d022a522d0a9b4c7116d9838ee77cdf626ce5af5e`  
		Last Modified: Wed, 27 Dec 2017 07:41:45 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856eee0bd1e3c18f923cf8f66a5db28c7eea75cdf6e03ccb745b89a673a5d6f6`  
		Last Modified: Wed, 27 Dec 2017 07:41:44 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230dfee5e974f5391f1c7bcd4453b6fae279cc05108c787615566b2646336ef0`  
		Last Modified: Wed, 27 Dec 2017 07:41:57 GMT  
		Size: 58.1 MB (58126376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86bc65762c86a0af00575314dd980d4ec6e31a49f0fbd681dbde0095d43ea53`  
		Last Modified: Wed, 27 Dec 2017 07:41:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782b1d3c16d8343fadbaf8abdcc3130b30f3890cff5b67309567a313b76bca58`  
		Last Modified: Wed, 27 Dec 2017 07:42:15 GMT  
		Size: 2.3 MB (2347350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d140b500a3da29a8c123a3bf5eb917a4d4c214a8afadc1864b7cc428ed433cc5`  
		Last Modified: Wed, 27 Dec 2017 07:42:29 GMT  
		Size: 78.6 MB (78616720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eea511902284b031b5d5a4c94dd1259247cf6759eafc9fb70e4ab19a4457aa8`  
		Last Modified: Wed, 27 Dec 2017 07:42:13 GMT  
		Size: 1.7 KB (1742 bytes)  
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
$ docker pull redmine@sha256:5d47614efe3fa8155190a7a1527a2eb7cbced2c0d198ed41dba67764f2dc0b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2.8-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9d7b8c51bc88b2d325d888a8b2c5c00b4f5a79eed7572174304d9c9196c897d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270197348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:897b846044889494b4f73ca477851bab4e4ba07c9f94cf0025c5cee03a509b8f`
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
# Wed, 27 Dec 2017 03:06:58 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 03:06:58 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Fri, 29 Dec 2017 02:13:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 02:16:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:16:24 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:16:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:16:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:16:25 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:16:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 29 Dec 2017 02:24:08 GMT
ENV PASSENGER_VERSION=5.1.12
# Fri, 29 Dec 2017 02:24:24 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:24:25 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 29 Dec 2017 02:24:25 GMT
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
	-	`sha256:7aa2a02d25d1b32f164272ec9899255eb39e72e03fbd6fb664e811ea6764cd0a`  
		Last Modified: Fri, 29 Dec 2017 02:30:40 GMT  
		Size: 2.3 MB (2347002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a48a29c2dae59ad486068e657931af6f0e82de146477544dacdc73c2495417`  
		Last Modified: Fri, 29 Dec 2017 02:30:53 GMT  
		Size: 78.5 MB (78477232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5b2eb984dc4c210c144961f8457d6482ab59ee52b084e790484169e5b31a1`  
		Last Modified: Fri, 29 Dec 2017 02:30:37 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793c7472c35cddc194b5e550eb2651f3a3a425db052abeecece39e868c12e629`  
		Last Modified: Fri, 29 Dec 2017 02:31:26 GMT  
		Size: 12.8 MB (12752592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecf8d9a18e8eea2df79bfdf067ec9810de793088c7c51ed535ff81bd4deaa41`  
		Last Modified: Fri, 29 Dec 2017 02:31:20 GMT  
		Size: 4.1 MB (4076918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.2-passenger`

```console
$ docker pull redmine@sha256:5d47614efe3fa8155190a7a1527a2eb7cbced2c0d198ed41dba67764f2dc0b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.2-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9d7b8c51bc88b2d325d888a8b2c5c00b4f5a79eed7572174304d9c9196c897d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.2 MB (270197348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:897b846044889494b4f73ca477851bab4e4ba07c9f94cf0025c5cee03a509b8f`
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
# Wed, 27 Dec 2017 03:06:58 GMT
ENV REDMINE_VERSION=3.2.8
# Wed, 27 Dec 2017 03:06:58 GMT
ENV REDMINE_DOWNLOAD_MD5=be469c1331ad2fcc4ba08df4bcff4fed
# Fri, 29 Dec 2017 02:13:58 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 02:16:24 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:16:24 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:16:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:16:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:16:25 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:16:25 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 29 Dec 2017 02:24:08 GMT
ENV PASSENGER_VERSION=5.1.12
# Fri, 29 Dec 2017 02:24:24 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:24:25 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 29 Dec 2017 02:24:25 GMT
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
	-	`sha256:7aa2a02d25d1b32f164272ec9899255eb39e72e03fbd6fb664e811ea6764cd0a`  
		Last Modified: Fri, 29 Dec 2017 02:30:40 GMT  
		Size: 2.3 MB (2347002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a48a29c2dae59ad486068e657931af6f0e82de146477544dacdc73c2495417`  
		Last Modified: Fri, 29 Dec 2017 02:30:53 GMT  
		Size: 78.5 MB (78477232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af5b2eb984dc4c210c144961f8457d6482ab59ee52b084e790484169e5b31a1`  
		Last Modified: Fri, 29 Dec 2017 02:30:37 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793c7472c35cddc194b5e550eb2651f3a3a425db052abeecece39e868c12e629`  
		Last Modified: Fri, 29 Dec 2017 02:31:26 GMT  
		Size: 12.8 MB (12752592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecf8d9a18e8eea2df79bfdf067ec9810de793088c7c51ed535ff81bd4deaa41`  
		Last Modified: Fri, 29 Dec 2017 02:31:20 GMT  
		Size: 4.1 MB (4076918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3`

```console
$ docker pull redmine@sha256:49e1948b7bf35eb0bd535e364bfd7e0faeb01bb75ee37cf303ac24a45daf634f
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
$ docker pull redmine@sha256:a42e94446d6fc1e79e49792ae5ff9ee78e036dc67f7da3307391ac12b8de6f39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253426767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8152353cfd5f6cb29d1be50ef7107414cb20449aac5bb937f155b9375b8fe5de`
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
# Wed, 27 Dec 2017 00:48:12 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 00:48:13 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Fri, 29 Dec 2017 02:04:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 02:06:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:12:43 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:12:43 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:12:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:12:44 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:12:44 GMT
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
	-	`sha256:2c5220646897af462a6ecfa255f5efaaa204d235ffb5dae8b162e3231cdadc1a`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 2.4 MB (2390749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f9ed198a302b96e95b115a74cf0e660572464e7bfd2a3c7a794bdf7f675bf5`  
		Last Modified: Fri, 29 Dec 2017 02:27:17 GMT  
		Size: 78.5 MB (78492411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3c850f6785f4201c475316d087bffef4665c543a959bec9f8ab3babb1ee22b`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:49c636f126a28fd4767bdb31ebc346ae73aa5c9b537fa08a93e080e467100b8d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245793463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f51df047aadf083e1d9aede99132c276781d13f57e2ec332ced935af53a81e`
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
# Sat, 16 Dec 2017 03:04:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 03:05:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 03:09:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 03:09:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 03:09:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 03:09:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 03:09:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 03:09:51 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:37:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:38:23 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:38:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:38:25 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:38:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:39:23 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:39:23 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:39:23 GMT
ENV REDMINE_VERSION=3.3.5
# Sun, 24 Dec 2017 03:39:23 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sun, 24 Dec 2017 03:39:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:43:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:43:51 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:43:52 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:43:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:43:52 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:43:52 GMT
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
	-	`sha256:c519fe92f3eda1dabe0e994c9a52efe27fdd3f99dcdfd1648427c5dc3ac3b694`  
		Last Modified: Sun, 24 Dec 2017 03:15:19 GMT  
		Size: 34.3 MB (34253874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f9482321d720d6588d02a519c69745b58518a743e78804bada786b23a408a`  
		Last Modified: Sun, 24 Dec 2017 03:15:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2045bbb124164a8766bdd3974317a845543b1309a376e914a900c189341787e5`  
		Last Modified: Sun, 24 Dec 2017 03:49:23 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58126d364d0cfe54e9001138304b1e27656edf71d70966ea740a0b906d6dd240`  
		Last Modified: Sun, 24 Dec 2017 03:49:26 GMT  
		Size: 14.3 MB (14347456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d50172d8f769cd754db8cc0b5e0f04a6a514f0467f3293ad842ee7042b27935`  
		Last Modified: Sun, 24 Dec 2017 03:49:21 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90717d106ef000304c5f1135a207e3a2e4202c7a406020585f6d0dde4bbd199`  
		Last Modified: Sun, 24 Dec 2017 03:49:21 GMT  
		Size: 7.8 KB (7845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21678c6f95c6f491fba96d9e613447d6298be158427c7a0e880f8973912e039`  
		Last Modified: Sun, 24 Dec 2017 03:49:38 GMT  
		Size: 56.6 MB (56603669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb2a7f16bc15a787fc739fe31401c8a7e10521497ff919e1a5bf5f5d29459df`  
		Last Modified: Sun, 24 Dec 2017 03:49:20 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b4d2131528a89f0992f89e4d2f2e7747547f9babe2f49c9c7bf78140fc5110`  
		Last Modified: Sun, 24 Dec 2017 03:49:20 GMT  
		Size: 2.4 MB (2391001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38782517d720b7c7b6aa2966abc96dc606579152a75586e12eb1ff9ada2c003e`  
		Last Modified: Sun, 24 Dec 2017 03:49:38 GMT  
		Size: 77.7 MB (77679088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efed97b2fe8b2df754a0d99510d3cea22c8d0a6d783c90f685d33a59d0a0ccd`  
		Last Modified: Sun, 24 Dec 2017 03:49:18 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:c284bbd85a0dd85e9d45323482150fc695abaa1199fd5526600c12b22e40d8a5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (240001342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27cbe6a426479f703309a8c079aff086b706f58c4288002913266fe3a9f763fa`
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
# Wed, 27 Dec 2017 02:54:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 02:54:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 02:54:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 02:54:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 02:55:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 02:55:01 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:35:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:35:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:35:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:35:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:35:45 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:35:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:36:42 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:36:43 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 05:36:43 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 05:36:43 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 27 Dec 2017 07:19:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:23:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:23:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:23:41 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:23:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:23:42 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:23:42 GMT
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
	-	`sha256:8f67c3700d1fb1b8b789bb0123a3ae5ad84dbbb448a1c6b3e1ff40a39b0b1f69`  
		Last Modified: Wed, 27 Dec 2017 03:00:17 GMT  
		Size: 34.0 MB (34038725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71df5c73004b46e037f6404944bbd3c6e8f12af77979f949c6e32d462eea5121`  
		Last Modified: Wed, 27 Dec 2017 03:00:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf54000ab1cb790b2f2a0af8d16deee18fc6efae06a8c4efa537576a9e77668`  
		Last Modified: Wed, 27 Dec 2017 07:28:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb4354caba5bb72822f3c91a4678f874dc3a436def81c016d2401b1924d1c6b`  
		Last Modified: Wed, 27 Dec 2017 07:28:44 GMT  
		Size: 14.1 MB (14134514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38ea5489d42fe59d8b23294414ba582b1f7507280415d841db923a5b5d6fc73`  
		Last Modified: Wed, 27 Dec 2017 07:28:39 GMT  
		Size: 475.3 KB (475265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c5126fdcf1c3f02dbbc7e9e5101c8f46e1a7a2cd7ce928a05f0193a82aca1d`  
		Last Modified: Wed, 27 Dec 2017 07:28:38 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc9768d5a4752fb9724f1284738a99692a8b2358acf69ded17ccf137123ec49`  
		Last Modified: Wed, 27 Dec 2017 07:28:54 GMT  
		Size: 54.3 MB (54344716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3a6f199cd05d10b2b43ba85c73d503e0116372a973b3eef1cf6fffc78a2ac4`  
		Last Modified: Wed, 27 Dec 2017 07:28:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34668d2e51873f72e2ed0b21addeacebceac7fb3c3b37c2641699fe04a6b2c13`  
		Last Modified: Wed, 27 Dec 2017 07:28:39 GMT  
		Size: 2.4 MB (2391005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc250912e82db18553382a4bb0d3c47155336244cd5f39fb248a00416e60e96`  
		Last Modified: Wed, 27 Dec 2017 07:28:56 GMT  
		Size: 77.1 MB (77129546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5152276c061d5c16a261a6ad2c6b518eb462ebf3194dd707ac63e071a8e633`  
		Last Modified: Wed, 27 Dec 2017 07:28:37 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:1e958155f7c7d78f33261abc8e1477d49aadf6d135284aa57b8bc99471e53fc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245593729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79580551cb533eb87972f19128519996c7cebb6870612c23f34ae34ff24ff884`
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
# Sat, 16 Dec 2017 08:11:00 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 23:05:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 23:12:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 23:12:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 23:12:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 23:12:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 23:12:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 23:12:47 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:52:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:53:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:53:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:53:35 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:53:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:55:48 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:55:49 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 23:55:49 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 23 Dec 2017 23:55:50 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 23 Dec 2017 23:55:55 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 00:06:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 00:06:24 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 00:06:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 00:06:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 00:06:26 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 00:06:27 GMT
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
	-	`sha256:e9d549db89f24d386d2b1d1474b8a876d065f9ff7da79f55dbf71714f122f73e`  
		Last Modified: Sat, 23 Dec 2017 23:25:03 GMT  
		Size: 35.5 MB (35470235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb677abcdc25528546a189ddb65e0272d8312b3e0384c3453d2e7060cb33dabb`  
		Last Modified: Sat, 23 Dec 2017 23:24:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a90726735e68c5f7e7f535a5e62b79f109ab70b15ba7dbbf02f414a6fcec42`  
		Last Modified: Sun, 24 Dec 2017 00:17:24 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a09a572bf537aa0c86d55fa6013feb17b3177cbb25136c06f7fa528b3a0a8`  
		Last Modified: Sun, 24 Dec 2017 00:17:29 GMT  
		Size: 14.5 MB (14462690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6617bf3885a5b5aa5c6fe8ba6bee6a26920607186a5029686bf94e82ffd3fb`  
		Last Modified: Sun, 24 Dec 2017 00:17:23 GMT  
		Size: 468.7 KB (468700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d878d582f32119ef6b431001b9df4ff1693338ca007be42158b85840410482`  
		Last Modified: Sun, 24 Dec 2017 00:17:22 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802e046497405156f05c59ce96cb48e65a977b47962bced1b2264255a04db379`  
		Last Modified: Sun, 24 Dec 2017 00:17:42 GMT  
		Size: 55.8 MB (55785128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4908b4191441d3c883e1e5c7544529053b3bd585430b8391e1ed5ff512f6b7c`  
		Last Modified: Sun, 24 Dec 2017 00:17:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa48c6d8ddddf601cf8afb42524fcc4c50a8a8c55aeaa5532d1e439a42bfa08`  
		Last Modified: Sun, 24 Dec 2017 00:17:22 GMT  
		Size: 2.4 MB (2390747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5371c34aefa05ed97010d95d9ecc8839ff6e743456ae62d5f99fc9535b5091`  
		Last Modified: Sun, 24 Dec 2017 00:17:43 GMT  
		Size: 77.7 MB (77722084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224d7bd2c0ebdd0b4fd0ae89db2545c9b855032f98df917d36f4978a0702262c`  
		Last Modified: Sun, 24 Dec 2017 00:17:20 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; 386

```console
$ docker pull redmine@sha256:933a3805f9d6f6421bbda0660467a12488dbdc7c8b02e995cf6c58793e575b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255815007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60581217e2863f074e4c201abaf17f3195ed568c5bedadc97af862c4c4819675`
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
# Wed, 27 Dec 2017 07:32:11 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 07:32:11 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 27 Dec 2017 07:32:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:35:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:35:19 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:35:20 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:35:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:35:20 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:35:20 GMT
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
	-	`sha256:aeb7d7fc722d646fceac1499f17e61cfcf1d33082fe6721f1a6d947d01292a60`  
		Last Modified: Wed, 27 Dec 2017 07:59:02 GMT  
		Size: 2.4 MB (2390739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd94595dd0d46b67ace20e85528d09df7b5c8d7ff2e0436d0d99a5d0c9e315f`  
		Last Modified: Wed, 27 Dec 2017 07:59:23 GMT  
		Size: 77.7 MB (77744362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2d8d671c926f43560de3092d8aec10b25c8c600dda3c972801286ee45f9c92`  
		Last Modified: Wed, 27 Dec 2017 07:58:56 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:3c96c25b8415011ae2d0c9a2fe638eb3ca32c5334ba86796c24dd242b712ff09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252670574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1330e4dd0593172460ae09ed260c52915a5ab1d4899acb05ff3ea109024a6045`
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
# Wed, 27 Dec 2017 02:33:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 02:33:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 02:33:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 02:33:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 02:33:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 02:34:00 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:18:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:19:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:19:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:19:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:19:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:23:04 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:23:05 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 05:23:06 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 05:23:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 27 Dec 2017 07:19:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:30:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:30:28 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:30:29 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:30:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:30:34 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:30:35 GMT
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
	-	`sha256:c76c6231f2277936b51e4a77b1a937c5c5b785c6d755ad3dce7e101d4c9c7229`  
		Last Modified: Wed, 27 Dec 2017 02:42:06 GMT  
		Size: 36.3 MB (36346322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4485b0d51f021f829e799cf0af619e8eb3526c5381e30b92691137d1e4a4a4`  
		Last Modified: Wed, 27 Dec 2017 02:41:53 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98907d0165103b75c323fd62b0e3cb6eee3eb9ffa70afeab7d9f48e965de707`  
		Last Modified: Wed, 27 Dec 2017 07:41:47 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9983651f1353ab6d487e25160019df9c63ad280628a666d09cb318f78335b46`  
		Last Modified: Wed, 27 Dec 2017 07:41:49 GMT  
		Size: 14.7 MB (14720172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557d8a08c7707cb3a33cee2d022a522d0a9b4c7116d9838ee77cdf626ce5af5e`  
		Last Modified: Wed, 27 Dec 2017 07:41:45 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856eee0bd1e3c18f923cf8f66a5db28c7eea75cdf6e03ccb745b89a673a5d6f6`  
		Last Modified: Wed, 27 Dec 2017 07:41:44 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230dfee5e974f5391f1c7bcd4453b6fae279cc05108c787615566b2646336ef0`  
		Last Modified: Wed, 27 Dec 2017 07:41:57 GMT  
		Size: 58.1 MB (58126376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86bc65762c86a0af00575314dd980d4ec6e31a49f0fbd681dbde0095d43ea53`  
		Last Modified: Wed, 27 Dec 2017 07:41:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf713701f06c3256f72e3179228af7a2203f769386812794560056fadcb0da04`  
		Last Modified: Wed, 27 Dec 2017 07:41:43 GMT  
		Size: 2.4 MB (2391006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61297be145cf3d6767d475da341a038824874aef33752c11d4e81f1b4e5d5580`  
		Last Modified: Wed, 27 Dec 2017 07:41:58 GMT  
		Size: 78.6 MB (78638777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a1c221f5fce70a9d11d0d21de7d73e56d4bab26eb78494673b33c8b9b18961`  
		Last Modified: Wed, 27 Dec 2017 07:41:42 GMT  
		Size: 1.7 KB (1742 bytes)  
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
$ docker pull redmine@sha256:49e1948b7bf35eb0bd535e364bfd7e0faeb01bb75ee37cf303ac24a45daf634f
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
$ docker pull redmine@sha256:a42e94446d6fc1e79e49792ae5ff9ee78e036dc67f7da3307391ac12b8de6f39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.4 MB (253426767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8152353cfd5f6cb29d1be50ef7107414cb20449aac5bb937f155b9375b8fe5de`
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
# Wed, 27 Dec 2017 00:48:12 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 00:48:13 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Fri, 29 Dec 2017 02:04:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 02:06:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:12:43 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:12:43 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:12:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:12:44 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:12:44 GMT
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
	-	`sha256:2c5220646897af462a6ecfa255f5efaaa204d235ffb5dae8b162e3231cdadc1a`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 2.4 MB (2390749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f9ed198a302b96e95b115a74cf0e660572464e7bfd2a3c7a794bdf7f675bf5`  
		Last Modified: Fri, 29 Dec 2017 02:27:17 GMT  
		Size: 78.5 MB (78492411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3c850f6785f4201c475316d087bffef4665c543a959bec9f8ab3babb1ee22b`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v5

```console
$ docker pull redmine@sha256:49c636f126a28fd4767bdb31ebc346ae73aa5c9b537fa08a93e080e467100b8d
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.8 MB (245793463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f51df047aadf083e1d9aede99132c276781d13f57e2ec332ced935af53a81e`
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
# Sat, 16 Dec 2017 03:04:41 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 03:05:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 03:09:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 03:09:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 03:09:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 03:09:50 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 03:09:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 03:09:51 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:37:50 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:38:23 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:38:25 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:38:25 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:38:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:39:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:39:23 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:39:23 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:39:23 GMT
ENV REDMINE_VERSION=3.3.5
# Sun, 24 Dec 2017 03:39:23 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sun, 24 Dec 2017 03:39:27 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:43:50 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:43:51 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:43:52 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:43:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:43:52 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:43:52 GMT
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
	-	`sha256:c519fe92f3eda1dabe0e994c9a52efe27fdd3f99dcdfd1648427c5dc3ac3b694`  
		Last Modified: Sun, 24 Dec 2017 03:15:19 GMT  
		Size: 34.3 MB (34253874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724f9482321d720d6588d02a519c69745b58518a743e78804bada786b23a408a`  
		Last Modified: Sun, 24 Dec 2017 03:15:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2045bbb124164a8766bdd3974317a845543b1309a376e914a900c189341787e5`  
		Last Modified: Sun, 24 Dec 2017 03:49:23 GMT  
		Size: 2.1 KB (2085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58126d364d0cfe54e9001138304b1e27656edf71d70966ea740a0b906d6dd240`  
		Last Modified: Sun, 24 Dec 2017 03:49:26 GMT  
		Size: 14.3 MB (14347456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d50172d8f769cd754db8cc0b5e0f04a6a514f0467f3293ad842ee7042b27935`  
		Last Modified: Sun, 24 Dec 2017 03:49:21 GMT  
		Size: 491.1 KB (491125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90717d106ef000304c5f1135a207e3a2e4202c7a406020585f6d0dde4bbd199`  
		Last Modified: Sun, 24 Dec 2017 03:49:21 GMT  
		Size: 7.8 KB (7845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21678c6f95c6f491fba96d9e613447d6298be158427c7a0e880f8973912e039`  
		Last Modified: Sun, 24 Dec 2017 03:49:38 GMT  
		Size: 56.6 MB (56603669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb2a7f16bc15a787fc739fe31401c8a7e10521497ff919e1a5bf5f5d29459df`  
		Last Modified: Sun, 24 Dec 2017 03:49:20 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b4d2131528a89f0992f89e4d2f2e7747547f9babe2f49c9c7bf78140fc5110`  
		Last Modified: Sun, 24 Dec 2017 03:49:20 GMT  
		Size: 2.4 MB (2391001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38782517d720b7c7b6aa2966abc96dc606579152a75586e12eb1ff9ada2c003e`  
		Last Modified: Sun, 24 Dec 2017 03:49:38 GMT  
		Size: 77.7 MB (77679088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efed97b2fe8b2df754a0d99510d3cea22c8d0a6d783c90f685d33a59d0a0ccd`  
		Last Modified: Sun, 24 Dec 2017 03:49:18 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm variant v7

```console
$ docker pull redmine@sha256:c284bbd85a0dd85e9d45323482150fc695abaa1199fd5526600c12b22e40d8a5
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.0 MB (240001342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27cbe6a426479f703309a8c079aff086b706f58c4288002913266fe3a9f763fa`
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
# Wed, 27 Dec 2017 02:54:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 02:54:59 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 02:54:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 02:54:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 02:55:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 02:55:01 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:35:10 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:35:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:35:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:35:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:35:45 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:35:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:36:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:36:42 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:36:43 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 05:36:43 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 05:36:43 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 27 Dec 2017 07:19:19 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:23:40 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:23:41 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:23:41 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:23:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:23:42 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:23:42 GMT
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
	-	`sha256:8f67c3700d1fb1b8b789bb0123a3ae5ad84dbbb448a1c6b3e1ff40a39b0b1f69`  
		Last Modified: Wed, 27 Dec 2017 03:00:17 GMT  
		Size: 34.0 MB (34038725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71df5c73004b46e037f6404944bbd3c6e8f12af77979f949c6e32d462eea5121`  
		Last Modified: Wed, 27 Dec 2017 03:00:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf54000ab1cb790b2f2a0af8d16deee18fc6efae06a8c4efa537576a9e77668`  
		Last Modified: Wed, 27 Dec 2017 07:28:40 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bb4354caba5bb72822f3c91a4678f874dc3a436def81c016d2401b1924d1c6b`  
		Last Modified: Wed, 27 Dec 2017 07:28:44 GMT  
		Size: 14.1 MB (14134514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38ea5489d42fe59d8b23294414ba582b1f7507280415d841db923a5b5d6fc73`  
		Last Modified: Wed, 27 Dec 2017 07:28:39 GMT  
		Size: 475.3 KB (475265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c5126fdcf1c3f02dbbc7e9e5101c8f46e1a7a2cd7ce928a05f0193a82aca1d`  
		Last Modified: Wed, 27 Dec 2017 07:28:38 GMT  
		Size: 7.3 KB (7307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc9768d5a4752fb9724f1284738a99692a8b2358acf69ded17ccf137123ec49`  
		Last Modified: Wed, 27 Dec 2017 07:28:54 GMT  
		Size: 54.3 MB (54344716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3a6f199cd05d10b2b43ba85c73d503e0116372a973b3eef1cf6fffc78a2ac4`  
		Last Modified: Wed, 27 Dec 2017 07:28:37 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34668d2e51873f72e2ed0b21addeacebceac7fb3c3b37c2641699fe04a6b2c13`  
		Last Modified: Wed, 27 Dec 2017 07:28:39 GMT  
		Size: 2.4 MB (2391005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc250912e82db18553382a4bb0d3c47155336244cd5f39fb248a00416e60e96`  
		Last Modified: Wed, 27 Dec 2017 07:28:56 GMT  
		Size: 77.1 MB (77129546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5152276c061d5c16a261a6ad2c6b518eb462ebf3194dd707ac63e071a8e633`  
		Last Modified: Wed, 27 Dec 2017 07:28:37 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:1e958155f7c7d78f33261abc8e1477d49aadf6d135284aa57b8bc99471e53fc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245593729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79580551cb533eb87972f19128519996c7cebb6870612c23f34ae34ff24ff884`
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
# Sat, 16 Dec 2017 08:11:00 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 23:05:26 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 23:12:42 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 23:12:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 23:12:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 23:12:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 23:12:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 23:12:47 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:52:59 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:53:29 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:53:34 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:53:35 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:53:38 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:55:48 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:55:49 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 23:55:49 GMT
ENV REDMINE_VERSION=3.3.5
# Sat, 23 Dec 2017 23:55:50 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Sat, 23 Dec 2017 23:55:55 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 00:06:22 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 00:06:24 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 00:06:25 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 00:06:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 00:06:26 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 00:06:27 GMT
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
	-	`sha256:e9d549db89f24d386d2b1d1474b8a876d065f9ff7da79f55dbf71714f122f73e`  
		Last Modified: Sat, 23 Dec 2017 23:25:03 GMT  
		Size: 35.5 MB (35470235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb677abcdc25528546a189ddb65e0272d8312b3e0384c3453d2e7060cb33dabb`  
		Last Modified: Sat, 23 Dec 2017 23:24:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a90726735e68c5f7e7f535a5e62b79f109ab70b15ba7dbbf02f414a6fcec42`  
		Last Modified: Sun, 24 Dec 2017 00:17:24 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603a09a572bf537aa0c86d55fa6013feb17b3177cbb25136c06f7fa528b3a0a8`  
		Last Modified: Sun, 24 Dec 2017 00:17:29 GMT  
		Size: 14.5 MB (14462690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6617bf3885a5b5aa5c6fe8ba6bee6a26920607186a5029686bf94e82ffd3fb`  
		Last Modified: Sun, 24 Dec 2017 00:17:23 GMT  
		Size: 468.7 KB (468700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d878d582f32119ef6b431001b9df4ff1693338ca007be42158b85840410482`  
		Last Modified: Sun, 24 Dec 2017 00:17:22 GMT  
		Size: 8.2 KB (8150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802e046497405156f05c59ce96cb48e65a977b47962bced1b2264255a04db379`  
		Last Modified: Sun, 24 Dec 2017 00:17:42 GMT  
		Size: 55.8 MB (55785128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4908b4191441d3c883e1e5c7544529053b3bd585430b8391e1ed5ff512f6b7c`  
		Last Modified: Sun, 24 Dec 2017 00:17:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa48c6d8ddddf601cf8afb42524fcc4c50a8a8c55aeaa5532d1e439a42bfa08`  
		Last Modified: Sun, 24 Dec 2017 00:17:22 GMT  
		Size: 2.4 MB (2390747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5371c34aefa05ed97010d95d9ecc8839ff6e743456ae62d5f99fc9535b5091`  
		Last Modified: Sun, 24 Dec 2017 00:17:43 GMT  
		Size: 77.7 MB (77722084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224d7bd2c0ebdd0b4fd0ae89db2545c9b855032f98df917d36f4978a0702262c`  
		Last Modified: Sun, 24 Dec 2017 00:17:20 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; 386

```console
$ docker pull redmine@sha256:933a3805f9d6f6421bbda0660467a12488dbdc7c8b02e995cf6c58793e575b77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.8 MB (255815007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60581217e2863f074e4c201abaf17f3195ed568c5bedadc97af862c4c4819675`
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
# Wed, 27 Dec 2017 07:32:11 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 07:32:11 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 27 Dec 2017 07:32:15 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:35:19 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:35:19 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:35:20 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:35:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:35:20 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:35:20 GMT
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
	-	`sha256:aeb7d7fc722d646fceac1499f17e61cfcf1d33082fe6721f1a6d947d01292a60`  
		Last Modified: Wed, 27 Dec 2017 07:59:02 GMT  
		Size: 2.4 MB (2390739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd94595dd0d46b67ace20e85528d09df7b5c8d7ff2e0436d0d99a5d0c9e315f`  
		Last Modified: Wed, 27 Dec 2017 07:59:23 GMT  
		Size: 77.7 MB (77744362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2d8d671c926f43560de3092d8aec10b25c8c600dda3c972801286ee45f9c92`  
		Last Modified: Wed, 27 Dec 2017 07:58:56 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.3.5` - linux; ppc64le

```console
$ docker pull redmine@sha256:3c96c25b8415011ae2d0c9a2fe638eb3ca32c5334ba86796c24dd242b712ff09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252670574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1330e4dd0593172460ae09ed260c52915a5ab1d4899acb05ff3ea109024a6045`
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
# Wed, 27 Dec 2017 02:33:52 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 27 Dec 2017 02:33:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 27 Dec 2017 02:33:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 27 Dec 2017 02:33:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Dec 2017 02:33:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 27 Dec 2017 02:34:00 GMT
CMD ["irb"]
# Wed, 27 Dec 2017 05:18:57 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Wed, 27 Dec 2017 05:19:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:19:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Dec 2017 05:19:40 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Wed, 27 Dec 2017 05:19:41 GMT
ENV TINI_VERSION=v0.16.1
# Wed, 27 Dec 2017 05:19:46 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Wed, 27 Dec 2017 05:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Dec 2017 05:23:04 GMT
ENV RAILS_ENV=production
# Wed, 27 Dec 2017 05:23:05 GMT
WORKDIR /usr/src/redmine
# Wed, 27 Dec 2017 05:23:06 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 05:23:08 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Wed, 27 Dec 2017 07:19:45 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:30:26 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:30:28 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:30:29 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:30:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:30:34 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:30:35 GMT
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
	-	`sha256:c76c6231f2277936b51e4a77b1a937c5c5b785c6d755ad3dce7e101d4c9c7229`  
		Last Modified: Wed, 27 Dec 2017 02:42:06 GMT  
		Size: 36.3 MB (36346322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4485b0d51f021f829e799cf0af619e8eb3526c5381e30b92691137d1e4a4a4`  
		Last Modified: Wed, 27 Dec 2017 02:41:53 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98907d0165103b75c323fd62b0e3cb6eee3eb9ffa70afeab7d9f48e965de707`  
		Last Modified: Wed, 27 Dec 2017 07:41:47 GMT  
		Size: 2.1 KB (2101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9983651f1353ab6d487e25160019df9c63ad280628a666d09cb318f78335b46`  
		Last Modified: Wed, 27 Dec 2017 07:41:49 GMT  
		Size: 14.7 MB (14720172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:557d8a08c7707cb3a33cee2d022a522d0a9b4c7116d9838ee77cdf626ce5af5e`  
		Last Modified: Wed, 27 Dec 2017 07:41:45 GMT  
		Size: 469.8 KB (469847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856eee0bd1e3c18f923cf8f66a5db28c7eea75cdf6e03ccb745b89a673a5d6f6`  
		Last Modified: Wed, 27 Dec 2017 07:41:44 GMT  
		Size: 8.6 KB (8640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230dfee5e974f5391f1c7bcd4453b6fae279cc05108c787615566b2646336ef0`  
		Last Modified: Wed, 27 Dec 2017 07:41:57 GMT  
		Size: 58.1 MB (58126376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86bc65762c86a0af00575314dd980d4ec6e31a49f0fbd681dbde0095d43ea53`  
		Last Modified: Wed, 27 Dec 2017 07:41:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf713701f06c3256f72e3179228af7a2203f769386812794560056fadcb0da04`  
		Last Modified: Wed, 27 Dec 2017 07:41:43 GMT  
		Size: 2.4 MB (2391006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61297be145cf3d6767d475da341a038824874aef33752c11d4e81f1b4e5d5580`  
		Last Modified: Wed, 27 Dec 2017 07:41:58 GMT  
		Size: 78.6 MB (78638777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a1c221f5fce70a9d11d0d21de7d73e56d4bab26eb78494673b33c8b9b18961`  
		Last Modified: Wed, 27 Dec 2017 07:41:42 GMT  
		Size: 1.7 KB (1742 bytes)  
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
$ docker pull redmine@sha256:f738e8b8921b43885b07b0502f79e48c9556d924d5671a2fb531dba0a4c8d9eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3.5-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:80732f712e66eff3acf4cca0f25f31636dc17e0b5175a09fac911f0d22114710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270255334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5851f8113e4233d604b76dde7597ba086c6914704875055d4f54f61f4832c860`
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
# Wed, 27 Dec 2017 00:48:12 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 00:48:13 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Fri, 29 Dec 2017 02:04:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 02:06:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:12:43 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:12:43 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:12:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:12:44 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:12:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 29 Dec 2017 02:13:04 GMT
ENV PASSENGER_VERSION=5.1.12
# Fri, 29 Dec 2017 02:13:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:13:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 29 Dec 2017 02:13:30 GMT
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
	-	`sha256:2c5220646897af462a6ecfa255f5efaaa204d235ffb5dae8b162e3231cdadc1a`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 2.4 MB (2390749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f9ed198a302b96e95b115a74cf0e660572464e7bfd2a3c7a794bdf7f675bf5`  
		Last Modified: Fri, 29 Dec 2017 02:27:17 GMT  
		Size: 78.5 MB (78492411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3c850f6785f4201c475316d087bffef4665c543a959bec9f8ab3babb1ee22b`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49470b99bc546984fce4ae2d74799bb630c65fb150c9bc0030983c2d47206c2f`  
		Last Modified: Fri, 29 Dec 2017 02:30:12 GMT  
		Size: 12.8 MB (12751636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eee2aa8fbfb13f5abd1677388a7317eaa4d91974797bee8b6e6e2aa924ce11`  
		Last Modified: Fri, 29 Dec 2017 02:30:08 GMT  
		Size: 4.1 MB (4076931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.3-passenger`

```console
$ docker pull redmine@sha256:f738e8b8921b43885b07b0502f79e48c9556d924d5671a2fb531dba0a4c8d9eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:80732f712e66eff3acf4cca0f25f31636dc17e0b5175a09fac911f0d22114710
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270255334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5851f8113e4233d604b76dde7597ba086c6914704875055d4f54f61f4832c860`
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
# Wed, 27 Dec 2017 00:48:12 GMT
ENV REDMINE_VERSION=3.3.5
# Wed, 27 Dec 2017 00:48:13 GMT
ENV REDMINE_DOWNLOAD_MD5=e9ce2c935f4ada5c7d3c5cdfa96fe986
# Fri, 29 Dec 2017 02:04:14 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 02:06:23 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:12:43 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:12:43 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:12:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:12:44 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:12:44 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 29 Dec 2017 02:13:04 GMT
ENV PASSENGER_VERSION=5.1.12
# Fri, 29 Dec 2017 02:13:21 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:13:22 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 29 Dec 2017 02:13:30 GMT
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
	-	`sha256:2c5220646897af462a6ecfa255f5efaaa204d235ffb5dae8b162e3231cdadc1a`  
		Last Modified: Fri, 29 Dec 2017 02:27:01 GMT  
		Size: 2.4 MB (2390749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f9ed198a302b96e95b115a74cf0e660572464e7bfd2a3c7a794bdf7f675bf5`  
		Last Modified: Fri, 29 Dec 2017 02:27:17 GMT  
		Size: 78.5 MB (78492411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3c850f6785f4201c475316d087bffef4665c543a959bec9f8ab3babb1ee22b`  
		Last Modified: Fri, 29 Dec 2017 02:26:58 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49470b99bc546984fce4ae2d74799bb630c65fb150c9bc0030983c2d47206c2f`  
		Last Modified: Fri, 29 Dec 2017 02:30:12 GMT  
		Size: 12.8 MB (12751636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eee2aa8fbfb13f5abd1677388a7317eaa4d91974797bee8b6e6e2aa924ce11`  
		Last Modified: Fri, 29 Dec 2017 02:30:08 GMT  
		Size: 4.1 MB (4076931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4`

```console
$ docker pull redmine@sha256:da23d1fc9693258f42ad6875e93ce4a3880ef3a8ec8ebe8b4e317cad6ff596df
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
$ docker pull redmine@sha256:6100e93f0ded37e83ec9cc9693f7dc65bbfa28017bf245d794e37d5457d18809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242229468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3909e962e03cb5bd3b9af5a1fbb999c6a5a86abf5ba412671ec93d8f898b9964`
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
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Fri, 29 Dec 2017 01:53:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 01:56:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:02:51 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:02:52 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:02:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:02:52 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:02:52 GMT
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
	-	`sha256:7f7061cf6ad952ab7f4b74e5e381bfcd79c1a86b12420d375dea98747bf4b28a`  
		Last Modified: Fri, 29 Dec 2017 02:24:44 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d07af14ecdc768da4fdcb08ce7c9d01d8a4fd0a85a0b3bbc14eaa656f7a0eb0`  
		Last Modified: Fri, 29 Dec 2017 02:24:59 GMT  
		Size: 77.8 MB (77819821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f9d8a482ef18260adb7fb2412501905da3482ca50c1d1888fc583144350e33`  
		Last Modified: Fri, 29 Dec 2017 02:24:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a61ac31acc1e95058816393f0abb099d3fa7381ded3949c8a09fbfe7e2d8b45c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235394788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:098f16489e3b62bf6ae712cd21b5b71678334508d18dae0d34bf217eddd53c5c`
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
# Sat, 16 Dec 2017 02:44:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:44:56 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:51:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:51:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:51:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:51:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:51:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:51:14 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:31:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:31:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:31:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:31:45 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:31:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:32:52 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:32:52 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:32:52 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:32:52 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:32:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:37:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:37:39 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:37:39 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:37:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:37:40 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:37:40 GMT
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
	-	`sha256:74d3669a8d6dbafc06ec22e3a04c6d60b413016eba2dc63f9661bd6276c5ae0a`  
		Last Modified: Sun, 24 Dec 2017 03:12:51 GMT  
		Size: 24.5 MB (24507413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d742550f19c715ed4e2b76dec69dffd1c1c8e4495cef8d5ab447fa6a1d4da1`  
		Last Modified: Sun, 24 Dec 2017 03:12:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49f0e788d909e36ff37439e0506a010cf47f8bd9d85669b2d53a85623b024c`  
		Last Modified: Sun, 24 Dec 2017 03:48:44 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ac27975a90a42a722bf5feff315b38a792399286ce783cd7ff689fa12504a0`  
		Last Modified: Sun, 24 Dec 2017 03:48:48 GMT  
		Size: 14.3 MB (14347449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc970ff2d7a066b4272b737bc55ef7bbeb72a28e8537131763a3eb64135310fd`  
		Last Modified: Sun, 24 Dec 2017 03:48:43 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43231d654529dda4a0d474c66ae688d301229a6bb90c324b81bfe76402d2b6d0`  
		Last Modified: Sun, 24 Dec 2017 03:48:42 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e2a16e7ea20ae3e23c9439cc5340be000fef064bfc73087e345ba86de10831`  
		Last Modified: Sun, 24 Dec 2017 03:49:00 GMT  
		Size: 56.6 MB (56603784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592c6d07e02ee6d10749feb18b7f281f9dd9601e20a76026ce9382e74fbfc3d`  
		Last Modified: Sun, 24 Dec 2017 03:48:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2a274d4dc09af7ad1c10b243e198c95508d9b52e51f466490baec281d9aeff`  
		Last Modified: Sun, 24 Dec 2017 03:48:43 GMT  
		Size: 2.5 MB (2450383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f995f8268525db856b1d2dcd9caf9a08390ed214314d306129d23d318e9ea75`  
		Last Modified: Sun, 24 Dec 2017 03:49:01 GMT  
		Size: 77.0 MB (76967391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c23fb73b2038f79c20a5b1a05e5e33cff47201b7eb7c9e6ff068463499a72f`  
		Last Modified: Sun, 24 Dec 2017 03:48:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm variant v7

```console
$ docker pull redmine@sha256:a8971907cd6b09ed45acf6c2ecab1623ede108f82bbd4c4a5f8721403b82fde9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229703771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d6fda3fb87d714e121cd2e9b07851748b7a1a537823f69daaf376d1cf171a9`
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
# Sat, 16 Dec 2017 02:32:50 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:32:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:38:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:38:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:38:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:38:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:38:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:38:18 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:17:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:17:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:17:58 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:18:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:18:00 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:18:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:18:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:18:59 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:18:59 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:18:59 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:19:00 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:23:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:23:17 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:23:17 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:23:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:23:18 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:23:18 GMT
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
	-	`sha256:ce9a79e99be8b64d17842504badce751f44f82dd7fcb6394708f69c6c9bb44df`  
		Last Modified: Sun, 24 Dec 2017 02:58:59 GMT  
		Size: 24.4 MB (24372154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e6be2e75a64e644e002ab9a96c11f27e9f7e418b39ea2e546b77588dac3576`  
		Last Modified: Sun, 24 Dec 2017 02:58:50 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65122e7ac4a8cbb82fe76a27b2ec946d0b86c9603a044c95236949886d04da45`  
		Last Modified: Sun, 24 Dec 2017 03:34:11 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c7d56a00700dd16f67718374df7552f5680dbf80551e5ac028ef11892b0fc6`  
		Last Modified: Sun, 24 Dec 2017 03:34:13 GMT  
		Size: 14.1 MB (14134526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a097ae12f705eaeb758d6ff8a971ad82f4b412959e935df9eeb4a80b552897`  
		Last Modified: Sun, 24 Dec 2017 03:34:10 GMT  
		Size: 475.3 KB (475263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a08166f4302e7c2edd5efee52a222e987abc908e511077c7fde34cb664b5daf`  
		Last Modified: Sun, 24 Dec 2017 03:34:09 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffc820192155eed360cd11a15810c87df29aae7b9b9a4fa7a9aeab048dd6e52`  
		Last Modified: Sun, 24 Dec 2017 03:34:25 GMT  
		Size: 54.3 MB (54344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85476551c859ebf4716c34db2af784b24c5bffb9abfdd9268413e0905a8b3cef`  
		Last Modified: Sun, 24 Dec 2017 03:34:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fee101079177d721067918caf37b303edad90a304475f8ef127db5326aac1`  
		Last Modified: Sun, 24 Dec 2017 03:34:10 GMT  
		Size: 2.5 MB (2450395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d09195401dc8654dfc23927dd8413d651749fc2aef90b830a5b2e71f69ae90`  
		Last Modified: Sun, 24 Dec 2017 03:34:26 GMT  
		Size: 76.4 MB (76439000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22c79ae00d0680ea371b88180dbbb2c5752dd6d82fa5a508ef642b512f658d`  
		Last Modified: Sun, 24 Dec 2017 03:34:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b17a0f9257a6948dc53913c9b803eb05d507882214432c18f7a6fd20499a4523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234187855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757c61dea8c6ced66debc13be112ff6c3e209779244b73f7bcb27c7cc39a4eb4`
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
# Sat, 16 Dec 2017 07:25:38 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 22:20:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 22:29:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 22:29:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 22:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 22:29:42 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:41:48 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:41:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:41:53 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:41:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:43:42 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:43:43 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 23:43:43 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 23:43:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 23:43:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 23:52:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 23:52:35 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 23:52:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 23:52:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 23:52:37 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 23:52:38 GMT
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
	-	`sha256:8673c51c001a9bf984638ff32ca9b69fa55a922346ec362712f527ef8e90e004`  
		Last Modified: Sat, 23 Dec 2017 23:18:55 GMT  
		Size: 24.7 MB (24690330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312aafa818a3dfc76b9218fd4ca103e51b3a22b7f2b54eed603e2c8681819a14`  
		Last Modified: Sat, 23 Dec 2017 23:18:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0f66ef40a62d6b4a4dedc2cb19d378d137333c9d381fc1cd6ed8cb4a4c58eb`  
		Last Modified: Sun, 24 Dec 2017 00:16:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc4aff65cbd5771a1380192a68b0e8d8a8c4fa75d03bdb9dddb81b9d609ea`  
		Last Modified: Sun, 24 Dec 2017 00:16:32 GMT  
		Size: 14.5 MB (14462615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3f2e8c9e1fbc6c4eadd4a743a4983504129bce2f5075ccb02f5c4a0630f79`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727fe3851448999b0543d69f71c0028d2c5ae5ea53638fa8a27c675422bf8a7a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f6c5c343c2354301d6c766b2f7617190aba81d8b02f09a04003cd694d1cf13`  
		Last Modified: Sun, 24 Dec 2017 00:16:44 GMT  
		Size: 55.8 MB (55784093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fb5b33bc1a9f117df393b3a1e3ea4648faf0bf79be03ecc0077b454e75878`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabb1abccd026bf5fba3d080bdc7787892e69773bbe8edcb12c78160a80079a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c655ead65d625ac898875e056beb27e00ac5a3016e5e12169134dab1bf36b889`  
		Last Modified: Sun, 24 Dec 2017 00:16:46 GMT  
		Size: 77.0 MB (77038232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e91657b9404f53c5e9abbec3f5d5120a622ffe8ecf04f3d2c0b5abf7dbbef8`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; 386

```console
$ docker pull redmine@sha256:c35c609a3fde5e78f52fb8486c4fcfdb924ac563ca1d5d8654223d05e99ff187
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246141703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc15c653809b12f18195514782dc7cbca470b40a1590ee2c978a1411124d8b0e`
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
# Wed, 27 Dec 2017 06:32:21 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 27 Dec 2017 06:32:21 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 27 Dec 2017 07:21:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:24:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:24:35 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:24:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:24:36 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:24:36 GMT
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
	-	`sha256:1a12d88977f9e0ef1f1cb9fbe03caa0a299e5fc6a646c4f7a84f8f663372c72e`  
		Last Modified: Wed, 27 Dec 2017 07:55:41 GMT  
		Size: 2.4 MB (2449742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d1ef02aafa67feb7be4509cbdf0ef0e8dcdfbcf81d313073dcbe5badfef4fe`  
		Last Modified: Wed, 27 Dec 2017 07:56:03 GMT  
		Size: 77.1 MB (77083207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166f1fdda1443dcf50b2f8fc0b7b4a99f5c4f7aaee9ebb435f1124805bad5b4d`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4` - linux; ppc64le

```console
$ docker pull redmine@sha256:e4011e5f705fd5e6607c57585cf680efdc3240ed812656fd98258f867bfc1dd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240851082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0348a1c62e4956882dad14eb422a9819fe2c3914e9ad4cc4f04f56276e0a663`
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
# Sat, 16 Dec 2017 02:06:19 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 01:51:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 01:58:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 01:59:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 01:59:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 01:59:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 01:59:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 01:59:07 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 02:59:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:00:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:00:14 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:00:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:00:21 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:00:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:03:07 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:03:08 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:03:09 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:03:10 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:03:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:12:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:12:30 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:12:32 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:12:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:12:36 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:12:38 GMT
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
	-	`sha256:f7ca185ba20bfed3b0dfb8bead5d00e4c5603b2f9c883a3d8fbc84651c210272`  
		Last Modified: Sun, 24 Dec 2017 02:39:35 GMT  
		Size: 25.2 MB (25182594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8240b5adb3013d7ed54044dd3968a8e3e81eaaf59d537c516fd1b8b6763c73eb`  
		Last Modified: Sun, 24 Dec 2017 02:39:28 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f5f9c1fe8c9d5cd80cc9062c920b419b72b083f8c1919cab9fe141d40792f7`  
		Last Modified: Sun, 24 Dec 2017 03:35:02 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8c40506babce6518f907064cfa52a246a3b8e3282970a5ac06d1f6e91ebc65`  
		Last Modified: Sun, 24 Dec 2017 03:35:04 GMT  
		Size: 14.7 MB (14720211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ed0e185998e3d94f4ad556310fab015821a0fda458070b92485f2d283bfaa0`  
		Last Modified: Sun, 24 Dec 2017 03:34:59 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915d5c2b24b6c161910c0c672a41bdd193a6eaf73d1605e1d4661237e9e5da72`  
		Last Modified: Sun, 24 Dec 2017 03:34:59 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8d938123331aff5140fb4c145a5b5cded3ce97d4dc43631612cce858f699c3`  
		Last Modified: Sun, 24 Dec 2017 03:35:14 GMT  
		Size: 58.1 MB (58126526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dba7a2795166158c9eda0eedb12f9a1249789036fc09232c70fddbf586398e8`  
		Last Modified: Sun, 24 Dec 2017 03:34:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7aed8f8b1b2314b44819a971d12451f74fbb9d40cf9beea0094ff8d78788ae`  
		Last Modified: Sun, 24 Dec 2017 03:34:58 GMT  
		Size: 2.5 MB (2450395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a0a60ec24a9356d4587a66d4af611e2c35462ad6e548ee060dcbb6646d6d38`  
		Last Modified: Sun, 24 Dec 2017 03:35:13 GMT  
		Size: 77.9 MB (77923445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967999194750a4d7b4f8e5bfbe7c6a2e6cf11ab9b9e88473854fbee565e2991`  
		Last Modified: Sun, 24 Dec 2017 03:34:56 GMT  
		Size: 1.7 KB (1742 bytes)  
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
$ docker pull redmine@sha256:da23d1fc9693258f42ad6875e93ce4a3880ef3a8ec8ebe8b4e317cad6ff596df
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
$ docker pull redmine@sha256:6100e93f0ded37e83ec9cc9693f7dc65bbfa28017bf245d794e37d5457d18809
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242229468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3909e962e03cb5bd3b9af5a1fbb999c6a5a86abf5ba412671ec93d8f898b9964`
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
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Fri, 29 Dec 2017 01:53:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 01:56:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:02:51 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:02:52 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:02:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:02:52 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:02:52 GMT
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
	-	`sha256:7f7061cf6ad952ab7f4b74e5e381bfcd79c1a86b12420d375dea98747bf4b28a`  
		Last Modified: Fri, 29 Dec 2017 02:24:44 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d07af14ecdc768da4fdcb08ce7c9d01d8a4fd0a85a0b3bbc14eaa656f7a0eb0`  
		Last Modified: Fri, 29 Dec 2017 02:24:59 GMT  
		Size: 77.8 MB (77819821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f9d8a482ef18260adb7fb2412501905da3482ca50c1d1888fc583144350e33`  
		Last Modified: Fri, 29 Dec 2017 02:24:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a61ac31acc1e95058816393f0abb099d3fa7381ded3949c8a09fbfe7e2d8b45c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235394788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:098f16489e3b62bf6ae712cd21b5b71678334508d18dae0d34bf217eddd53c5c`
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
# Sat, 16 Dec 2017 02:44:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:44:56 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:51:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:51:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:51:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:51:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:51:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:51:14 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:31:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:31:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:31:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:31:45 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:31:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:32:52 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:32:52 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:32:52 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:32:52 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:32:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:37:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:37:39 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:37:39 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:37:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:37:40 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:37:40 GMT
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
	-	`sha256:74d3669a8d6dbafc06ec22e3a04c6d60b413016eba2dc63f9661bd6276c5ae0a`  
		Last Modified: Sun, 24 Dec 2017 03:12:51 GMT  
		Size: 24.5 MB (24507413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d742550f19c715ed4e2b76dec69dffd1c1c8e4495cef8d5ab447fa6a1d4da1`  
		Last Modified: Sun, 24 Dec 2017 03:12:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49f0e788d909e36ff37439e0506a010cf47f8bd9d85669b2d53a85623b024c`  
		Last Modified: Sun, 24 Dec 2017 03:48:44 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ac27975a90a42a722bf5feff315b38a792399286ce783cd7ff689fa12504a0`  
		Last Modified: Sun, 24 Dec 2017 03:48:48 GMT  
		Size: 14.3 MB (14347449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc970ff2d7a066b4272b737bc55ef7bbeb72a28e8537131763a3eb64135310fd`  
		Last Modified: Sun, 24 Dec 2017 03:48:43 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43231d654529dda4a0d474c66ae688d301229a6bb90c324b81bfe76402d2b6d0`  
		Last Modified: Sun, 24 Dec 2017 03:48:42 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e2a16e7ea20ae3e23c9439cc5340be000fef064bfc73087e345ba86de10831`  
		Last Modified: Sun, 24 Dec 2017 03:49:00 GMT  
		Size: 56.6 MB (56603784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592c6d07e02ee6d10749feb18b7f281f9dd9601e20a76026ce9382e74fbfc3d`  
		Last Modified: Sun, 24 Dec 2017 03:48:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2a274d4dc09af7ad1c10b243e198c95508d9b52e51f466490baec281d9aeff`  
		Last Modified: Sun, 24 Dec 2017 03:48:43 GMT  
		Size: 2.5 MB (2450383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f995f8268525db856b1d2dcd9caf9a08390ed214314d306129d23d318e9ea75`  
		Last Modified: Sun, 24 Dec 2017 03:49:01 GMT  
		Size: 77.0 MB (76967391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c23fb73b2038f79c20a5b1a05e5e33cff47201b7eb7c9e6ff068463499a72f`  
		Last Modified: Sun, 24 Dec 2017 03:48:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm variant v7

```console
$ docker pull redmine@sha256:a8971907cd6b09ed45acf6c2ecab1623ede108f82bbd4c4a5f8721403b82fde9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229703771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d6fda3fb87d714e121cd2e9b07851748b7a1a537823f69daaf376d1cf171a9`
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
# Sat, 16 Dec 2017 02:32:50 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:32:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:38:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:38:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:38:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:38:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:38:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:38:18 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:17:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:17:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:17:58 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:18:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:18:00 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:18:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:18:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:18:59 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:18:59 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:18:59 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:19:00 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:23:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:23:17 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:23:17 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:23:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:23:18 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:23:18 GMT
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
	-	`sha256:ce9a79e99be8b64d17842504badce751f44f82dd7fcb6394708f69c6c9bb44df`  
		Last Modified: Sun, 24 Dec 2017 02:58:59 GMT  
		Size: 24.4 MB (24372154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e6be2e75a64e644e002ab9a96c11f27e9f7e418b39ea2e546b77588dac3576`  
		Last Modified: Sun, 24 Dec 2017 02:58:50 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65122e7ac4a8cbb82fe76a27b2ec946d0b86c9603a044c95236949886d04da45`  
		Last Modified: Sun, 24 Dec 2017 03:34:11 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c7d56a00700dd16f67718374df7552f5680dbf80551e5ac028ef11892b0fc6`  
		Last Modified: Sun, 24 Dec 2017 03:34:13 GMT  
		Size: 14.1 MB (14134526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a097ae12f705eaeb758d6ff8a971ad82f4b412959e935df9eeb4a80b552897`  
		Last Modified: Sun, 24 Dec 2017 03:34:10 GMT  
		Size: 475.3 KB (475263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a08166f4302e7c2edd5efee52a222e987abc908e511077c7fde34cb664b5daf`  
		Last Modified: Sun, 24 Dec 2017 03:34:09 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffc820192155eed360cd11a15810c87df29aae7b9b9a4fa7a9aeab048dd6e52`  
		Last Modified: Sun, 24 Dec 2017 03:34:25 GMT  
		Size: 54.3 MB (54344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85476551c859ebf4716c34db2af784b24c5bffb9abfdd9268413e0905a8b3cef`  
		Last Modified: Sun, 24 Dec 2017 03:34:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fee101079177d721067918caf37b303edad90a304475f8ef127db5326aac1`  
		Last Modified: Sun, 24 Dec 2017 03:34:10 GMT  
		Size: 2.5 MB (2450395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d09195401dc8654dfc23927dd8413d651749fc2aef90b830a5b2e71f69ae90`  
		Last Modified: Sun, 24 Dec 2017 03:34:26 GMT  
		Size: 76.4 MB (76439000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22c79ae00d0680ea371b88180dbbb2c5752dd6d82fa5a508ef642b512f658d`  
		Last Modified: Sun, 24 Dec 2017 03:34:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b17a0f9257a6948dc53913c9b803eb05d507882214432c18f7a6fd20499a4523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234187855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757c61dea8c6ced66debc13be112ff6c3e209779244b73f7bcb27c7cc39a4eb4`
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
# Sat, 16 Dec 2017 07:25:38 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 22:20:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 22:29:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 22:29:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 22:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 22:29:42 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:41:48 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:41:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:41:53 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:41:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:43:42 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:43:43 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 23:43:43 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 23:43:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 23:43:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 23:52:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 23:52:35 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 23:52:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 23:52:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 23:52:37 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 23:52:38 GMT
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
	-	`sha256:8673c51c001a9bf984638ff32ca9b69fa55a922346ec362712f527ef8e90e004`  
		Last Modified: Sat, 23 Dec 2017 23:18:55 GMT  
		Size: 24.7 MB (24690330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312aafa818a3dfc76b9218fd4ca103e51b3a22b7f2b54eed603e2c8681819a14`  
		Last Modified: Sat, 23 Dec 2017 23:18:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0f66ef40a62d6b4a4dedc2cb19d378d137333c9d381fc1cd6ed8cb4a4c58eb`  
		Last Modified: Sun, 24 Dec 2017 00:16:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc4aff65cbd5771a1380192a68b0e8d8a8c4fa75d03bdb9dddb81b9d609ea`  
		Last Modified: Sun, 24 Dec 2017 00:16:32 GMT  
		Size: 14.5 MB (14462615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3f2e8c9e1fbc6c4eadd4a743a4983504129bce2f5075ccb02f5c4a0630f79`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727fe3851448999b0543d69f71c0028d2c5ae5ea53638fa8a27c675422bf8a7a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f6c5c343c2354301d6c766b2f7617190aba81d8b02f09a04003cd694d1cf13`  
		Last Modified: Sun, 24 Dec 2017 00:16:44 GMT  
		Size: 55.8 MB (55784093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fb5b33bc1a9f117df393b3a1e3ea4648faf0bf79be03ecc0077b454e75878`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabb1abccd026bf5fba3d080bdc7787892e69773bbe8edcb12c78160a80079a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c655ead65d625ac898875e056beb27e00ac5a3016e5e12169134dab1bf36b889`  
		Last Modified: Sun, 24 Dec 2017 00:16:46 GMT  
		Size: 77.0 MB (77038232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e91657b9404f53c5e9abbec3f5d5120a622ffe8ecf04f3d2c0b5abf7dbbef8`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; 386

```console
$ docker pull redmine@sha256:c35c609a3fde5e78f52fb8486c4fcfdb924ac563ca1d5d8654223d05e99ff187
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246141703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc15c653809b12f18195514782dc7cbca470b40a1590ee2c978a1411124d8b0e`
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
# Wed, 27 Dec 2017 06:32:21 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 27 Dec 2017 06:32:21 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 27 Dec 2017 07:21:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:24:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:24:35 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:24:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:24:36 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:24:36 GMT
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
	-	`sha256:1a12d88977f9e0ef1f1cb9fbe03caa0a299e5fc6a646c4f7a84f8f663372c72e`  
		Last Modified: Wed, 27 Dec 2017 07:55:41 GMT  
		Size: 2.4 MB (2449742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d1ef02aafa67feb7be4509cbdf0ef0e8dcdfbcf81d313073dcbe5badfef4fe`  
		Last Modified: Wed, 27 Dec 2017 07:56:03 GMT  
		Size: 77.1 MB (77083207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166f1fdda1443dcf50b2f8fc0b7b4a99f5c4f7aaee9ebb435f1124805bad5b4d`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:3.4.3` - linux; ppc64le

```console
$ docker pull redmine@sha256:e4011e5f705fd5e6607c57585cf680efdc3240ed812656fd98258f867bfc1dd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240851082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0348a1c62e4956882dad14eb422a9819fe2c3914e9ad4cc4f04f56276e0a663`
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
# Sat, 16 Dec 2017 02:06:19 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 01:51:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 01:58:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 01:59:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 01:59:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 01:59:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 01:59:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 01:59:07 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 02:59:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:00:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:00:14 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:00:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:00:21 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:00:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:03:07 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:03:08 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:03:09 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:03:10 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:03:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:12:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:12:30 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:12:32 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:12:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:12:36 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:12:38 GMT
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
	-	`sha256:f7ca185ba20bfed3b0dfb8bead5d00e4c5603b2f9c883a3d8fbc84651c210272`  
		Last Modified: Sun, 24 Dec 2017 02:39:35 GMT  
		Size: 25.2 MB (25182594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8240b5adb3013d7ed54044dd3968a8e3e81eaaf59d537c516fd1b8b6763c73eb`  
		Last Modified: Sun, 24 Dec 2017 02:39:28 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f5f9c1fe8c9d5cd80cc9062c920b419b72b083f8c1919cab9fe141d40792f7`  
		Last Modified: Sun, 24 Dec 2017 03:35:02 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8c40506babce6518f907064cfa52a246a3b8e3282970a5ac06d1f6e91ebc65`  
		Last Modified: Sun, 24 Dec 2017 03:35:04 GMT  
		Size: 14.7 MB (14720211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ed0e185998e3d94f4ad556310fab015821a0fda458070b92485f2d283bfaa0`  
		Last Modified: Sun, 24 Dec 2017 03:34:59 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915d5c2b24b6c161910c0c672a41bdd193a6eaf73d1605e1d4661237e9e5da72`  
		Last Modified: Sun, 24 Dec 2017 03:34:59 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8d938123331aff5140fb4c145a5b5cded3ce97d4dc43631612cce858f699c3`  
		Last Modified: Sun, 24 Dec 2017 03:35:14 GMT  
		Size: 58.1 MB (58126526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dba7a2795166158c9eda0eedb12f9a1249789036fc09232c70fddbf586398e8`  
		Last Modified: Sun, 24 Dec 2017 03:34:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7aed8f8b1b2314b44819a971d12451f74fbb9d40cf9beea0094ff8d78788ae`  
		Last Modified: Sun, 24 Dec 2017 03:34:58 GMT  
		Size: 2.5 MB (2450395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a0a60ec24a9356d4587a66d4af611e2c35462ad6e548ee060dcbb6646d6d38`  
		Last Modified: Sun, 24 Dec 2017 03:35:13 GMT  
		Size: 77.9 MB (77923445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967999194750a4d7b4f8e5bfbe7c6a2e6cf11ab9b9e88473854fbee565e2991`  
		Last Modified: Sun, 24 Dec 2017 03:34:56 GMT  
		Size: 1.7 KB (1742 bytes)  
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
$ docker pull redmine@sha256:bf6b68ba99aeec46d19945d32156c7443119bdd71da8bc3ae796fb6358f29e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4.3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9ada102a59b513e4135e3153185bae9f3667b1f46efefd553836732c24c184f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259059140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8528d1aaceb5a05919262e960857c6d8142dbd0df6bdc3c16535b09b6d8d95b5`
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
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Fri, 29 Dec 2017 01:53:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 01:56:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:02:51 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:02:52 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:02:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:02:52 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:02:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 29 Dec 2017 02:03:41 GMT
ENV PASSENGER_VERSION=5.1.12
# Fri, 29 Dec 2017 02:03:57 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:04:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 29 Dec 2017 02:04:00 GMT
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
	-	`sha256:7f7061cf6ad952ab7f4b74e5e381bfcd79c1a86b12420d375dea98747bf4b28a`  
		Last Modified: Fri, 29 Dec 2017 02:24:44 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d07af14ecdc768da4fdcb08ce7c9d01d8a4fd0a85a0b3bbc14eaa656f7a0eb0`  
		Last Modified: Fri, 29 Dec 2017 02:24:59 GMT  
		Size: 77.8 MB (77819821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f9d8a482ef18260adb7fb2412501905da3482ca50c1d1888fc583144350e33`  
		Last Modified: Fri, 29 Dec 2017 02:24:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ebec9fc03f63e3248d8773bbe14beff41e0ba0a364aceded2df09084f6e239`  
		Last Modified: Fri, 29 Dec 2017 02:26:10 GMT  
		Size: 12.8 MB (12752722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe358ca254450970312978889f5b19b476b15c4e2258910847e2b3c072e5dfd`  
		Last Modified: Fri, 29 Dec 2017 02:26:06 GMT  
		Size: 4.1 MB (4076950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3.4-passenger`

```console
$ docker pull redmine@sha256:bf6b68ba99aeec46d19945d32156c7443119bdd71da8bc3ae796fb6358f29e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3.4-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9ada102a59b513e4135e3153185bae9f3667b1f46efefd553836732c24c184f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259059140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8528d1aaceb5a05919262e960857c6d8142dbd0df6bdc3c16535b09b6d8d95b5`
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
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Fri, 29 Dec 2017 01:53:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 01:56:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:02:51 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:02:52 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:02:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:02:52 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:02:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 29 Dec 2017 02:03:41 GMT
ENV PASSENGER_VERSION=5.1.12
# Fri, 29 Dec 2017 02:03:57 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:04:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 29 Dec 2017 02:04:00 GMT
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
	-	`sha256:7f7061cf6ad952ab7f4b74e5e381bfcd79c1a86b12420d375dea98747bf4b28a`  
		Last Modified: Fri, 29 Dec 2017 02:24:44 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d07af14ecdc768da4fdcb08ce7c9d01d8a4fd0a85a0b3bbc14eaa656f7a0eb0`  
		Last Modified: Fri, 29 Dec 2017 02:24:59 GMT  
		Size: 77.8 MB (77819821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f9d8a482ef18260adb7fb2412501905da3482ca50c1d1888fc583144350e33`  
		Last Modified: Fri, 29 Dec 2017 02:24:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ebec9fc03f63e3248d8773bbe14beff41e0ba0a364aceded2df09084f6e239`  
		Last Modified: Fri, 29 Dec 2017 02:26:10 GMT  
		Size: 12.8 MB (12752722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe358ca254450970312978889f5b19b476b15c4e2258910847e2b3c072e5dfd`  
		Last Modified: Fri, 29 Dec 2017 02:26:06 GMT  
		Size: 4.1 MB (4076950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:3-passenger`

```console
$ docker pull redmine@sha256:bf6b68ba99aeec46d19945d32156c7443119bdd71da8bc3ae796fb6358f29e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:3-passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9ada102a59b513e4135e3153185bae9f3667b1f46efefd553836732c24c184f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259059140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8528d1aaceb5a05919262e960857c6d8142dbd0df6bdc3c16535b09b6d8d95b5`
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
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Fri, 29 Dec 2017 01:53:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 01:56:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:02:51 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:02:52 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:02:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:02:52 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:02:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 29 Dec 2017 02:03:41 GMT
ENV PASSENGER_VERSION=5.1.12
# Fri, 29 Dec 2017 02:03:57 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:04:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 29 Dec 2017 02:04:00 GMT
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
	-	`sha256:7f7061cf6ad952ab7f4b74e5e381bfcd79c1a86b12420d375dea98747bf4b28a`  
		Last Modified: Fri, 29 Dec 2017 02:24:44 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d07af14ecdc768da4fdcb08ce7c9d01d8a4fd0a85a0b3bbc14eaa656f7a0eb0`  
		Last Modified: Fri, 29 Dec 2017 02:24:59 GMT  
		Size: 77.8 MB (77819821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f9d8a482ef18260adb7fb2412501905da3482ca50c1d1888fc583144350e33`  
		Last Modified: Fri, 29 Dec 2017 02:24:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ebec9fc03f63e3248d8773bbe14beff41e0ba0a364aceded2df09084f6e239`  
		Last Modified: Fri, 29 Dec 2017 02:26:10 GMT  
		Size: 12.8 MB (12752722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe358ca254450970312978889f5b19b476b15c4e2258910847e2b3c072e5dfd`  
		Last Modified: Fri, 29 Dec 2017 02:26:06 GMT  
		Size: 4.1 MB (4076950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `redmine:latest`

```console
$ docker pull redmine@sha256:474438ceb7f140c10b186a6198cfa2ee6e4f9b4a95a81206ca5eafaf16d9145e
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
$ docker pull redmine@sha256:6ff626e3de671421559517e852349bb315962a553b8a8c3b11d6d446bf3b2f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242198058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e70c41140b038be6fe637b6849f95c7f80553d1f21396c0619e4ae287c1a90b7`
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
# Fri, 15 Dec 2017 21:01:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 16:17:16 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 16:20:27 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 16:20:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 16:20:28 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 16:20:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 16:20:29 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 17:34:25 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 17:34:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:34:37 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 17:34:41 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 17:34:42 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 17:34:44 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 17:35:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 17:35:19 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 17:35:19 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 17:35:20 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 17:35:24 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 17:37:54 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 17:37:55 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 17:37:55 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 17:37:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 17:37:55 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 17:37:56 GMT
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
	-	`sha256:6bd469839a6522fbd1f08ba2bdecdc44ef90a60f368e05b019a4e696d611e39f`  
		Last Modified: Sat, 23 Dec 2017 17:05:45 GMT  
		Size: 24.7 MB (24740339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d7c36754eed3ef8090b44e3cc9d7a10441ade1dc2171fe17e0ff9cd498a405`  
		Last Modified: Sat, 23 Dec 2017 17:05:36 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd6062536746c95547fdd48b07faa60669935da8a346fce6da19338108f4741`  
		Last Modified: Sat, 23 Dec 2017 17:57:42 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81c38880660541e6eda1038c0d184389663487afc5d9e076fed2bbb25514299`  
		Last Modified: Sat, 23 Dec 2017 17:57:44 GMT  
		Size: 14.7 MB (14650284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913a93200e1eed8fd8db0b7867200373c89a89fe0bf2ab7ff73085e40efbdcca`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 500.7 KB (500670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b726ccac287e7d1fda4939a4f770ec7fd37d42e8e52f236698cff58b8730d7`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 8.5 KB (8506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7092d9a5b5212023e23052f67ff850075f83886fcb6df19adaa4d7eba75cf44b`  
		Last Modified: Sat, 23 Dec 2017 17:57:52 GMT  
		Size: 59.3 MB (59267135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb2fbcc5a13b3a9ffc1f86c226ebf45782a1e269ba86d908e551969d506b90`  
		Last Modified: Sat, 23 Dec 2017 17:57:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa6bc798a3037cbfca7ff52b986727b738ad46a8da3dda90a651168f6b602ae`  
		Last Modified: Sat, 23 Dec 2017 17:57:39 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32b3dbce00433a55c43bb548c62ebb3e40f622d8317057ed098bfde3ea804ce`  
		Last Modified: Sat, 23 Dec 2017 17:57:54 GMT  
		Size: 77.8 MB (77792518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3db6b583188625dfb29ffc383fa6c9f9bf8ef6f22aa767194514e19e4c3221`  
		Last Modified: Sat, 23 Dec 2017 17:57:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v5

```console
$ docker pull redmine@sha256:a61ac31acc1e95058816393f0abb099d3fa7381ded3949c8a09fbfe7e2d8b45c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.4 MB (235394788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:098f16489e3b62bf6ae712cd21b5b71678334508d18dae0d34bf217eddd53c5c`
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
# Sat, 16 Dec 2017 02:44:30 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:44:56 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:51:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:51:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:51:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:51:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:51:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:51:14 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:31:11 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:31:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:31:43 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:31:45 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:31:45 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:31:47 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:32:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:32:52 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:32:52 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:32:52 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:32:52 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:32:56 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:37:38 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:37:39 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:37:39 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:37:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:37:40 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:37:40 GMT
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
	-	`sha256:74d3669a8d6dbafc06ec22e3a04c6d60b413016eba2dc63f9661bd6276c5ae0a`  
		Last Modified: Sun, 24 Dec 2017 03:12:51 GMT  
		Size: 24.5 MB (24507413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d742550f19c715ed4e2b76dec69dffd1c1c8e4495cef8d5ab447fa6a1d4da1`  
		Last Modified: Sun, 24 Dec 2017 03:12:42 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49f0e788d909e36ff37439e0506a010cf47f8bd9d85669b2d53a85623b024c`  
		Last Modified: Sun, 24 Dec 2017 03:48:44 GMT  
		Size: 2.1 KB (2081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ac27975a90a42a722bf5feff315b38a792399286ce783cd7ff689fa12504a0`  
		Last Modified: Sun, 24 Dec 2017 03:48:48 GMT  
		Size: 14.3 MB (14347449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc970ff2d7a066b4272b737bc55ef7bbeb72a28e8537131763a3eb64135310fd`  
		Last Modified: Sun, 24 Dec 2017 03:48:43 GMT  
		Size: 491.1 KB (491122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43231d654529dda4a0d474c66ae688d301229a6bb90c324b81bfe76402d2b6d0`  
		Last Modified: Sun, 24 Dec 2017 03:48:42 GMT  
		Size: 7.8 KB (7846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e2a16e7ea20ae3e23c9439cc5340be000fef064bfc73087e345ba86de10831`  
		Last Modified: Sun, 24 Dec 2017 03:49:00 GMT  
		Size: 56.6 MB (56603784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592c6d07e02ee6d10749feb18b7f281f9dd9601e20a76026ce9382e74fbfc3d`  
		Last Modified: Sun, 24 Dec 2017 03:48:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e2a274d4dc09af7ad1c10b243e198c95508d9b52e51f466490baec281d9aeff`  
		Last Modified: Sun, 24 Dec 2017 03:48:43 GMT  
		Size: 2.5 MB (2450383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f995f8268525db856b1d2dcd9caf9a08390ed214314d306129d23d318e9ea75`  
		Last Modified: Sun, 24 Dec 2017 03:49:01 GMT  
		Size: 77.0 MB (76967391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c23fb73b2038f79c20a5b1a05e5e33cff47201b7eb7c9e6ff068463499a72f`  
		Last Modified: Sun, 24 Dec 2017 03:48:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm variant v7

```console
$ docker pull redmine@sha256:a8971907cd6b09ed45acf6c2ecab1623ede108f82bbd4c4a5f8721403b82fde9
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229703771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d6fda3fb87d714e121cd2e9b07851748b7a1a537823f69daaf376d1cf171a9`
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
# Sat, 16 Dec 2017 02:32:50 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 02:32:46 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 02:38:16 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 02:38:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 02:38:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 02:38:17 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 02:38:18 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 02:38:18 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 03:17:27 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:17:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:17:58 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:18:00 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:18:00 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:18:02 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:18:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:18:59 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:18:59 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:18:59 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:19:00 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:19:03 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:23:16 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:23:17 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:23:17 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:23:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:23:18 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:23:18 GMT
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
	-	`sha256:ce9a79e99be8b64d17842504badce751f44f82dd7fcb6394708f69c6c9bb44df`  
		Last Modified: Sun, 24 Dec 2017 02:58:59 GMT  
		Size: 24.4 MB (24372154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e6be2e75a64e644e002ab9a96c11f27e9f7e418b39ea2e546b77588dac3576`  
		Last Modified: Sun, 24 Dec 2017 02:58:50 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65122e7ac4a8cbb82fe76a27b2ec946d0b86c9603a044c95236949886d04da45`  
		Last Modified: Sun, 24 Dec 2017 03:34:11 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c7d56a00700dd16f67718374df7552f5680dbf80551e5ac028ef11892b0fc6`  
		Last Modified: Sun, 24 Dec 2017 03:34:13 GMT  
		Size: 14.1 MB (14134526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a097ae12f705eaeb758d6ff8a971ad82f4b412959e935df9eeb4a80b552897`  
		Last Modified: Sun, 24 Dec 2017 03:34:10 GMT  
		Size: 475.3 KB (475263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a08166f4302e7c2edd5efee52a222e987abc908e511077c7fde34cb664b5daf`  
		Last Modified: Sun, 24 Dec 2017 03:34:09 GMT  
		Size: 7.3 KB (7311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ffc820192155eed360cd11a15810c87df29aae7b9b9a4fa7a9aeab048dd6e52`  
		Last Modified: Sun, 24 Dec 2017 03:34:25 GMT  
		Size: 54.3 MB (54344859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85476551c859ebf4716c34db2af784b24c5bffb9abfdd9268413e0905a8b3cef`  
		Last Modified: Sun, 24 Dec 2017 03:34:08 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40fee101079177d721067918caf37b303edad90a304475f8ef127db5326aac1`  
		Last Modified: Sun, 24 Dec 2017 03:34:10 GMT  
		Size: 2.5 MB (2450395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d09195401dc8654dfc23927dd8413d651749fc2aef90b830a5b2e71f69ae90`  
		Last Modified: Sun, 24 Dec 2017 03:34:26 GMT  
		Size: 76.4 MB (76439000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22c79ae00d0680ea371b88180dbbb2c5752dd6d82fa5a508ef642b512f658d`  
		Last Modified: Sun, 24 Dec 2017 03:34:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; arm64 variant v8

```console
$ docker pull redmine@sha256:b17a0f9257a6948dc53913c9b803eb05d507882214432c18f7a6fd20499a4523
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234187855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757c61dea8c6ced66debc13be112ff6c3e209779244b73f7bcb27c7cc39a4eb4`
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
# Sat, 16 Dec 2017 07:25:38 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sat, 23 Dec 2017 22:20:10 GMT
ENV BUNDLER_VERSION=1.16.1
# Sat, 23 Dec 2017 22:29:38 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sat, 23 Dec 2017 22:29:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 23 Dec 2017 22:29:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 23 Dec 2017 22:29:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 23 Dec 2017 22:29:42 GMT
CMD ["irb"]
# Sat, 23 Dec 2017 23:41:17 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sat, 23 Dec 2017 23:41:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:41:48 GMT
ENV GOSU_VERSION=1.10
# Sat, 23 Dec 2017 23:41:52 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sat, 23 Dec 2017 23:41:53 GMT
ENV TINI_VERSION=v0.16.1
# Sat, 23 Dec 2017 23:41:56 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sat, 23 Dec 2017 23:43:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sat, 23 Dec 2017 23:43:42 GMT
ENV RAILS_ENV=production
# Sat, 23 Dec 2017 23:43:43 GMT
WORKDIR /usr/src/redmine
# Sat, 23 Dec 2017 23:43:43 GMT
ENV REDMINE_VERSION=3.4.3
# Sat, 23 Dec 2017 23:43:44 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sat, 23 Dec 2017 23:43:49 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sat, 23 Dec 2017 23:52:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sat, 23 Dec 2017 23:52:35 GMT
VOLUME [/usr/src/redmine/files]
# Sat, 23 Dec 2017 23:52:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sat, 23 Dec 2017 23:52:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Dec 2017 23:52:37 GMT
EXPOSE 3000/tcp
# Sat, 23 Dec 2017 23:52:38 GMT
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
	-	`sha256:8673c51c001a9bf984638ff32ca9b69fa55a922346ec362712f527ef8e90e004`  
		Last Modified: Sat, 23 Dec 2017 23:18:55 GMT  
		Size: 24.7 MB (24690330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312aafa818a3dfc76b9218fd4ca103e51b3a22b7f2b54eed603e2c8681819a14`  
		Last Modified: Sat, 23 Dec 2017 23:18:44 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0f66ef40a62d6b4a4dedc2cb19d378d137333c9d381fc1cd6ed8cb4a4c58eb`  
		Last Modified: Sun, 24 Dec 2017 00:16:27 GMT  
		Size: 2.1 KB (2099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ddc4aff65cbd5771a1380192a68b0e8d8a8c4fa75d03bdb9dddb81b9d609ea`  
		Last Modified: Sun, 24 Dec 2017 00:16:32 GMT  
		Size: 14.5 MB (14462615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f3f2e8c9e1fbc6c4eadd4a743a4983504129bce2f5075ccb02f5c4a0630f79`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 468.7 KB (468693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:727fe3851448999b0543d69f71c0028d2c5ae5ea53638fa8a27c675422bf8a7a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 8.2 KB (8152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f6c5c343c2354301d6c766b2f7617190aba81d8b02f09a04003cd694d1cf13`  
		Last Modified: Sun, 24 Dec 2017 00:16:44 GMT  
		Size: 55.8 MB (55784093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1fb5b33bc1a9f117df393b3a1e3ea4648faf0bf79be03ecc0077b454e75878`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aabb1abccd026bf5fba3d080bdc7787892e69773bbe8edcb12c78160a80079a`  
		Last Modified: Sun, 24 Dec 2017 00:16:26 GMT  
		Size: 2.4 MB (2449743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c655ead65d625ac898875e056beb27e00ac5a3016e5e12169134dab1bf36b889`  
		Last Modified: Sun, 24 Dec 2017 00:16:46 GMT  
		Size: 77.0 MB (77038232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e91657b9404f53c5e9abbec3f5d5120a622ffe8ecf04f3d2c0b5abf7dbbef8`  
		Last Modified: Sun, 24 Dec 2017 00:16:24 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; 386

```console
$ docker pull redmine@sha256:c35c609a3fde5e78f52fb8486c4fcfdb924ac563ca1d5d8654223d05e99ff187
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246141703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc15c653809b12f18195514782dc7cbca470b40a1590ee2c978a1411124d8b0e`
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
# Wed, 27 Dec 2017 06:32:21 GMT
ENV REDMINE_VERSION=3.4.3
# Wed, 27 Dec 2017 06:32:21 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Wed, 27 Dec 2017 07:21:32 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Wed, 27 Dec 2017 07:24:34 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Dec 2017 07:24:35 GMT
VOLUME [/usr/src/redmine/files]
# Wed, 27 Dec 2017 07:24:35 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Wed, 27 Dec 2017 07:24:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 27 Dec 2017 07:24:36 GMT
EXPOSE 3000/tcp
# Wed, 27 Dec 2017 07:24:36 GMT
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
	-	`sha256:1a12d88977f9e0ef1f1cb9fbe03caa0a299e5fc6a646c4f7a84f8f663372c72e`  
		Last Modified: Wed, 27 Dec 2017 07:55:41 GMT  
		Size: 2.4 MB (2449742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d1ef02aafa67feb7be4509cbdf0ef0e8dcdfbcf81d313073dcbe5badfef4fe`  
		Last Modified: Wed, 27 Dec 2017 07:56:03 GMT  
		Size: 77.1 MB (77083207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:166f1fdda1443dcf50b2f8fc0b7b4a99f5c4f7aaee9ebb435f1124805bad5b4d`  
		Last Modified: Wed, 27 Dec 2017 07:55:36 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `redmine:latest` - linux; ppc64le

```console
$ docker pull redmine@sha256:e4011e5f705fd5e6607c57585cf680efdc3240ed812656fd98258f867bfc1dd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.9 MB (240851082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0348a1c62e4956882dad14eb422a9819fe2c3914e9ad4cc4f04f56276e0a663`
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
# Sat, 16 Dec 2017 02:06:19 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Sun, 24 Dec 2017 01:51:25 GMT
ENV BUNDLER_VERSION=1.16.1
# Sun, 24 Dec 2017 01:58:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Sun, 24 Dec 2017 01:59:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 24 Dec 2017 01:59:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 24 Dec 2017 01:59:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 24 Dec 2017 01:59:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 24 Dec 2017 01:59:07 GMT
CMD ["irb"]
# Sun, 24 Dec 2017 02:59:40 GMT
RUN groupadd -r redmine && useradd -r -g redmine redmine
# Sun, 24 Dec 2017 03:00:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:00:14 GMT
ENV GOSU_VERSION=1.10
# Sun, 24 Dec 2017 03:00:20 GMT
RUN set -x 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true
# Sun, 24 Dec 2017 03:00:21 GMT
ENV TINI_VERSION=v0.16.1
# Sun, 24 Dec 2017 03:00:26 GMT
RUN set -x 	&& wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5 	&& gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini 	&& rm -r "$GNUPGHOME" /usr/local/bin/tini.asc 	&& chmod +x /usr/local/bin/tini 	&& tini -h
# Sun, 24 Dec 2017 03:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		imagemagick 		libmysqlclient18 		libpq5 		libsqlite3-0 				bzr 		git 		mercurial 		openssh-client 		subversion 	&& rm -rf /var/lib/apt/lists/*
# Sun, 24 Dec 2017 03:03:07 GMT
ENV RAILS_ENV=production
# Sun, 24 Dec 2017 03:03:08 GMT
WORKDIR /usr/src/redmine
# Sun, 24 Dec 2017 03:03:09 GMT
ENV REDMINE_VERSION=3.4.3
# Sun, 24 Dec 2017 03:03:10 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Sun, 24 Dec 2017 03:03:17 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Sun, 24 Dec 2017 03:12:28 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Sun, 24 Dec 2017 03:12:30 GMT
VOLUME [/usr/src/redmine/files]
# Sun, 24 Dec 2017 03:12:32 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Sun, 24 Dec 2017 03:12:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 24 Dec 2017 03:12:36 GMT
EXPOSE 3000/tcp
# Sun, 24 Dec 2017 03:12:38 GMT
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
	-	`sha256:f7ca185ba20bfed3b0dfb8bead5d00e4c5603b2f9c883a3d8fbc84651c210272`  
		Last Modified: Sun, 24 Dec 2017 02:39:35 GMT  
		Size: 25.2 MB (25182594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8240b5adb3013d7ed54044dd3968a8e3e81eaaf59d537c516fd1b8b6763c73eb`  
		Last Modified: Sun, 24 Dec 2017 02:39:28 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f5f9c1fe8c9d5cd80cc9062c920b419b72b083f8c1919cab9fe141d40792f7`  
		Last Modified: Sun, 24 Dec 2017 03:35:02 GMT  
		Size: 2.1 KB (2102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8c40506babce6518f907064cfa52a246a3b8e3282970a5ac06d1f6e91ebc65`  
		Last Modified: Sun, 24 Dec 2017 03:35:04 GMT  
		Size: 14.7 MB (14720211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ed0e185998e3d94f4ad556310fab015821a0fda458070b92485f2d283bfaa0`  
		Last Modified: Sun, 24 Dec 2017 03:34:59 GMT  
		Size: 469.8 KB (469843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915d5c2b24b6c161910c0c672a41bdd193a6eaf73d1605e1d4661237e9e5da72`  
		Last Modified: Sun, 24 Dec 2017 03:34:59 GMT  
		Size: 8.6 KB (8636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8d938123331aff5140fb4c145a5b5cded3ce97d4dc43631612cce858f699c3`  
		Last Modified: Sun, 24 Dec 2017 03:35:14 GMT  
		Size: 58.1 MB (58126526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dba7a2795166158c9eda0eedb12f9a1249789036fc09232c70fddbf586398e8`  
		Last Modified: Sun, 24 Dec 2017 03:34:57 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7aed8f8b1b2314b44819a971d12451f74fbb9d40cf9beea0094ff8d78788ae`  
		Last Modified: Sun, 24 Dec 2017 03:34:58 GMT  
		Size: 2.5 MB (2450395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a0a60ec24a9356d4587a66d4af611e2c35462ad6e548ee060dcbb6646d6d38`  
		Last Modified: Sun, 24 Dec 2017 03:35:13 GMT  
		Size: 77.9 MB (77923445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967999194750a4d7b4f8e5bfbe7c6a2e6cf11ab9b9e88473854fbee565e2991`  
		Last Modified: Sun, 24 Dec 2017 03:34:56 GMT  
		Size: 1.7 KB (1742 bytes)  
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
$ docker pull redmine@sha256:bf6b68ba99aeec46d19945d32156c7443119bdd71da8bc3ae796fb6358f29e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redmine:passenger` - linux; amd64

```console
$ docker pull redmine@sha256:9ada102a59b513e4135e3153185bae9f3667b1f46efefd553836732c24c184f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259059140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8528d1aaceb5a05919262e960857c6d8142dbd0df6bdc3c16535b09b6d8d95b5`
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
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_VERSION=3.4.3
# Tue, 26 Dec 2017 22:29:40 GMT
ENV REDMINE_DOWNLOAD_MD5=8053592a1259863623824543524e4360
# Fri, 29 Dec 2017 01:53:28 GMT
RUN wget -O redmine.tar.gz "https://www.redmine.org/releases/redmine-${REDMINE_VERSION}.tar.gz" 	&& echo "$REDMINE_DOWNLOAD_MD5 redmine.tar.gz" | md5sum -c - 	&& tar -xvf redmine.tar.gz --strip-components=1 	&& rm redmine.tar.gz files/delete.me log/delete.me 	&& mkdir -p tmp/pdf public/plugin_assets 	&& chown -R redmine:redmine ./
# Fri, 29 Dec 2017 01:56:07 GMT
RUN buildDeps=' 		gcc 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libpq-dev 		libsqlite3-dev 		make 		patch 	' 	&& set -ex 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends 	&& rm -rf /var/lib/apt/lists/* 	&& bundle install --without development test 	&& for adapter in mysql2 postgresql sqlite3; do 		echo "$RAILS_ENV:" > ./config/database.yml; 		echo "  adapter: $adapter" >> ./config/database.yml; 		bundle install --without development test; 		cp Gemfile.lock "Gemfile.lock.${adapter}"; 	done 	&& rm ./config/database.yml 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:02:51 GMT
VOLUME [/usr/src/redmine/files]
# Fri, 29 Dec 2017 02:02:52 GMT
COPY file:18084801c3f8ecb1ba58db103d70fd92db0d33619c5cd99b1470bc0d1e88d6a6 in / 
# Fri, 29 Dec 2017 02:02:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 29 Dec 2017 02:02:52 GMT
EXPOSE 3000/tcp
# Fri, 29 Dec 2017 02:02:52 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
# Fri, 29 Dec 2017 02:03:41 GMT
ENV PASSENGER_VERSION=5.1.12
# Fri, 29 Dec 2017 02:03:57 GMT
RUN buildDeps=' 		make 	' 	&& set -x 	&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& gem install passenger --version "$PASSENGER_VERSION" 	&& apt-get purge -y --auto-remove $buildDeps
# Fri, 29 Dec 2017 02:04:00 GMT
RUN set -x 	&& passenger-config install-agent 	&& passenger-config download-nginx-engine
# Fri, 29 Dec 2017 02:04:00 GMT
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
	-	`sha256:7f7061cf6ad952ab7f4b74e5e381bfcd79c1a86b12420d375dea98747bf4b28a`  
		Last Modified: Fri, 29 Dec 2017 02:24:44 GMT  
		Size: 2.4 MB (2449739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d07af14ecdc768da4fdcb08ce7c9d01d8a4fd0a85a0b3bbc14eaa656f7a0eb0`  
		Last Modified: Fri, 29 Dec 2017 02:24:59 GMT  
		Size: 77.8 MB (77819821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f9d8a482ef18260adb7fb2412501905da3482ca50c1d1888fc583144350e33`  
		Last Modified: Fri, 29 Dec 2017 02:24:41 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ebec9fc03f63e3248d8773bbe14beff41e0ba0a364aceded2df09084f6e239`  
		Last Modified: Fri, 29 Dec 2017 02:26:10 GMT  
		Size: 12.8 MB (12752722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe358ca254450970312978889f5b19b476b15c4e2258910847e2b3c072e5dfd`  
		Last Modified: Fri, 29 Dec 2017 02:26:06 GMT  
		Size: 4.1 MB (4076950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
