## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:93f1cff14276e3358b1d6471e02c3f8089c3064245ebfdb8b26dd2b63156f706
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

### `ruby:2-onbuild` - linux; amd64

```console
$ docker pull ruby@sha256:55a3eb049a96ddd526c6248b9a68d16603cd8fc7e69b063d239a8c4b19f6066f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.0 MB (273953872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07790caa7a97fa97bb596069767d3c1935c5093fcb17f41d7c18aa8564a38829`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:30:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:19:03 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 03:19:04 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 03:19:04 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 03:19:04 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 19:51:46 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 25 Oct 2017 19:25:37 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 19:28:35 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 19:28:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 19:28:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 19:28:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 19:28:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 19:28:37 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 19:32:20 GMT
RUN bundle config --global frozen 1
# Wed, 25 Oct 2017 19:32:20 GMT
RUN mkdir -p /usr/src/app
# Wed, 25 Oct 2017 19:32:21 GMT
WORKDIR /usr/src/app
# Wed, 25 Oct 2017 19:32:21 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 25 Oct 2017 19:32:21 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 25 Oct 2017 19:32:21 GMT
ONBUILD RUN bundle install
# Wed, 25 Oct 2017 19:32:21 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb98c08d57eb9aa8b8a810bcee569cbeab2e6828840f36deb1ef485b3ae16b2`  
		Last Modified: Mon, 09 Oct 2017 22:59:19 GMT  
		Size: 134.7 MB (134687179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19be186d87ce0ea5ed3da5aa4f6ec4d22477362707752054471919b7e4cc2b85`  
		Last Modified: Tue, 10 Oct 2017 03:59:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cab977990a8d43b0368da0a880b99ba6a56caed2dcd6b041ad89762d2c2e11`  
		Last Modified: Wed, 25 Oct 2017 20:00:37 GMT  
		Size: 24.2 MB (24178839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78086f6e1235078568bf40edc2f42be9be1f5fdc79395d0dbdfcf887d78b0b5`  
		Last Modified: Wed, 25 Oct 2017 20:00:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a644a123558d0a539e5161b3545103e726ca88134d14d160daebf4647bb237c`  
		Last Modified: Wed, 25 Oct 2017 20:03:03 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4459e7accffd147d81a1688c8d2c6d6404f7a75ba1f57c1610ab31c1dac8b285`  
		Last Modified: Wed, 25 Oct 2017 20:03:03 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; arm variant v5

```console
$ docker pull ruby@sha256:7804750ada043d7497abe2e0a25da630163265eb519ce0a4d2ddf4457ca28f03
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250084937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb663a8f5b03452b858d70e610f37476220080ceef8a6b5d2d0d7c7b1ae5fee`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:07 GMT
ADD file:cfee2e008c8ea154a9e6408e017dd40cc1b53f7c31932cec7fa8e1dc14649764 in / 
# Mon, 09 Oct 2017 21:42:07 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:12:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:12:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:13:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:15:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:37:17 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:37:17 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:37:17 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:37:18 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 01:32:51 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 02 Nov 2017 01:40:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 01:46:24 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 01:46:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 01:46:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 01:46:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 01:46:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 01:46:27 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 01:53:29 GMT
RUN bundle config --global frozen 1
# Thu, 02 Nov 2017 01:53:30 GMT
RUN mkdir -p /usr/src/app
# Thu, 02 Nov 2017 01:53:30 GMT
WORKDIR /usr/src/app
# Thu, 02 Nov 2017 01:53:30 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 02 Nov 2017 01:53:30 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 02 Nov 2017 01:53:31 GMT
ONBUILD RUN bundle install
# Thu, 02 Nov 2017 01:53:31 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:29dee24d6376416a80f3fdb145082e8dd352694bfdcf639e49e26ddbf8d8cb52`  
		Last Modified: Mon, 09 Oct 2017 21:47:16 GMT  
		Size: 50.9 MB (50879894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dffbd68139d082d5462baf2dcc79e9164c03c8aa02e40c979170c408d744c80b`  
		Last Modified: Mon, 09 Oct 2017 22:24:37 GMT  
		Size: 18.7 MB (18654351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25a8d00f5623c0cf6540a91059805ce464addb2a5a50059f743796346302529`  
		Last Modified: Mon, 09 Oct 2017 22:24:46 GMT  
		Size: 41.1 MB (41071202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f70cf8e24fc506bfff66944b0995d7b0a8d41bd4c0fb4563121c98a32944b1`  
		Last Modified: Mon, 09 Oct 2017 22:25:01 GMT  
		Size: 115.5 MB (115471060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35aea70c7a2524378bdd0ecfa883b80ea87dd24ff6c673145dac2f84d1ecf931`  
		Last Modified: Tue, 10 Oct 2017 01:13:02 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:399924f8fabdf283b92fd42d8d3c9ffffc27de986e86cac84d38f01a6b45b792`  
		Last Modified: Thu, 02 Nov 2017 02:15:53 GMT  
		Size: 24.0 MB (24007649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d524cdc7b6d16b09f2bded069b0466ffff49040c1a9521f997eaceab264f124`  
		Last Modified: Thu, 02 Nov 2017 02:15:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f948ed4667c70089305edcd07855af42cbc438b1c80b6ec16f88e791382c53a4`  
		Last Modified: Thu, 02 Nov 2017 02:17:34 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86f1ae0ad700251c16784f8cae68ede7feb226d940fb9e1f155e43689053edb`  
		Last Modified: Thu, 02 Nov 2017 02:17:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; arm variant v7

```console
$ docker pull ruby@sha256:ea3d78a3161da2bb113429757ce16d33e5f7b77a49ca2a022bbd8ced11af96ee
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.0 MB (245030632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52f8572f345b1036f079f3009455437250e52efb5eadb42dc5230535aa24151c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:19 GMT
ADD file:68eabcdf7d9c5518c34f691d547b77534be3929ad958c8835c5d4a54114c7ee4 in / 
# Mon, 09 Oct 2017 21:42:20 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:17:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:17:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:19:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 00:12:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 02 Nov 2017 01:20:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 02 Nov 2017 01:20:45 GMT
ENV RUBY_MAJOR=2.4
# Thu, 02 Nov 2017 01:20:46 GMT
ENV RUBY_VERSION=2.4.2
# Thu, 02 Nov 2017 01:20:46 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Thu, 02 Nov 2017 01:20:47 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 02 Nov 2017 01:20:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 01:26:00 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 01:26:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 01:26:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 01:26:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 01:26:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 01:26:09 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 01:33:15 GMT
RUN bundle config --global frozen 1
# Thu, 02 Nov 2017 01:33:22 GMT
RUN mkdir -p /usr/src/app
# Thu, 02 Nov 2017 01:33:22 GMT
WORKDIR /usr/src/app
# Thu, 02 Nov 2017 01:33:23 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 02 Nov 2017 01:33:23 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 02 Nov 2017 01:33:24 GMT
ONBUILD RUN bundle install
# Thu, 02 Nov 2017 01:33:25 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e52c47bf5ccb0baf5e58ae2e958abbb260f942d8743078a07a367079102e162f`  
		Last Modified: Mon, 09 Oct 2017 21:48:44 GMT  
		Size: 48.7 MB (48686311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd486ac73440295f728f6eadb49eabdf58a6cad76cf3c8e36ef7a32894278271`  
		Last Modified: Mon, 09 Oct 2017 22:31:21 GMT  
		Size: 18.3 MB (18262741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2aef63d92f28cede17dbc2fa087b4521783b77f8a04a8da664fd65b7c5198`  
		Last Modified: Mon, 09 Oct 2017 22:31:42 GMT  
		Size: 39.7 MB (39704394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fde5450755e26d931354dcc90e8dabde2e6885db6ce0695b541d34fe6762bb3`  
		Last Modified: Thu, 02 Nov 2017 00:24:41 GMT  
		Size: 114.5 MB (114493245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e920a73585ed5a00749c8cafd089798e75cf1cb3bbbd7cc784734696b679d35`  
		Last Modified: Thu, 02 Nov 2017 01:56:00 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdb565c21da2b3d823425d9146f8d4e38e6322441a17652b75bcf745bebeeee`  
		Last Modified: Thu, 02 Nov 2017 01:56:08 GMT  
		Size: 23.9 MB (23883159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab5527574c77a461f1e0759a4d5e196beb106676c8fc8a3e2ac3e55c8f90fbe`  
		Last Modified: Thu, 02 Nov 2017 01:56:00 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a769916079266fa8c5ec342de66bd2f4874807fc780b663a7cb697e59c410e`  
		Last Modified: Thu, 02 Nov 2017 01:58:18 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb462f5659c9b67963ba368a05036594476c8432e610aad281191ad3ec6ad670`  
		Last Modified: Thu, 02 Nov 2017 01:58:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:1ec1efa64064f5729974ef860071587ed7fde048e3f2c946ec84b76e1e5f1db7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249465826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6707bf56c7e156e6dae073cbf2aabc66f6c63a810192cdbbc424eb9bb8068e12`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:43:13 GMT
ADD file:1661271485aa5a1ca074498b8ca025f41e547bf2b33335b108d9aaa06717b2a5 in / 
# Mon, 09 Oct 2017 21:43:14 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:39:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:39:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:41:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:51:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:32:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 07:32:48 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 07:32:49 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 07:32:50 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 20:57:56 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 25 Oct 2017 21:08:21 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 21:15:54 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 21:15:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 21:15:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 21:15:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 21:15:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 21:15:58 GMT
CMD ["irb"]
# Wed, 25 Oct 2017 21:25:59 GMT
RUN bundle config --global frozen 1
# Wed, 25 Oct 2017 21:26:00 GMT
RUN mkdir -p /usr/src/app
# Wed, 25 Oct 2017 21:26:01 GMT
WORKDIR /usr/src/app
# Wed, 25 Oct 2017 21:26:02 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 25 Oct 2017 21:26:02 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 25 Oct 2017 21:26:03 GMT
ONBUILD RUN bundle install
# Wed, 25 Oct 2017 21:26:03 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:abcff42ba939437677463734d9b81de5e60df7354c734ee3ddd879c0d3d5d595`  
		Last Modified: Mon, 09 Oct 2017 21:52:08 GMT  
		Size: 49.9 MB (49929310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3eea24e7c11451963104c40894381c41b9efc0c36165352be38c74f40da7cc7`  
		Last Modified: Mon, 09 Oct 2017 23:28:06 GMT  
		Size: 18.7 MB (18738058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55f6271a8b3615caad80877c6727a9fc25abee93f70dcd8d6af4edabfeeb42a`  
		Last Modified: Mon, 09 Oct 2017 23:28:47 GMT  
		Size: 41.0 MB (40990042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d814d5e76f4d20ca0b41f1dfe356fc11db2d919781c0f00c0ac45a1921e58eea`  
		Last Modified: Mon, 09 Oct 2017 23:29:38 GMT  
		Size: 115.6 MB (115649949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9667127fd52f129cfc89554e18d9557b180fc77ab07ccc8a349afd1ac17fab`  
		Last Modified: Tue, 10 Oct 2017 08:40:19 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3487c62fd6a74c9e5b5cb40276f6183f5479beb244ce2233afd3059767f4d40b`  
		Last Modified: Wed, 25 Oct 2017 22:01:29 GMT  
		Size: 24.2 MB (24157781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1b9471be5e246125d7295bd8cc45dbc9e326f299771989f588aae3461e92fe`  
		Last Modified: Wed, 25 Oct 2017 22:01:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9796fb614538e1b3725d2076b1cf4b54138ea7e92a158df5f0e7e84c1b097e`  
		Last Modified: Wed, 25 Oct 2017 22:05:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e21f545da964ed8bba2e0f03d618239e620b28e265faa16191a55255f81d`  
		Last Modified: Wed, 25 Oct 2017 22:05:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; 386

```console
$ docker pull ruby@sha256:ae6ad4351ed7a8b41935ad8d06383b83caa28469096eb1d8cae8f438c03393d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276292885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e644c473f8d2d936645ffd9385a8ba849a44027888a35f818c5b3298eab3a0b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:15 GMT
ADD file:69555c5f78a887c075ee9d9449d85a723324e07872867c7f577e7fa99f6d41c0 in / 
# Mon, 09 Oct 2017 21:42:15 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:58:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:58:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:01:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:06:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:44:48 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:44:48 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:44:48 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:44:48 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 02:47:15 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 26 Oct 2017 02:59:37 GMT
ENV BUNDLER_VERSION=1.15.4
# Thu, 26 Oct 2017 03:03:39 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 26 Oct 2017 03:03:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 03:03:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 03:03:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 03:03:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 03:03:40 GMT
CMD ["irb"]
# Thu, 26 Oct 2017 03:08:18 GMT
RUN bundle config --global frozen 1
# Thu, 26 Oct 2017 03:08:19 GMT
RUN mkdir -p /usr/src/app
# Thu, 26 Oct 2017 03:08:19 GMT
WORKDIR /usr/src/app
# Thu, 26 Oct 2017 03:08:19 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 26 Oct 2017 03:08:20 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 26 Oct 2017 03:08:20 GMT
ONBUILD RUN bundle install
# Thu, 26 Oct 2017 03:08:20 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e0f8ffe748163b60817bbe75e602fd998e062587f8802da580ccdb711e5d6b6e`  
		Last Modified: Mon, 09 Oct 2017 21:48:11 GMT  
		Size: 52.8 MB (52773848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a231408e4353a3649b3f45db871f8f6823088270a8319239d3819fd2ef0501b3`  
		Last Modified: Mon, 09 Oct 2017 23:37:27 GMT  
		Size: 21.6 MB (21594870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c5e5ef1f110977e0931f2fcbc49c9f550e6b93813727de7e4432f85d99218c`  
		Last Modified: Mon, 09 Oct 2017 23:37:53 GMT  
		Size: 43.9 MB (43880551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ef7f1a844c0d564af306374096859157d25cb6572aa66d2f3317201233a842`  
		Last Modified: Mon, 09 Oct 2017 23:38:30 GMT  
		Size: 134.9 MB (134858795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90302bac7dbd205509ba97139d55d72036c4787a67c4718c313bc2153555058f`  
		Last Modified: Tue, 10 Oct 2017 03:23:33 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecbb86278a38cde043bca9f5fd0fa481e3abbc9dd7272d7c95b34eada60d887`  
		Last Modified: Thu, 26 Oct 2017 03:28:03 GMT  
		Size: 23.2 MB (23184132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e9d3ae8fcb8a78e901afb54068f308305a16c0163a57d486d087e08ca1719c`  
		Last Modified: Thu, 26 Oct 2017 03:27:58 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd35810c33c4592807cde3c3f244cdf924a73d90c3431cfb64a8583755b8e058`  
		Last Modified: Thu, 26 Oct 2017 03:29:58 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72cbda3b90356e796e73377f5c7c26d7cfee73c64cbd6420b88049c94420404e`  
		Last Modified: Thu, 26 Oct 2017 03:29:58 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; ppc64le

```console
$ docker pull ruby@sha256:8e436ec331ed60c21aaddf0de2394f890fe6dc7f4d18071b71b03622861e091c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261122331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f37fd01b78d643122a3a5e554d65b1cdd3ba0f134f9b1bbfa00f8d15eb0295`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:51 GMT
ADD file:c62750f1e0dbf2b729abca09eb7927f2ee4fa8311dc40ae8066a53a4f1c85059 in / 
# Mon, 09 Oct 2017 21:42:53 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:55:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:55:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 23:00:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:29:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 04:35:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 11 Oct 2017 04:35:57 GMT
ENV RUBY_MAJOR=2.4
# Wed, 11 Oct 2017 04:35:59 GMT
ENV RUBY_VERSION=2.4.2
# Wed, 11 Oct 2017 04:36:02 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 04:36:04 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 02 Nov 2017 00:52:03 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 00:56:43 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 00:56:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 00:56:46 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 00:56:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 00:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 00:56:54 GMT
CMD ["irb"]
# Thu, 02 Nov 2017 01:08:09 GMT
RUN bundle config --global frozen 1
# Thu, 02 Nov 2017 01:08:12 GMT
RUN mkdir -p /usr/src/app
# Thu, 02 Nov 2017 01:08:14 GMT
WORKDIR /usr/src/app
# Thu, 02 Nov 2017 01:08:16 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 02 Nov 2017 01:08:17 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 02 Nov 2017 01:08:19 GMT
ONBUILD RUN bundle install
# Thu, 02 Nov 2017 01:08:21 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:0f531bde4b154605e2d6339e50b65d65d06568d747b8bef594269dd06602062f`  
		Last Modified: Mon, 09 Oct 2017 21:48:50 GMT  
		Size: 51.8 MB (51809739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e89885275517e26348ed4e0233ba2840ced4a5353d0672d6b9c7eacc3cd124`  
		Last Modified: Tue, 10 Oct 2017 00:55:23 GMT  
		Size: 19.2 MB (19201020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe1a37bca48df96195d1cc5d94de50074b535c1ac9ae5c1feb2a7d0daca610e`  
		Last Modified: Tue, 10 Oct 2017 00:55:50 GMT  
		Size: 42.7 MB (42731161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186539c4e3a11aa6fa3b5f09347f572802d1e2504ad06cb1c669abb21255478`  
		Last Modified: Wed, 11 Oct 2017 04:18:21 GMT  
		Size: 122.7 MB (122734290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99036dc3587d8ee84169c31ba6900368df2f622b3366be0d36fdcf737c3dd7c3`  
		Last Modified: Wed, 11 Oct 2017 04:58:38 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5d0fb1f98e4d1bc4d648404ac558283e99c84e5187a96b2b01b5b5854424bc`  
		Last Modified: Thu, 02 Nov 2017 01:47:18 GMT  
		Size: 24.6 MB (24645343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5572eb49dc50a1a4cbbaa78517b2c42e341692b7daec6c88be6f02be255ed56`  
		Last Modified: Thu, 02 Nov 2017 01:47:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202a9ac4fb02290c8d455377ccca14d8019289958b904f20c393eef26c4b270d`  
		Last Modified: Thu, 02 Nov 2017 01:49:23 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078dd4f797062c98ae0c58dc97709834c910c9ee8c77c966c1771c0838ce4c38`  
		Last Modified: Thu, 02 Nov 2017 01:49:23 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-onbuild` - linux; s390x

```console
$ docker pull ruby@sha256:78fd0cedf46a5dd3d321e9144b1ffb61ff11a77a6651e87abbc1fdc9500f6b58
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.1 MB (256086998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e984744c6b9be0d9068f03cf6e9be2244a6a832bdd0d896e81de6dec919462cf`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:42:23 GMT
ADD file:1c306ad85a0adf89bf603a6f6a34a1059ddfa0811704a847df3e785c487ee58f in / 
# Mon, 09 Oct 2017 21:42:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:10:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:11:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:12:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:56:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:56:34 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:56:34 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:56:34 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Wed, 11 Oct 2017 08:35:51 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 26 Oct 2017 08:42:58 GMT
ENV BUNDLER_VERSION=1.15.4
# Thu, 26 Oct 2017 08:45:51 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 26 Oct 2017 08:45:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 26 Oct 2017 08:45:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 26 Oct 2017 08:45:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 08:45:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 26 Oct 2017 08:45:53 GMT
CMD ["irb"]
# Thu, 26 Oct 2017 08:50:05 GMT
RUN bundle config --global frozen 1
# Thu, 26 Oct 2017 08:50:05 GMT
RUN mkdir -p /usr/src/app
# Thu, 26 Oct 2017 08:50:06 GMT
WORKDIR /usr/src/app
# Thu, 26 Oct 2017 08:50:06 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 26 Oct 2017 08:50:06 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 26 Oct 2017 08:50:07 GMT
ONBUILD RUN bundle install
# Thu, 26 Oct 2017 08:50:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:a0a92d62c165393786de44f21509e9a71868aa7c2765f0334d285aa2aa19a58f`  
		Last Modified: Mon, 09 Oct 2017 21:46:27 GMT  
		Size: 52.8 MB (52788868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fbe5b310182c757ab3228a9ffed355ef25e28e7581d9ef1235cd8615314d64`  
		Last Modified: Mon, 09 Oct 2017 22:19:54 GMT  
		Size: 19.5 MB (19470778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786612754fecc4cad8acb7a2b2faf483e0ec360faca43e4798d4fd81352d815d`  
		Last Modified: Mon, 09 Oct 2017 22:20:10 GMT  
		Size: 43.4 MB (43363221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de653d2dc8643370d94d8caf6dd57de54b740aef344200e9181bf466b62d9140`  
		Last Modified: Mon, 09 Oct 2017 22:20:36 GMT  
		Size: 115.9 MB (115923938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f0f6c689bf0568ea45a5c1b149e69253a40fdadc3365a0ee500a520162eeb2`  
		Last Modified: Tue, 10 Oct 2017 00:16:00 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcd7598f016250e8ef8736dfcdd9ba7d8c57613d09e15d6ae6dcfc747da9143`  
		Last Modified: Thu, 26 Oct 2017 09:09:01 GMT  
		Size: 24.5 MB (24539507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b68d79fc621aee8dca341f61bd39091231bc55afa2d3bfb827d7c6b327f26f`  
		Last Modified: Thu, 26 Oct 2017 09:08:55 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a559f6bb9fedccd4334aeb26c1b73817ff7bf5d515808e72461aa16fbbc62c62`  
		Last Modified: Thu, 26 Oct 2017 09:10:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b0a62714a1d019d38a39b9f1bfc5418bb6bde54a7767d5ef63da7d5e97e51`  
		Last Modified: Thu, 26 Oct 2017 09:10:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
