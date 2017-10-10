## `ruby:jessie`

```console
$ docker pull ruby@sha256:85f712f47fd830bd22b3d58cb33ead8181c5ed6814872ec88f90189ceb31b475
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

### `ruby:jessie` - linux; amd64

```console
$ docker pull ruby@sha256:bb9d8f2d56aed3fa614e37ab03fd421a6430d2a6f123b43ebdf1f6ed17bc34a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272116436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644265ce7e58ae4ee0828418edf88c426d21068397e054103d48aa4c0f3e8dba`
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

### `ruby:jessie` - linux; arm variant v5

```console
$ docker pull ruby@sha256:0b97efc40153e086d318ef66a08c261bb8ed711bba86cfe0f12f1a64e298875f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248252188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4fff5dc90ab193320d761435d1c38a8f0b0844bdc57dc57b33dd086e350122`
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

### `ruby:jessie` - linux; arm variant v7

```console
$ docker pull ruby@sha256:3bc5ad0b02b69687777dc4a639d3f31fcf0a0dd3138fbf89d313f088c8962f34
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242527692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a23171afb9335f28d735440fa9c1654ca813d0a2094107f033e97e503f3e49ee`
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

### `ruby:jessie` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:609ae0213d3d34ffe63f3773bc77bf661411eceb5672531e3ca6c94fe065497d
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.6 MB (247625338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b91c808c6d7add699da76be6fe148e44bda5cc98d2131a0fab94f7937cd958`
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

### `ruby:jessie` - linux; 386

```console
$ docker pull ruby@sha256:9cebf73c4fb39d04d8a2c7bd5d274656273b4b2ff56ae361efebd9beda87434c
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274464052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb941df20979e797d54bbc9f852d966e59d2945129c2b11ddccfd73878f2e35b`
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
# Fri, 15 Sep 2017 20:10:13 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:10:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:10:14 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:14:04 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:14:44 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:14:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:14:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:14:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:14:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:14:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:14:46 GMT
CMD ["irb"]
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
	-	`sha256:40294ef353eeb867b2154d727b9df0f09b28610691b388791076e7cd8322aa3d`  
		Last Modified: Fri, 15 Sep 2017 20:54:03 GMT  
		Size: 20.7 MB (20681826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df18d39574190e058a7781d3831e217eb717ed88da9d0fa55928cc6dea28352d`  
		Last Modified: Fri, 15 Sep 2017 20:53:55 GMT  
		Size: 675.4 KB (675358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49869723e19e0c80627128626da3d435d5190f92b7b764a30c614a480a0d8f01`  
		Last Modified: Fri, 15 Sep 2017 20:53:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:jessie` - linux; ppc64le

```console
$ docker pull ruby@sha256:c3dc48359c4820f866dc8bf78ca22f6a08fdc3dc00a1d9b45ea3cb69f8efb439
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.3 MB (259253430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bef65dcaab7982b31a142bb856e50d110356bd0f628fa76cf08517aa16b8bca`
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

### `ruby:jessie` - linux; s390x

```console
$ docker pull ruby@sha256:44d05cd73cd6e1485bb902cb44ab289d81245666cbf66900bbfb89c4350bd4f6
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254297897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982ebd49a23d858188b234b06064dfd59d8bb81d57cb2dcdf8bd6df6e7c27267`
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
