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
$ docker pull rails@sha256:45a2508fa9fc3d165fc68bbdebf83a3deec72d405cec368e586d48cd619da4fb
```

-	Platforms:
	-	linux; amd64

### `rails:5.0.0.1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.1 MB (318094761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc612b19b97fbe5afd5a349397ca7ca9c5a027a0381cc2e4bb8768f845d6732c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Tue, 01 Nov 2016 00:52:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 00:52:27 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 00:52:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 00:52:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 00:52:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 00:52:30 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 07:38:18 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:27 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:28 GMT
ENV RAILS_VERSION=5.0.0.1
# Tue, 01 Nov 2016 07:39:19 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53cd4c1baf863cb35d8687555224480627669c97b5068bc486c0922b72918f4`  
		Last Modified: Tue, 01 Nov 2016 00:57:28 GMT  
		Size: 35.3 MB (35335894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e439ef713d5791bdfe3dce4367d8d232dc4940a689c302e6f6f067278f4c81e7`  
		Last Modified: Tue, 01 Nov 2016 00:57:18 GMT  
		Size: 612.6 KB (612579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4b0552731d9e68db4e7abbbd1e58b0d0163f2c31f0176f29d7ebbab3166c04`  
		Last Modified: Tue, 01 Nov 2016 00:57:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0edcf0fb76db6930ca0727cfa824f0692b75774de58659ef561db3c6c8ef7b4`  
		Last Modified: Tue, 01 Nov 2016 07:39:31 GMT  
		Size: 2.9 MB (2879438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40f08bb1b3c98aa07ad324a0d3cbe9a9059b0ad4633b823c7803843ffae840`  
		Last Modified: Tue, 01 Nov 2016 07:39:33 GMT  
		Size: 13.7 MB (13747451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4143ed2121ea0ea783a189a028ed3538fe6a431b7ef9ec4c39d52f881cf914d`  
		Last Modified: Tue, 01 Nov 2016 07:39:36 GMT  
		Size: 23.3 MB (23317347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5.0.0`

```console
$ docker pull rails@sha256:45a2508fa9fc3d165fc68bbdebf83a3deec72d405cec368e586d48cd619da4fb
```

-	Platforms:
	-	linux; amd64

### `rails:5.0.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.1 MB (318094761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc612b19b97fbe5afd5a349397ca7ca9c5a027a0381cc2e4bb8768f845d6732c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Tue, 01 Nov 2016 00:52:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 00:52:27 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 00:52:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 00:52:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 00:52:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 00:52:30 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 07:38:18 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:27 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:28 GMT
ENV RAILS_VERSION=5.0.0.1
# Tue, 01 Nov 2016 07:39:19 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53cd4c1baf863cb35d8687555224480627669c97b5068bc486c0922b72918f4`  
		Last Modified: Tue, 01 Nov 2016 00:57:28 GMT  
		Size: 35.3 MB (35335894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e439ef713d5791bdfe3dce4367d8d232dc4940a689c302e6f6f067278f4c81e7`  
		Last Modified: Tue, 01 Nov 2016 00:57:18 GMT  
		Size: 612.6 KB (612579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4b0552731d9e68db4e7abbbd1e58b0d0163f2c31f0176f29d7ebbab3166c04`  
		Last Modified: Tue, 01 Nov 2016 00:57:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0edcf0fb76db6930ca0727cfa824f0692b75774de58659ef561db3c6c8ef7b4`  
		Last Modified: Tue, 01 Nov 2016 07:39:31 GMT  
		Size: 2.9 MB (2879438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40f08bb1b3c98aa07ad324a0d3cbe9a9059b0ad4633b823c7803843ffae840`  
		Last Modified: Tue, 01 Nov 2016 07:39:33 GMT  
		Size: 13.7 MB (13747451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4143ed2121ea0ea783a189a028ed3538fe6a431b7ef9ec4c39d52f881cf914d`  
		Last Modified: Tue, 01 Nov 2016 07:39:36 GMT  
		Size: 23.3 MB (23317347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5.0`

```console
$ docker pull rails@sha256:45a2508fa9fc3d165fc68bbdebf83a3deec72d405cec368e586d48cd619da4fb
```

-	Platforms:
	-	linux; amd64

### `rails:5.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.1 MB (318094761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc612b19b97fbe5afd5a349397ca7ca9c5a027a0381cc2e4bb8768f845d6732c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Tue, 01 Nov 2016 00:52:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 00:52:27 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 00:52:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 00:52:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 00:52:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 00:52:30 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 07:38:18 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:27 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:28 GMT
ENV RAILS_VERSION=5.0.0.1
# Tue, 01 Nov 2016 07:39:19 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53cd4c1baf863cb35d8687555224480627669c97b5068bc486c0922b72918f4`  
		Last Modified: Tue, 01 Nov 2016 00:57:28 GMT  
		Size: 35.3 MB (35335894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e439ef713d5791bdfe3dce4367d8d232dc4940a689c302e6f6f067278f4c81e7`  
		Last Modified: Tue, 01 Nov 2016 00:57:18 GMT  
		Size: 612.6 KB (612579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4b0552731d9e68db4e7abbbd1e58b0d0163f2c31f0176f29d7ebbab3166c04`  
		Last Modified: Tue, 01 Nov 2016 00:57:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0edcf0fb76db6930ca0727cfa824f0692b75774de58659ef561db3c6c8ef7b4`  
		Last Modified: Tue, 01 Nov 2016 07:39:31 GMT  
		Size: 2.9 MB (2879438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40f08bb1b3c98aa07ad324a0d3cbe9a9059b0ad4633b823c7803843ffae840`  
		Last Modified: Tue, 01 Nov 2016 07:39:33 GMT  
		Size: 13.7 MB (13747451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4143ed2121ea0ea783a189a028ed3538fe6a431b7ef9ec4c39d52f881cf914d`  
		Last Modified: Tue, 01 Nov 2016 07:39:36 GMT  
		Size: 23.3 MB (23317347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:5`

```console
$ docker pull rails@sha256:45a2508fa9fc3d165fc68bbdebf83a3deec72d405cec368e586d48cd619da4fb
```

-	Platforms:
	-	linux; amd64

### `rails:5` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.1 MB (318094761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc612b19b97fbe5afd5a349397ca7ca9c5a027a0381cc2e4bb8768f845d6732c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Tue, 01 Nov 2016 00:52:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 00:52:27 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 00:52:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 00:52:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 00:52:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 00:52:30 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 07:38:18 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:27 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:28 GMT
ENV RAILS_VERSION=5.0.0.1
# Tue, 01 Nov 2016 07:39:19 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53cd4c1baf863cb35d8687555224480627669c97b5068bc486c0922b72918f4`  
		Last Modified: Tue, 01 Nov 2016 00:57:28 GMT  
		Size: 35.3 MB (35335894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e439ef713d5791bdfe3dce4367d8d232dc4940a689c302e6f6f067278f4c81e7`  
		Last Modified: Tue, 01 Nov 2016 00:57:18 GMT  
		Size: 612.6 KB (612579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4b0552731d9e68db4e7abbbd1e58b0d0163f2c31f0176f29d7ebbab3166c04`  
		Last Modified: Tue, 01 Nov 2016 00:57:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0edcf0fb76db6930ca0727cfa824f0692b75774de58659ef561db3c6c8ef7b4`  
		Last Modified: Tue, 01 Nov 2016 07:39:31 GMT  
		Size: 2.9 MB (2879438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40f08bb1b3c98aa07ad324a0d3cbe9a9059b0ad4633b823c7803843ffae840`  
		Last Modified: Tue, 01 Nov 2016 07:39:33 GMT  
		Size: 13.7 MB (13747451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4143ed2121ea0ea783a189a028ed3538fe6a431b7ef9ec4c39d52f881cf914d`  
		Last Modified: Tue, 01 Nov 2016 07:39:36 GMT  
		Size: 23.3 MB (23317347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:latest`

```console
$ docker pull rails@sha256:45a2508fa9fc3d165fc68bbdebf83a3deec72d405cec368e586d48cd619da4fb
```

-	Platforms:
	-	linux; amd64

### `rails:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.1 MB (318094761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc612b19b97fbe5afd5a349397ca7ca9c5a027a0381cc2e4bb8768f845d6732c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:44:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_MAJOR=2.3
# Tue, 01 Nov 2016 00:50:01 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 01 Nov 2016 00:50:02 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Tue, 01 Nov 2016 00:52:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 01 Nov 2016 00:52:27 GMT
ENV BUNDLER_VERSION=1.13.6
# Tue, 01 Nov 2016 00:52:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 01 Nov 2016 00:52:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 01 Nov 2016 00:52:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Nov 2016 00:52:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 01 Nov 2016 00:52:30 GMT
CMD ["irb"]
# Tue, 01 Nov 2016 07:38:18 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:27 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:38:28 GMT
ENV RAILS_VERSION=5.0.0.1
# Tue, 01 Nov 2016 07:39:19 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da50f5b595a04061bace5651fcd54282e0fbce34fa7d82d7a4f27d80458475f`  
		Last Modified: Tue, 01 Nov 2016 00:52:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53cd4c1baf863cb35d8687555224480627669c97b5068bc486c0922b72918f4`  
		Last Modified: Tue, 01 Nov 2016 00:57:28 GMT  
		Size: 35.3 MB (35335894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e439ef713d5791bdfe3dce4367d8d232dc4940a689c302e6f6f067278f4c81e7`  
		Last Modified: Tue, 01 Nov 2016 00:57:18 GMT  
		Size: 612.6 KB (612579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4b0552731d9e68db4e7abbbd1e58b0d0163f2c31f0176f29d7ebbab3166c04`  
		Last Modified: Tue, 01 Nov 2016 00:57:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0edcf0fb76db6930ca0727cfa824f0692b75774de58659ef561db3c6c8ef7b4`  
		Last Modified: Tue, 01 Nov 2016 07:39:31 GMT  
		Size: 2.9 MB (2879438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c40f08bb1b3c98aa07ad324a0d3cbe9a9059b0ad4633b823c7803843ffae840`  
		Last Modified: Tue, 01 Nov 2016 07:39:33 GMT  
		Size: 13.7 MB (13747451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4143ed2121ea0ea783a189a028ed3538fe6a431b7ef9ec4c39d52f881cf914d`  
		Last Modified: Tue, 01 Nov 2016 07:39:36 GMT  
		Size: 23.3 MB (23317347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rails:onbuild`

```console
$ docker pull rails@sha256:52a97236a238ab33ec96841814dcd77029f83eb0d1be83e4c08befb16d1573d9
```

-	Platforms:
	-	linux; amd64

### `rails:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294704596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fadd5b2702096c402c409cfb31b658fb5546facf2cd8c7c9be0ca10fd5ee3b3`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 02:35:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 08:56:07 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 08:56:07 GMT
ENV RUBY_MAJOR=2.3
# Sat, 22 Oct 2016 08:56:08 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 22 Oct 2016 08:56:08 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Sat, 22 Oct 2016 08:56:08 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Sat, 22 Oct 2016 08:58:34 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 22 Oct 2016 08:58:35 GMT
ENV BUNDLER_VERSION=1.13.5
# Sat, 22 Oct 2016 08:58:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 22 Oct 2016 08:58:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 22 Oct 2016 08:58:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 22 Oct 2016 08:58:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 08:58:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 22 Oct 2016 08:58:39 GMT
CMD ["irb"]
# Sat, 22 Oct 2016 08:59:45 GMT
RUN bundle config --global frozen 1
# Sat, 22 Oct 2016 08:59:45 GMT
RUN mkdir -p /usr/src/app
# Sat, 22 Oct 2016 08:59:46 GMT
WORKDIR /usr/src/app
# Sat, 22 Oct 2016 08:59:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Sat, 22 Oct 2016 08:59:47 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Sat, 22 Oct 2016 08:59:47 GMT
ONBUILD RUN bundle install
# Sat, 22 Oct 2016 08:59:47 GMT
ONBUILD COPY . /usr/src/app
# Sat, 22 Oct 2016 09:15:21 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 09:15:30 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 09:15:30 GMT
EXPOSE 3000/tcp
# Sat, 22 Oct 2016 09:15:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a5aab6cd0c9e8c0895dcbb6164cfaaf108910a09cc047037e0a1bf48b17ab0`  
		Last Modified: Sat, 22 Oct 2016 02:36:21 GMT  
		Size: 129.8 MB (129765263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d11d0f43400a9f4b4ec568348941865374473b101ab81b8588c1a4c90923050`  
		Last Modified: Sat, 22 Oct 2016 08:58:49 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40a384d2134a42e9e5f8ae600387c4e44016e81bdc22f3b00586d2fe430c7132`  
		Last Modified: Sat, 22 Oct 2016 08:59:01 GMT  
		Size: 35.3 MB (35317251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7898cfef5a3611ac8c2e672f5432381d1a04b7c606deb5fc27edf576b48ad3f`  
		Last Modified: Sat, 22 Oct 2016 08:58:49 GMT  
		Size: 612.4 KB (612354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fdcd2fefdc4086ef7e2ac3955fb0f2ead8d0cd69a27453d1cedd55296703e5`  
		Last Modified: Sat, 22 Oct 2016 08:58:49 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86b31afd1969b5e9b0e320fd062ab6f3b2203e5e287d457d02402828f061784`  
		Last Modified: Sat, 22 Oct 2016 08:59:57 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc37aef0c786a95d23ec1b9cd2d054d3c7987b5141251b2d90e3dc959f22200f`  
		Last Modified: Sat, 22 Oct 2016 08:59:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2119c08d8033bdfbc9e60c77edbd0af5c49196c315e0fb98d69fadbb7e5a9076`  
		Last Modified: Sat, 22 Oct 2016 09:15:42 GMT  
		Size: 2.9 MB (2879427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8042c42376fc0ba52adae8d5cdea2cf28deb9ccf4da28b6ad5b48b78a5d4991`  
		Last Modified: Sat, 22 Oct 2016 09:15:44 GMT  
		Size: 13.7 MB (13747558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
