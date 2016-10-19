<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rails`

-	[`rails:5.0.0.1`](#rails5001)
-	[`rails:5.0.0`](#rails500)
-	[`rails:5.0`](#rails50)
-	[`rails:5`](#rails5)
-	[`rails:latest`](#railslatest)
-	[`rails:onbuild`](#railsonbuild)

## `rails:5.0.0.1`

```console
$ docker pull rails@sha256:d1b37ba8cc44367e9ccc144ca6fa946c812169f1d41a824383b5a7b772e46045
```

-	Platforms:
	-	linux; amd64

### `rails:5.0.0.1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319269359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8959b689032f28e147a4469d8a05645dbdc2461c9984054ea9c015cdc35981`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Oct 2016 22:58:31 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:58:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:58:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:58:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:58:36 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:09:16 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:09:24 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:09:24 GMT
ENV RAILS_VERSION=5.0.0.1
# Wed, 19 Oct 2016 18:10:19 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74aaebd65a9e0d5aff58691261f9912e39e81229ccd5321b2e9be49465d78269`  
		Last Modified: Tue, 18 Oct 2016 23:05:33 GMT  
		Size: 612.3 KB (612343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804477bacc8f499d048f8c1b2528beb124cb7a5ccd4a22df917402a21255f298`  
		Last Modified: Tue, 18 Oct 2016 23:05:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb3f214acc534e5195f54795f9a087679acf2f2550231d10531eff2e57622c0`  
		Last Modified: Wed, 19 Oct 2016 18:10:31 GMT  
		Size: 2.9 MB (2879507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9dee587e1574e8e693bed0a36a605b90fd3eeb74898d50bafa44d50c8cef9c`  
		Last Modified: Wed, 19 Oct 2016 18:10:32 GMT  
		Size: 13.7 MB (13747644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbbb8fcd6f3b24d6f124640a56059aaaf50445f9ae5b890b0ce25db6d1e0bc`  
		Last Modified: Wed, 19 Oct 2016 18:10:36 GMT  
		Size: 23.3 MB (23317871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5.0.0`

```console
$ docker pull rails@sha256:d1b37ba8cc44367e9ccc144ca6fa946c812169f1d41a824383b5a7b772e46045
```

-	Platforms:
	-	linux; amd64

### `rails:5.0.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319269359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8959b689032f28e147a4469d8a05645dbdc2461c9984054ea9c015cdc35981`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Oct 2016 22:58:31 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:58:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:58:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:58:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:58:36 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:09:16 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:09:24 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:09:24 GMT
ENV RAILS_VERSION=5.0.0.1
# Wed, 19 Oct 2016 18:10:19 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74aaebd65a9e0d5aff58691261f9912e39e81229ccd5321b2e9be49465d78269`  
		Last Modified: Tue, 18 Oct 2016 23:05:33 GMT  
		Size: 612.3 KB (612343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804477bacc8f499d048f8c1b2528beb124cb7a5ccd4a22df917402a21255f298`  
		Last Modified: Tue, 18 Oct 2016 23:05:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb3f214acc534e5195f54795f9a087679acf2f2550231d10531eff2e57622c0`  
		Last Modified: Wed, 19 Oct 2016 18:10:31 GMT  
		Size: 2.9 MB (2879507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9dee587e1574e8e693bed0a36a605b90fd3eeb74898d50bafa44d50c8cef9c`  
		Last Modified: Wed, 19 Oct 2016 18:10:32 GMT  
		Size: 13.7 MB (13747644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbbb8fcd6f3b24d6f124640a56059aaaf50445f9ae5b890b0ce25db6d1e0bc`  
		Last Modified: Wed, 19 Oct 2016 18:10:36 GMT  
		Size: 23.3 MB (23317871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5.0`

```console
$ docker pull rails@sha256:d1b37ba8cc44367e9ccc144ca6fa946c812169f1d41a824383b5a7b772e46045
```

-	Platforms:
	-	linux; amd64

### `rails:5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319269359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8959b689032f28e147a4469d8a05645dbdc2461c9984054ea9c015cdc35981`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Oct 2016 22:58:31 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:58:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:58:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:58:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:58:36 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:09:16 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:09:24 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:09:24 GMT
ENV RAILS_VERSION=5.0.0.1
# Wed, 19 Oct 2016 18:10:19 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74aaebd65a9e0d5aff58691261f9912e39e81229ccd5321b2e9be49465d78269`  
		Last Modified: Tue, 18 Oct 2016 23:05:33 GMT  
		Size: 612.3 KB (612343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804477bacc8f499d048f8c1b2528beb124cb7a5ccd4a22df917402a21255f298`  
		Last Modified: Tue, 18 Oct 2016 23:05:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb3f214acc534e5195f54795f9a087679acf2f2550231d10531eff2e57622c0`  
		Last Modified: Wed, 19 Oct 2016 18:10:31 GMT  
		Size: 2.9 MB (2879507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9dee587e1574e8e693bed0a36a605b90fd3eeb74898d50bafa44d50c8cef9c`  
		Last Modified: Wed, 19 Oct 2016 18:10:32 GMT  
		Size: 13.7 MB (13747644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbbb8fcd6f3b24d6f124640a56059aaaf50445f9ae5b890b0ce25db6d1e0bc`  
		Last Modified: Wed, 19 Oct 2016 18:10:36 GMT  
		Size: 23.3 MB (23317871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5`

```console
$ docker pull rails@sha256:d1b37ba8cc44367e9ccc144ca6fa946c812169f1d41a824383b5a7b772e46045
```

-	Platforms:
	-	linux; amd64

### `rails:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319269359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e8959b689032f28e147a4469d8a05645dbdc2461c9984054ea9c015cdc35981`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Oct 2016 22:58:31 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:58:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:58:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:58:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:58:36 GMT
CMD ["irb"]
# Wed, 19 Oct 2016 18:09:16 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:09:24 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:09:24 GMT
ENV RAILS_VERSION=5.0.0.1
# Wed, 19 Oct 2016 18:10:19 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74aaebd65a9e0d5aff58691261f9912e39e81229ccd5321b2e9be49465d78269`  
		Last Modified: Tue, 18 Oct 2016 23:05:33 GMT  
		Size: 612.3 KB (612343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804477bacc8f499d048f8c1b2528beb124cb7a5ccd4a22df917402a21255f298`  
		Last Modified: Tue, 18 Oct 2016 23:05:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb3f214acc534e5195f54795f9a087679acf2f2550231d10531eff2e57622c0`  
		Last Modified: Wed, 19 Oct 2016 18:10:31 GMT  
		Size: 2.9 MB (2879507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9dee587e1574e8e693bed0a36a605b90fd3eeb74898d50bafa44d50c8cef9c`  
		Last Modified: Wed, 19 Oct 2016 18:10:32 GMT  
		Size: 13.7 MB (13747644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1fbbb8fcd6f3b24d6f124640a56059aaaf50445f9ae5b890b0ce25db6d1e0bc`  
		Last Modified: Wed, 19 Oct 2016 18:10:36 GMT  
		Size: 23.3 MB (23317871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:latest`

```console
$ docker pull rails@sha256:4913a63d580ce70ba0e7460b1d1c0083e1e667c652d9d4642d3cd17cf9ea72f5
```

-	Platforms:
	-	linux; amd64

### `rails:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.3 MB (319268607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85ea5e60b7ab85d62e50374f42c79ac42b19ae4b1075a091c136fc281a6f3aed`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 14 Oct 2016 17:53:29 GMT
ENV BUNDLER_VERSION=1.13.3
# Fri, 14 Oct 2016 17:53:32 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 14 Oct 2016 17:53:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 14 Oct 2016 17:53:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 14 Oct 2016 17:53:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Oct 2016 17:53:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 14 Oct 2016 17:53:34 GMT
CMD ["irb"]
# Fri, 14 Oct 2016 18:25:56 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 18:26:04 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 14 Oct 2016 18:26:04 GMT
ENV RAILS_VERSION=5.0.0.1
# Fri, 14 Oct 2016 18:27:10 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614f3475bd070010c5872892c598bf5861a251aad52fd8ff7be9b24820f6a905`  
		Last Modified: Fri, 14 Oct 2016 17:57:28 GMT  
		Size: 611.9 KB (611871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd67136d0aea4fb6442c729719d2ac5a3f424daec805cfa94a22af5319a2799`  
		Last Modified: Fri, 14 Oct 2016 17:57:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed3585102ca10a8bdcaf133084bba30fdd3d0f90e7ac5ba679874c6a8791371`  
		Last Modified: Fri, 14 Oct 2016 18:27:21 GMT  
		Size: 2.9 MB (2879506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c390c9b97c8a16f1c281ea7b52125975d9595b7e8c4087adde8656a8c0b5ec63`  
		Last Modified: Fri, 14 Oct 2016 18:27:25 GMT  
		Size: 13.7 MB (13747584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a475a3ce6749f05ba95388a47d8fe9021093547459b1ef6002a5a0c3b173bc23`  
		Last Modified: Fri, 14 Oct 2016 18:27:27 GMT  
		Size: 23.3 MB (23317652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:onbuild`

```console
$ docker pull rails@sha256:3cdcc85210e5bc379f4b58e4c24ef049126e64e34a18aef53498785f0ec5f3ab
```

-	Platforms:
	-	linux; amd64

### `rails:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (295951764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab7c85ad528f621ef0e4c6a26ea90b2d1d4c06470ced64a53749bcd62116689`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 18 Oct 2016 22:58:31 GMT
ENV BUNDLER_VERSION=1.13.5
# Tue, 18 Oct 2016 22:58:34 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 18 Oct 2016 22:58:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 18 Oct 2016 22:58:35 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Oct 2016 22:58:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 18 Oct 2016 22:58:36 GMT
CMD ["irb"]
# Tue, 18 Oct 2016 23:01:04 GMT
RUN bundle config --global frozen 1
# Tue, 18 Oct 2016 23:01:05 GMT
RUN mkdir -p /usr/src/app
# Tue, 18 Oct 2016 23:01:06 GMT
WORKDIR /usr/src/app
# Tue, 18 Oct 2016 23:01:06 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 18 Oct 2016 23:01:06 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 18 Oct 2016 23:01:06 GMT
ONBUILD RUN bundle install
# Tue, 18 Oct 2016 23:01:07 GMT
ONBUILD COPY . /usr/src/app
# Wed, 19 Oct 2016 18:11:33 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:11:42 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 19 Oct 2016 18:11:42 GMT
EXPOSE 3000/tcp
# Wed, 19 Oct 2016 18:11:43 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74aaebd65a9e0d5aff58691261f9912e39e81229ccd5321b2e9be49465d78269`  
		Last Modified: Tue, 18 Oct 2016 23:05:33 GMT  
		Size: 612.3 KB (612343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804477bacc8f499d048f8c1b2528beb124cb7a5ccd4a22df917402a21255f298`  
		Last Modified: Tue, 18 Oct 2016 23:05:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4811b25ee7abc95ed7c6a2007ef8eb9fef4e6e08fe23b49efa4c7a7f02029e`  
		Last Modified: Tue, 18 Oct 2016 23:08:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68db29b412602844675213eb769ac25b52e82e7b7b1e5c055bdc81a2fe710c6e`  
		Last Modified: Tue, 18 Oct 2016 23:08:20 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cf687afc0f77e9f450900e23a905d41608ef351645047ad1ba5d156cc6cf1d`  
		Last Modified: Wed, 19 Oct 2016 18:11:54 GMT  
		Size: 2.9 MB (2879472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4daafc3ef550dc4070a16e80396852f1204a89ea56b7eaeb43036b8d2230fbb1`  
		Last Modified: Wed, 19 Oct 2016 18:11:55 GMT  
		Size: 13.7 MB (13747643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
