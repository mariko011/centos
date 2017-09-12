## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:6c209b0fa51c959a5d08d95021f25e4c071fce10289b8367f8f009af7d8ccbbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:2-onbuild` - linux; amd64

```console
$ docker pull ruby@sha256:2a1f278edc3872259cf9833679e10e2e030a682862637e2d5e5c34318b488d59
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273588814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c039ad9aedda3f9251ed30c4c49805f82c371e1f7d58c29eef669a50e6a8236b`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Thu, 07 Sep 2017 23:20:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:20:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Sep 2017 23:20:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 23:22:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:37:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 10:37:31 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 10:37:31 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 10:37:32 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 10:37:32 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 10:40:39 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 10:40:40 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 10:40:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 10:40:41 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 10:40:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 10:40:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 10:40:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 10:40:43 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 10:44:43 GMT
RUN bundle config --global frozen 1
# Fri, 08 Sep 2017 10:44:44 GMT
RUN mkdir -p /usr/src/app
# Fri, 08 Sep 2017 10:44:44 GMT
WORKDIR /usr/src/app
# Fri, 08 Sep 2017 10:44:45 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 08 Sep 2017 10:44:45 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 08 Sep 2017 10:44:45 GMT
ONBUILD RUN bundle install
# Fri, 08 Sep 2017 10:44:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6d19ae3884936579f82aa8c7f23286d3070be2f628712fdf4ef9f93801272`  
		Last Modified: Thu, 07 Sep 2017 23:54:45 GMT  
		Size: 19.3 MB (19263450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94273a890192de558e8478741d93affb933b77ec2dfd8c3c3c2b46c2d183d3ea`  
		Last Modified: Thu, 07 Sep 2017 23:55:08 GMT  
		Size: 43.2 MB (43227825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9110c9043248c4f74eae4e013116ca8057a7653f87a2bfb268bf38ffe13b757`  
		Last Modified: Thu, 07 Sep 2017 23:59:49 GMT  
		Size: 134.7 MB (134683360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22653ec8a29ca8ae84ff057f090d24142438a8ef546cec5f6df598195f8d07ff`  
		Last Modified: Mon, 11 Sep 2017 14:54:31 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835ecd6084f167bf250a2998832bccfc4114a64df782133270fe70114f0e66fa`  
		Last Modified: Mon, 11 Sep 2017 14:54:38 GMT  
		Size: 23.1 MB (23142638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fe33a7d21e2570dd862de66a61364f51310d748faa74ad78055250a0bb4cf56`  
		Last Modified: Mon, 11 Sep 2017 14:54:32 GMT  
		Size: 675.3 KB (675320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f605bd778c3e98787777e8858e5c63d01f130cfb858fdc4f51fecfadcc9a21d`  
		Last Modified: Mon, 11 Sep 2017 14:54:31 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3911d2c5175c28ed4c38b370d497f85697b56c8ae582c4ad8e3cdda40884df41`  
		Last Modified: Mon, 11 Sep 2017 14:57:09 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a76fc16de1bd46ebd230aec3c7566f285da8509c38e9771e3741dcdd229f5ba`  
		Last Modified: Mon, 11 Sep 2017 14:57:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; arm variant v7

```console
$ docker pull ruby@sha256:e9c602ca620669da5422776eca4805c834db874242fb1c80f95397c02114e4d2
```

-	Docker Version: 17.06.0-ce-rc5
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.4 MB (241356403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feaeb2ebaaca73176f678d863319c8f90874c9423bc5a4a04543620db31f9bf8`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 15:24:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 15:25:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 15:29:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 15:43:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 20:59:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Jul 2017 22:14:10 GMT
ENV RUBY_MAJOR=2.4
# Tue, 25 Jul 2017 22:14:13 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 25 Jul 2017 22:14:17 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 25 Jul 2017 22:14:21 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Tue, 25 Jul 2017 22:29:15 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 25 Jul 2017 22:29:16 GMT
ENV BUNDLER_VERSION=1.15.3
# Tue, 25 Jul 2017 22:29:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 25 Jul 2017 22:29:21 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 25 Jul 2017 22:29:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 25 Jul 2017 22:29:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Jul 2017 22:29:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 25 Jul 2017 22:29:26 GMT
CMD ["irb"]
# Tue, 25 Jul 2017 22:49:07 GMT
RUN bundle config --global frozen 1
# Tue, 25 Jul 2017 22:49:11 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Jul 2017 22:49:13 GMT
WORKDIR /usr/src/app
# Tue, 25 Jul 2017 22:49:20 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 25 Jul 2017 22:49:23 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 25 Jul 2017 22:49:25 GMT
ONBUILD RUN bundle install
# Tue, 25 Jul 2017 22:49:28 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5096f323e5846048d48c0e012fd2df3e70dcb9e7dd31aeea1b8ed8750eaf03a5`  
		Last Modified: Tue, 25 Jul 2017 16:20:26 GMT  
		Size: 18.3 MB (18262731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd423f633cbf37d7468296966d140ea8040af61394ea1c79320fe99c19a9e2fd`  
		Last Modified: Tue, 25 Jul 2017 16:21:08 GMT  
		Size: 39.7 MB (39684784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9089114c7ef1387b2c29344b48f32fe0c0bc911030184189aa91760da7629121`  
		Last Modified: Tue, 25 Jul 2017 16:22:26 GMT  
		Size: 111.0 MB (110985518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0210d89f8f4ce1478ac5566dd5a20546ffe7f319bed224291bfcc114d973a6`  
		Last Modified: Tue, 25 Jul 2017 22:49:40 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b375d95ce773306f91ade74cb2dfe5cfb856671b58f5c8db9417c963b3c98a`  
		Last Modified: Tue, 25 Jul 2017 22:53:40 GMT  
		Size: 23.1 MB (23055658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffe470521a20f53237f3e5ede43b9d41fdafbbf9f38e8a9e5ece54589129879`  
		Last Modified: Tue, 25 Jul 2017 22:53:22 GMT  
		Size: 675.1 KB (675098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90efc411aecbcc59337ae392935cfe513cbf1b8560518718927a1eedbf98c0d2`  
		Last Modified: Tue, 25 Jul 2017 22:53:22 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8ec2c98d3ec34c847318b068a0274c2f6d04bd32148a58a76ae4fe332df2f6`  
		Last Modified: Tue, 25 Jul 2017 22:54:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2bbad086be023e0a4f5f0a26385f3fda6acbf1ab100a89e69229898f6e9e23e`  
		Last Modified: Tue, 25 Jul 2017 22:54:56 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:6b9233b02bc28fe02b2bef732b18161191e4255c9583952c8e97a483dbd65886
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249362654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d8607c41c709eef6eb038c94a63f24999a0382f3b3d44c9316999f344e8250`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 17:22:52 GMT
ADD file:b7954f6f520f5e2932d8cfef9549fa31889b7469bfe1706f868be70880dc6b8c in / 
# Mon, 24 Jul 2017 17:22:53 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:00:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:00:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 18:01:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 09:54:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 20:56:17 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 20:56:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 29 Aug 2017 20:56:18 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 29 Aug 2017 20:56:19 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 20:56:19 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 21:03:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 21:03:47 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 21:03:49 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 21:03:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 21:03:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 21:03:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 21:03:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 21:03:53 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 21:13:30 GMT
RUN bundle config --global frozen 1
# Tue, 29 Aug 2017 21:13:32 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 21:13:32 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 21:13:33 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 29 Aug 2017 21:13:33 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 29 Aug 2017 21:13:34 GMT
ONBUILD RUN bundle install
# Tue, 29 Aug 2017 21:13:34 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:789ee77158dc69b2a7607a88178e3d9ec0fb6429693be2f626cf7a8ecbdeee70`  
		Last Modified: Mon, 24 Jul 2017 17:27:08 GMT  
		Size: 49.9 MB (49939044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758193f0361acbb72995ebf5345814cff46ba026db5b48ba79e4a1450e544828`  
		Last Modified: Mon, 24 Jul 2017 18:28:55 GMT  
		Size: 18.7 MB (18737609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac60a8540844125f4e7e2da0e37804601c181a86cce1ce236138342addd3158`  
		Last Modified: Mon, 24 Jul 2017 18:29:20 GMT  
		Size: 41.0 MB (40989946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d378d695b49182eaad05852775583c6f1eff0bc78417e6ffc8668e9e4984870`  
		Last Modified: Tue, 29 Aug 2017 20:12:53 GMT  
		Size: 115.6 MB (115645039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd44f50ebedb3870dc82c8a823179e921031d537dde0ddbcbd3c859be270cf6`  
		Last Modified: Tue, 29 Aug 2017 21:42:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a79d8687de6f7c782e89155b86d15151781780505a2865244278e45dc184c7`  
		Last Modified: Tue, 29 Aug 2017 21:42:58 GMT  
		Size: 23.4 MB (23373238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b190862a84fd2d68b81b3a218d64302a95dd06281e8f27ebdcde6d59ee2c05f7`  
		Last Modified: Tue, 29 Aug 2017 21:42:48 GMT  
		Size: 677.1 KB (677087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c3e53ae7986a60c18fe22d3e0b77dbe841c4368fe47663b45c429181ec2c9c`  
		Last Modified: Tue, 29 Aug 2017 21:42:47 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977e540270cccfc7769816bc9786e743bcd8476174208ce107ad4a64bcaf07a6`  
		Last Modified: Tue, 29 Aug 2017 21:44:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fa358af19a4457b0942719ca4c4fc704535b8dfeb97c34c003f6996b9c0cd4`  
		Last Modified: Tue, 29 Aug 2017 21:44:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; 386

```console
$ docker pull ruby@sha256:15fa73e8b0715fc164a39977d6baa13a69f3ac89e3b60dce8f65dd4daa350d71
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.2 MB (276196667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f66f06bfbe51998763f076f207600cf317d65a2479f8d415c74027477933c117`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 13:54:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:54:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 13:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 13:58:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 14:57:58 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 14:57:59 GMT
ENV RUBY_MAJOR=2.4
# Sat, 09 Sep 2017 14:57:59 GMT
ENV RUBY_VERSION=2.4.1
# Sat, 09 Sep 2017 14:57:59 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Sat, 09 Sep 2017 14:57:59 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 15:01:55 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 15:02:53 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 15:02:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 15:02:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 15:02:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 15:02:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 15:02:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 15:02:56 GMT
CMD ["irb"]
# Sat, 09 Sep 2017 15:03:00 GMT
RUN bundle config --global frozen 1
# Sat, 09 Sep 2017 15:03:01 GMT
RUN mkdir -p /usr/src/app
# Sat, 09 Sep 2017 15:03:01 GMT
WORKDIR /usr/src/app
# Sat, 09 Sep 2017 15:03:02 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Sat, 09 Sep 2017 15:03:02 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Sat, 09 Sep 2017 15:03:02 GMT
ONBUILD RUN bundle install
# Sat, 09 Sep 2017 15:03:02 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ed51718fa88831e0e4e7d7e02a316d71bc90cca2fb9a38748ac4aebeb93cb6`  
		Last Modified: Sat, 09 Sep 2017 13:59:44 GMT  
		Size: 21.6 MB (21594447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a132b3ed714237f1af4efef633d2269f3ac0bc805490cd8b705295d6dcccad17`  
		Last Modified: Sat, 09 Sep 2017 14:00:10 GMT  
		Size: 43.9 MB (43880727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168100f7169dc0f49603ae1de3efae40e9e57b546a593d84aca30e6a769e2759`  
		Last Modified: Sat, 09 Sep 2017 14:00:55 GMT  
		Size: 134.9 MB (134858199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e253d701c628a56ac7c0ebb6b6cf4a8e4685a496ce8615eddf57aeb5bf86d6`  
		Last Modified: Sat, 09 Sep 2017 15:13:42 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd62fc6ef203f87a80637fd9805a404075679512649c111e1c9a09a35f3af3a`  
		Last Modified: Sat, 09 Sep 2017 15:13:51 GMT  
		Size: 22.4 MB (22414136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba1515f5b8c9666f250bc68138fa4ca2369c200d33ec1a02ec59e6436e1d16dc`  
		Last Modified: Sat, 09 Sep 2017 15:13:42 GMT  
		Size: 675.3 KB (675344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fd52360bbcba3f5213a4b0f1cc6ebd3bac5530d8c437fafe4016e9a82a5683`  
		Last Modified: Sat, 09 Sep 2017 15:13:42 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9b79f12216c701202c5be903d6f2ce800e467060f1ca8bd3ade61b1e5e2775`  
		Last Modified: Sat, 09 Sep 2017 15:18:26 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9147182d8921c1faa4e165898f2535cc0e539e76ce89e3018779d8e44fff27`  
		Last Modified: Sat, 09 Sep 2017 15:18:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; ppc64le

```console
$ docker pull ruby@sha256:ffd1bde67e71b22e83b928ecf4622200e06a3cf97af8a48b2cbd05aa3d41b51f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260997810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eedbad8c4f1f122aced7c204a658b1806208dba0291af6b9d20e3f307a7efad2`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 25 Jul 2017 00:31:42 GMT
ADD file:d1b3c7fbf227f751780b65d5dc258e3ad2a8b5e123baf579499c6cd6fc2bf40c in / 
# Tue, 25 Jul 2017 00:31:42 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 00:59:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 00:59:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 25 Jul 2017 01:00:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 29 Aug 2017 15:52:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Sep 2017 00:20:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 06 Sep 2017 00:20:05 GMT
ENV RUBY_MAJOR=2.4
# Wed, 06 Sep 2017 00:20:06 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 06 Sep 2017 00:20:06 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Wed, 06 Sep 2017 00:20:06 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Wed, 06 Sep 2017 00:23:44 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 06 Sep 2017 00:23:44 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 06 Sep 2017 00:23:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 06 Sep 2017 00:23:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 06 Sep 2017 00:23:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 06 Sep 2017 00:23:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Sep 2017 00:23:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 06 Sep 2017 00:23:47 GMT
CMD ["irb"]
# Wed, 06 Sep 2017 00:23:51 GMT
RUN bundle config --global frozen 1
# Wed, 06 Sep 2017 00:23:52 GMT
RUN mkdir -p /usr/src/app
# Wed, 06 Sep 2017 00:23:52 GMT
WORKDIR /usr/src/app
# Wed, 06 Sep 2017 00:23:52 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 06 Sep 2017 00:23:52 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 06 Sep 2017 00:23:52 GMT
ONBUILD RUN bundle install
# Wed, 06 Sep 2017 00:23:53 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2558b8d0c81e976819176f7cc49994c4ba2fe6d263cb499d676bca335ff35e83`  
		Last Modified: Tue, 25 Jul 2017 00:35:06 GMT  
		Size: 51.8 MB (51819212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720896ec2206990f0dce04da6f0d38613a0686b17a8e6e8c7f5dc4d06c44fdf3`  
		Last Modified: Tue, 25 Jul 2017 01:12:29 GMT  
		Size: 19.2 MB (19199685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe06fb32e9ecd39f52e13e81251babc3640bfb24e4dd5cef49c86384d528210`  
		Last Modified: Tue, 25 Jul 2017 01:12:38 GMT  
		Size: 42.7 MB (42725300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b726f33c9ae7da3df07be01b27e4e262e58b7a1885f0c0b2fd3879ab1ceb5bab`  
		Last Modified: Tue, 29 Aug 2017 19:35:06 GMT  
		Size: 122.7 MB (122728382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945e005871a355eda14c5a5bab4723c8344aea8dd7f8334b96f3bb41d512c734`  
		Last Modified: Wed, 06 Sep 2017 00:30:32 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb173c9e90bec952ba17e5f294260f2d735f32e16865e9faee6dbb211f6cd08`  
		Last Modified: Wed, 06 Sep 2017 00:30:40 GMT  
		Size: 23.8 MB (23847364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f509daa5e3f95ed12e1db22e04dbccecb1591aaeb6a381bad0affa9f613b0e`  
		Last Modified: Wed, 06 Sep 2017 00:30:33 GMT  
		Size: 677.1 KB (677082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca14cdd22173b3511e7116ee7c59fca1eaa33c223664130c4d0fa771d08fb345`  
		Last Modified: Wed, 06 Sep 2017 00:30:33 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927676a1124198e07da8fbc7d8b7320b81312d9bcefbbd59527de89cb5515067`  
		Last Modified: Wed, 06 Sep 2017 00:31:29 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd994ee9b1952d5164e6bdb80aa5a8cc4fbdb923ac86d70cc19ec6010949d1f0`  
		Last Modified: Wed, 06 Sep 2017 00:31:29 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; s390x

```console
$ docker pull ruby@sha256:5458b6c8a0085aab96e8c48bec3cd44111e5e882eb537854d970f24b8a327c2d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (255997538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:542510f5d33c79242682b32386bbc15468968cc844282362959e6ba674bcd44b`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 05:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 05:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 05:50:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:03:55 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:03:56 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 17:03:56 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 17:03:56 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 17:03:56 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:06:49 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:06:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:06:51 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:06:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:06:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:06:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:06:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:06:54 GMT
CMD ["irb"]
# Fri, 08 Sep 2017 17:06:57 GMT
RUN bundle config --global frozen 1
# Fri, 08 Sep 2017 17:06:57 GMT
RUN mkdir -p /usr/src/app
# Fri, 08 Sep 2017 17:06:58 GMT
WORKDIR /usr/src/app
# Fri, 08 Sep 2017 17:06:58 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 08 Sep 2017 17:06:58 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 08 Sep 2017 17:06:58 GMT
ONBUILD RUN bundle install
# Fri, 08 Sep 2017 17:06:58 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5a344275c5d5a12a16990e9ddb7cfb9bc9b793cc51fbf8bf8993426e287c27`  
		Last Modified: Fri, 08 Sep 2017 16:41:52 GMT  
		Size: 19.5 MB (19470373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32fdba91ae3e80595e96b7af310b2ad8992e34ec9f462ff89c5e10439b198d07`  
		Last Modified: Fri, 08 Sep 2017 16:42:08 GMT  
		Size: 43.4 MB (43363772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b818a0891db653cb53027813b946fecd1182986efde2627ad39496dd33cae471`  
		Last Modified: Fri, 08 Sep 2017 16:42:33 GMT  
		Size: 115.9 MB (115919604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dabd6fae0386a9639055299eef3f89a92553ab4ba2349941ba381ab1749af54`  
		Last Modified: Fri, 08 Sep 2017 17:12:58 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df0c2872d0535e00fad3f734e18c48c6ba7f752f1e9e4319c6e7ada1b03b1b5`  
		Last Modified: Fri, 08 Sep 2017 17:13:06 GMT  
		Size: 23.8 MB (23777233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b439c47bb19e36389957f27e7bbc42550273c03848c0d223849e5a7de1b35ce9`  
		Last Modified: Fri, 08 Sep 2017 17:12:57 GMT  
		Size: 677.1 KB (677069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d47b236a979d195690ec5c5ccdcfe4634475b6a8ef6d65cd16ef1f1545b7d17`  
		Last Modified: Fri, 08 Sep 2017 17:12:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64bd4ee30a793d41243dfa811eb2d8fbb7fceba6f11fbf839deaef9ab500010`  
		Last Modified: Fri, 08 Sep 2017 17:13:29 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24bdd24136e31c337f4d8ec3eb10c6fe833835b5413a98980d091c0d8186db9`  
		Last Modified: Fri, 08 Sep 2017 17:13:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
