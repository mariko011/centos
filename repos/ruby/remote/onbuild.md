## `ruby:onbuild`

```console
$ docker pull ruby@sha256:02da8b5a32ac2110df42dc7a9c588b02992a6121a11a89955b2948d710b795fb
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

### `ruby:onbuild` - linux; amd64

```console
$ docker pull ruby@sha256:4ba7a2728748fd7b5f89c43e0ffa7696e398f450a95d76a8230d541c652c00ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272116754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863a291fe6572b691209bc15ecaf6cefee41f063b558491c09b7a3a1b00150f7`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 13 Sep 2017 08:40:43 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Wed, 13 Sep 2017 08:40:43 GMT
CMD ["bash"]
# Wed, 13 Sep 2017 12:32:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:32:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 13 Sep 2017 12:33:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 12:34:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:52:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:52:40 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:04:56 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:04:56 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:04:57 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:08:05 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:09:15 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:09:17 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:09:18 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:09:18 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:09:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:09:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:09:19 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:13:17 GMT
RUN bundle config --global frozen 1
# Fri, 15 Sep 2017 20:13:18 GMT
RUN mkdir -p /usr/src/app
# Fri, 15 Sep 2017 20:13:18 GMT
WORKDIR /usr/src/app
# Fri, 15 Sep 2017 20:13:18 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 15 Sep 2017 20:13:18 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 15 Sep 2017 20:13:18 GMT
ONBUILD RUN bundle install
# Fri, 15 Sep 2017 20:13:18 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a33158a1367c7c4103c89ae66e8f4fdec4ada6a39d4648cf254b32296d6668`  
		Last Modified: Wed, 13 Sep 2017 12:54:21 GMT  
		Size: 19.3 MB (19263717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67323742a64d3540e24632f6d77dfb02e72301c00d1e9a3c28e0ef15478fff9`  
		Last Modified: Wed, 13 Sep 2017 12:54:47 GMT  
		Size: 43.2 MB (43227774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b45e832c38de44fbab83d5fcf9cbf66d069a51e6462d89ccc050051f25926d`  
		Last Modified: Wed, 13 Sep 2017 12:55:22 GMT  
		Size: 134.7 MB (134684500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d1736737e7ea666709bec11741051fbba7c8f896d17570c82c978413cb3312`  
		Last Modified: Thu, 14 Sep 2017 03:51:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9ee2ac5f2bc2844dda4cc5e7d0165658485436f3a46a7c99f197dff2ff8b65`  
		Last Modified: Fri, 15 Sep 2017 20:51:40 GMT  
		Size: 21.7 MB (21667470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06841dcf029d0918b5fd890f8b0f8829ad669763f2e752cfa4f65fc9fd7101f1`  
		Last Modified: Fri, 15 Sep 2017 20:51:34 GMT  
		Size: 677.1 KB (677060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e9625fbb40297355bc0fc156139ff77eea59a95e1f630201c2660bb8141c7cc`  
		Last Modified: Fri, 15 Sep 2017 20:51:32 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a120ceb80d7f4377377627ab5cdb7af3a8b3da5e417f3c701e3dbdb45819068`  
		Last Modified: Fri, 15 Sep 2017 20:53:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003b4c40ab80f500b36e7a8700f7e0ff233cbeebf619c9e8a4d1f2bb0dfc44da`  
		Last Modified: Fri, 15 Sep 2017 20:53:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:onbuild` - linux; arm variant v5

```console
$ docker pull ruby@sha256:f5a50e6c0f24c5ae749f0e219644d7b5d0c894de325db75af6f7e636b202c3f7
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248252567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32c9a0e700ab6c60f9e72985ba612266f6b2d9526495f7355fbf71bf891a3fc`
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
# Tue, 10 Oct 2017 00:37:18 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:43:06 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:43:07 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:43:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:43:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:43:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:43:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:43:15 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:43:15 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:51:25 GMT
RUN bundle config --global frozen 1
# Tue, 10 Oct 2017 00:51:27 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 00:51:27 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 00:51:27 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 10 Oct 2017 00:51:28 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 00:51:28 GMT
ONBUILD RUN bundle install
# Tue, 10 Oct 2017 00:51:28 GMT
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
	-	`sha256:c31ba48b46ba853fd4247fd8ccccfb346536c7c168531339315222f80e228608`  
		Last Modified: Tue, 10 Oct 2017 01:13:11 GMT  
		Size: 21.5 MB (21498165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a188088a088863588bb198c0af0ca0bb42627ff3c87e19841d9c0cacfb04654e`  
		Last Modified: Tue, 10 Oct 2017 01:13:02 GMT  
		Size: 677.1 KB (677112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa1581f7b182e9e235af053091665a414db22079b25360eb9a618949e1c82f8`  
		Last Modified: Tue, 10 Oct 2017 01:13:02 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4544a62f78a6865bf7c0265e8426e55a45b0dbcadb84838b9c0c846d014f6c3`  
		Last Modified: Tue, 10 Oct 2017 01:14:20 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c2e413123c84edbd07312e4094a9795c52607c24d19c13c3c25da01edccf59`  
		Last Modified: Tue, 10 Oct 2017 01:14:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:onbuild` - linux; arm variant v7

```console
$ docker pull ruby@sha256:b48414b54ad979cbab8fa3e3927139c984db06541267418ff9e0c88b5e9dffea
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242528070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff87f1cf7858da45eb0d43a199a95c6b6c8d688d740c3339852fa745efdaa91`
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
# Mon, 09 Oct 2017 22:20:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:27:44 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:27:45 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:27:45 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:27:45 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 00:27:45 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:33:07 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:33:08 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:33:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:33:11 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:33:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:33:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:33:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:33:14 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:40:08 GMT
RUN bundle config --global frozen 1
# Tue, 10 Oct 2017 00:40:09 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 00:40:09 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 00:40:09 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 10 Oct 2017 00:40:10 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 00:40:10 GMT
ONBUILD RUN bundle install
# Tue, 10 Oct 2017 00:40:10 GMT
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
	-	`sha256:7b3c2155fc2131e5666dd5c37fc498d56a3fabc19709d3fdebda0d8eedee4974`  
		Last Modified: Mon, 09 Oct 2017 22:32:16 GMT  
		Size: 113.8 MB (113821669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e942a1d99dbcab721fc714a1a3acc0c50afe61bf5c30b66d270995ab950c97c2`  
		Last Modified: Tue, 10 Oct 2017 01:01:35 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f756c51673707b572b13fbcad75ebaf7ead4ef16506ebb086b737fb784a218`  
		Last Modified: Tue, 10 Oct 2017 01:01:43 GMT  
		Size: 21.4 MB (21375065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56d2cfeada89bf4b7eeee8583a07e08292237dbcbbece7a6fb90450322506ba`  
		Last Modified: Tue, 10 Oct 2017 01:01:35 GMT  
		Size: 677.1 KB (677113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f17e347b22e107fe0b6b8d11e2c953bb502cdd39f411fbb71c32fda8b1d26c5`  
		Last Modified: Tue, 10 Oct 2017 01:01:35 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e9f1af616cf021f5b497d15b7f7d9a85217fe08681979243755a824bbef572`  
		Last Modified: Tue, 10 Oct 2017 01:04:00 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040aab610f7fdd1b73b9e5e01d1dda1edcff3cb322a2f4c9f4c8ee8bfa358283`  
		Last Modified: Tue, 10 Oct 2017 01:03:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:onbuild` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:95056decf7d5dc880e7a590cf8d5d43f12d9361484652e0d5879e14f5f5032cb
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247625655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9f1dbb67547441e85969f7ca5c092976472cd80336359a52932a063473fd60c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 18:32:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:32:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 18:34:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 18:42:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 23:33:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 23:33:39 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:57:14 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:57:15 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:57:16 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 21:04:43 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 21:04:44 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 21:04:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 21:04:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 21:04:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 21:04:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 21:04:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 21:04:51 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 21:15:00 GMT
RUN bundle config --global frozen 1
# Fri, 15 Sep 2017 21:15:02 GMT
RUN mkdir -p /usr/src/app
# Fri, 15 Sep 2017 21:15:02 GMT
WORKDIR /usr/src/app
# Fri, 15 Sep 2017 21:15:03 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 15 Sep 2017 21:15:03 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 15 Sep 2017 21:15:04 GMT
ONBUILD RUN bundle install
# Fri, 15 Sep 2017 21:15:05 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16e054bfb02234c6e2b5305981d365c3b31101ec460b0d90df3b099305c03196`  
		Last Modified: Thu, 14 Sep 2017 22:01:15 GMT  
		Size: 18.7 MB (18737603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498121800d24d5e5d3f5d851e16ca4b4b663cabd018a246961dca07ae046f06b`  
		Last Modified: Thu, 14 Sep 2017 22:01:47 GMT  
		Size: 41.0 MB (40988522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f6cc0761da5c1bc61d59c5cbe9188f22bc173d6f1038d6cccf1292f0b79594`  
		Last Modified: Thu, 14 Sep 2017 22:02:40 GMT  
		Size: 115.6 MB (115645790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467c850e60ca7d5ba2b320d32629b8b646d9e06e65180c081100c8460040534a`  
		Last Modified: Fri, 15 Sep 2017 00:02:52 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8e5eb9e637bf7a7c4a43dcd817038d73cd7c0c34f7ba894da6b9b4137231cb`  
		Last Modified: Fri, 15 Sep 2017 21:46:25 GMT  
		Size: 21.6 MB (21646542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8141acb04307700651014992647364e0df277869eb0a1a2edc029b1bb2def6a`  
		Last Modified: Fri, 15 Sep 2017 21:46:17 GMT  
		Size: 677.1 KB (677056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b63568175ca33faf84508d8097ecf10f77e5f69fb6994c0f6c7d1b6cd2e1622`  
		Last Modified: Fri, 15 Sep 2017 21:46:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef532c9cec06ae7929e223d27f9b363deea7bce334a2d114be94c632e28722c`  
		Last Modified: Fri, 15 Sep 2017 21:49:06 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3c5398215a351e2e5e2ddb85e2147abcebf34567f6c5b935d96e189776e157`  
		Last Modified: Fri, 15 Sep 2017 21:49:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:onbuild` - linux; 386

```console
$ docker pull ruby@sha256:5d34434a50eff9aff4306ec9c4b33dde408edb794451fd74127553eab9399461
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274493636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad2e0d195003ac19943eb3a70999a0844c251d4c8b6af14f13ac07e17f7a17aa`
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
# Tue, 10 Oct 2017 02:44:48 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 02:50:06 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 02:51:23 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 02:51:25 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 02:51:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 02:51:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 02:51:25 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:51:26 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 02:51:26 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 02:57:43 GMT
RUN bundle config --global frozen 1
# Tue, 10 Oct 2017 02:57:44 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 02:57:44 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 02:57:44 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 10 Oct 2017 02:57:44 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 02:57:45 GMT
ONBUILD RUN bundle install
# Tue, 10 Oct 2017 02:57:45 GMT
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
	-	`sha256:22e00ed6777acffba6f508fc2f1ef684eb70642ef134a31353296a6de39d9556`  
		Last Modified: Tue, 10 Oct 2017 03:23:39 GMT  
		Size: 20.7 MB (20707825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f164bf64a4d888b0ba474a2cccf51c28981b187270309d5aa3ccef0cdac663`  
		Last Modified: Tue, 10 Oct 2017 03:23:33 GMT  
		Size: 677.1 KB (677059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1bba120b94c77dfc001c556946b888f29c2d64de0c41796956c48d77cb84fe`  
		Last Modified: Tue, 10 Oct 2017 03:23:33 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77fe6a84480cbfe583d319305940cb57c3574ad5ef6c3a89172954017713ba2f`  
		Last Modified: Tue, 10 Oct 2017 03:25:37 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d065914557d2d1f074f80cac383c3b689827e0749d622ba728f1b3a63a8fa4a`  
		Last Modified: Tue, 10 Oct 2017 03:25:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:onbuild` - linux; ppc64le

```console
$ docker pull ruby@sha256:83daf8b99f1a8f3854f5a793043450b022e459423ed0034dd044c1bb7d85b392
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259253806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74e5d400f71044ebb9fd235cea4e8076264fbe3f4e5164c247758c0638cd7d37`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 01:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:03:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 08 Sep 2017 01:04:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 01:05:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 15 Sep 2017 01:58:38 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 15 Sep 2017 01:58:40 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:24:30 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:24:33 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:24:36 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:30:28 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:30:32 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:30:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:30:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:30:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:30:54 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:31:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:31:05 GMT
CMD ["irb"]
# Fri, 15 Sep 2017 20:47:00 GMT
RUN bundle config --global frozen 1
# Fri, 15 Sep 2017 20:47:10 GMT
RUN mkdir -p /usr/src/app
# Fri, 15 Sep 2017 20:47:13 GMT
WORKDIR /usr/src/app
# Fri, 15 Sep 2017 20:47:17 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Fri, 15 Sep 2017 20:47:19 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Fri, 15 Sep 2017 20:47:24 GMT
ONBUILD RUN bundle install
# Fri, 15 Sep 2017 20:47:27 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48596af2c38701f94440e222bf8f3d4b2da85e2982c97ae15186eba523249e0b`  
		Last Modified: Thu, 14 Sep 2017 22:21:02 GMT  
		Size: 19.2 MB (19199596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb50d2f41608755ef40ba4bd126fcb6e790d99a751079c32edae61c9ebad7a9`  
		Last Modified: Thu, 14 Sep 2017 22:21:29 GMT  
		Size: 42.7 MB (42728149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade55670af5d621ffaed3b528ca5af97655b36bfbe022557861d40a4f00be68`  
		Last Modified: Thu, 14 Sep 2017 22:22:15 GMT  
		Size: 122.7 MB (122728339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d9a62b9cfbe26746b1f3c157d07274cdb60156683259319194c2706ce03608`  
		Last Modified: Fri, 15 Sep 2017 02:18:43 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ab08efdb3e181ab743cd6ba022fea656e5d03eb36fcdc6c708276f3a535d64`  
		Last Modified: Fri, 15 Sep 2017 21:36:31 GMT  
		Size: 22.1 MB (22110270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85f68c156d2ed9f2bd5dd336a591f0d1048197738b70b490f26675e01f667f4`  
		Last Modified: Fri, 15 Sep 2017 21:36:24 GMT  
		Size: 677.1 KB (677103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca296cc877006b75f20406553ee5e856763b6a1132e260d0b3bff299d580f94`  
		Last Modified: Fri, 15 Sep 2017 21:36:24 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f771cf264c535382472d81caa0d0bf4a7195e68a2f2b2ccb5b62554391ef6f82`  
		Last Modified: Fri, 15 Sep 2017 21:38:33 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:585cd2f4cce27a72c4d755853ed92c6232a89a6a060f620988de993b3a4184db`  
		Last Modified: Fri, 15 Sep 2017 21:38:33 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:onbuild` - linux; s390x

```console
$ docker pull ruby@sha256:4393a9a173d360f5c0b14aa96655c2df7ddaa2cd1554a18c417250ac48c21754
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254298214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb05f47e8c4d8042b8f24853ff966e7935ec6d922cffda05508121508c3489f6`
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
# Mon, 09 Oct 2017 23:56:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 09 Oct 2017 23:59:31 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 09 Oct 2017 23:59:32 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 09 Oct 2017 23:59:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 09 Oct 2017 23:59:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 09 Oct 2017 23:59:33 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 09 Oct 2017 23:59:33 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:59:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 09 Oct 2017 23:59:34 GMT
CMD ["irb"]
# Tue, 10 Oct 2017 00:03:19 GMT
RUN bundle config --global frozen 1
# Tue, 10 Oct 2017 00:03:19 GMT
RUN mkdir -p /usr/src/app
# Tue, 10 Oct 2017 00:03:20 GMT
WORKDIR /usr/src/app
# Tue, 10 Oct 2017 00:03:20 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 10 Oct 2017 00:03:20 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 10 Oct 2017 00:03:20 GMT
ONBUILD RUN bundle install
# Tue, 10 Oct 2017 00:03:20 GMT
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
	-	`sha256:3e1616a8a61654f44b4773de3c9fa522632e4be74007b1f75d9516b406e56509`  
		Last Modified: Tue, 10 Oct 2017 00:16:05 GMT  
		Size: 22.1 MB (22073678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ba029ee0803b58a5f320be41dea851a8dde84be1fed39c4bd1b24c94abbe2b4`  
		Last Modified: Tue, 10 Oct 2017 00:16:00 GMT  
		Size: 677.0 KB (677045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b68f21b06db5899e81cd8dd90767b5f4d147cbc2be2955d49cd8a68ece0506`  
		Last Modified: Tue, 10 Oct 2017 00:16:00 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd953c6203230cb278fe26f7beeba1c2009b3ddff92e71cd08727d08f27ae0be`  
		Last Modified: Tue, 10 Oct 2017 00:17:37 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856d00fa79aef62437782a4c03812d9e2ed9eb9ba5291048c6b38a7a0236cac9`  
		Last Modified: Tue, 10 Oct 2017 00:17:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
