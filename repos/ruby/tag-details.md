<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ruby`

-	[`ruby:2.4.1-stretch`](#ruby241-stretch)
-	[`ruby:2.4-stretch`](#ruby24-stretch)
-	[`ruby:2-stretch`](#ruby2-stretch)
-	[`ruby:stretch`](#rubystretch)
-	[`ruby:2.4.1-slim-stretch`](#ruby241-slim-stretch)
-	[`ruby:2.4-slim-stretch`](#ruby24-slim-stretch)
-	[`ruby:2-slim-stretch`](#ruby2-slim-stretch)
-	[`ruby:slim-stretch`](#rubyslim-stretch)
-	[`ruby:2.4.1-jessie`](#ruby241-jessie)
-	[`ruby:2.4-jessie`](#ruby24-jessie)
-	[`ruby:2-jessie`](#ruby2-jessie)
-	[`ruby:jessie`](#rubyjessie)
-	[`ruby:2.4.1`](#ruby241)
-	[`ruby:2.4`](#ruby24)
-	[`ruby:2`](#ruby2)
-	[`ruby:latest`](#rubylatest)
-	[`ruby:2.4.1-slim-jessie`](#ruby241-slim-jessie)
-	[`ruby:2.4-slim-jessie`](#ruby24-slim-jessie)
-	[`ruby:2-slim-jessie`](#ruby2-slim-jessie)
-	[`ruby:slim-jessie`](#rubyslim-jessie)
-	[`ruby:2.4.1-slim`](#ruby241-slim)
-	[`ruby:2.4-slim`](#ruby24-slim)
-	[`ruby:2-slim`](#ruby2-slim)
-	[`ruby:slim`](#rubyslim)
-	[`ruby:2.4.1-onbuild`](#ruby241-onbuild)
-	[`ruby:2.4-onbuild`](#ruby24-onbuild)
-	[`ruby:2-onbuild`](#ruby2-onbuild)
-	[`ruby:onbuild`](#rubyonbuild)
-	[`ruby:2.4.1-alpine3.6`](#ruby241-alpine36)
-	[`ruby:2.4-alpine3.6`](#ruby24-alpine36)
-	[`ruby:2-alpine3.6`](#ruby2-alpine36)
-	[`ruby:alpine3.6`](#rubyalpine36)
-	[`ruby:2.4.1-alpine3.4`](#ruby241-alpine34)
-	[`ruby:2.4-alpine3.4`](#ruby24-alpine34)
-	[`ruby:2-alpine3.4`](#ruby2-alpine34)
-	[`ruby:alpine3.4`](#rubyalpine34)
-	[`ruby:2.4.1-alpine`](#ruby241-alpine)
-	[`ruby:2.4-alpine`](#ruby24-alpine)
-	[`ruby:2-alpine`](#ruby2-alpine)
-	[`ruby:alpine`](#rubyalpine)
-	[`ruby:2.3.4-jessie`](#ruby234-jessie)
-	[`ruby:2.3-jessie`](#ruby23-jessie)
-	[`ruby:2.3.4`](#ruby234)
-	[`ruby:2.3`](#ruby23)
-	[`ruby:2.3.4-slim-jessie`](#ruby234-slim-jessie)
-	[`ruby:2.3-slim-jessie`](#ruby23-slim-jessie)
-	[`ruby:2.3.4-slim`](#ruby234-slim)
-	[`ruby:2.3-slim`](#ruby23-slim)
-	[`ruby:2.3.4-onbuild`](#ruby234-onbuild)
-	[`ruby:2.3-onbuild`](#ruby23-onbuild)
-	[`ruby:2.3.4-alpine3.4`](#ruby234-alpine34)
-	[`ruby:2.3-alpine3.4`](#ruby23-alpine34)
-	[`ruby:2.3.4-alpine`](#ruby234-alpine)
-	[`ruby:2.3-alpine`](#ruby23-alpine)
-	[`ruby:2.2.7-jessie`](#ruby227-jessie)
-	[`ruby:2.2-jessie`](#ruby22-jessie)
-	[`ruby:2.2.7`](#ruby227)
-	[`ruby:2.2`](#ruby22)
-	[`ruby:2.2.7-slim-jessie`](#ruby227-slim-jessie)
-	[`ruby:2.2-slim-jessie`](#ruby22-slim-jessie)
-	[`ruby:2.2.7-slim`](#ruby227-slim)
-	[`ruby:2.2-slim`](#ruby22-slim)
-	[`ruby:2.2.7-onbuild`](#ruby227-onbuild)
-	[`ruby:2.2-onbuild`](#ruby22-onbuild)
-	[`ruby:2.2.7-alpine3.4`](#ruby227-alpine34)
-	[`ruby:2.2-alpine3.4`](#ruby22-alpine34)
-	[`ruby:2.2.7-alpine`](#ruby227-alpine)
-	[`ruby:2.2-alpine`](#ruby22-alpine)

## `ruby:2.4.1-stretch`

```console
$ docker pull ruby@sha256:3d259c25938b57e4bab3b3dbd1f0d615b970e99f3ef912e59aa498ebf2d3a693
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.2 MB (347234280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899e6c3fd79add2b61f069cb7a9e13d91985fef521e5b9236cd70fa9c6b9f566`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:37:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:43:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:46:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:47:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:47:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:47:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:47:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:47:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:47:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:47:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dacde51d9842a4f69d438762a86393c169b5b8f649fd6c6ff5b475c6e909046`  
		Last Modified: Tue, 29 Aug 2017 00:04:01 GMT  
		Size: 212.7 MB (212748354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24e9438ebf89d3e8d04b89b7ec0c3d7e4a3f4d6356827f25cf9f0b92d77adf`  
		Last Modified: Tue, 29 Aug 2017 00:26:24 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5369768b74f64b08d699abe320b21d169de7e6a57bd19f0f366d5978f573f533`  
		Last Modified: Tue, 29 Aug 2017 00:26:30 GMT  
		Size: 23.1 MB (23145029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0012ffb53d96656cc0a7f562aa01e5985ba6b6c33ec77c033633695ae2a9c7c9`  
		Last Modified: Tue, 29 Aug 2017 00:26:25 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8cd7c0379e8321969eb3c1c3cd27d9a9b8ea63b8e6841d93aeb34545c41045`  
		Last Modified: Tue, 29 Aug 2017 00:26:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-stretch`

```console
$ docker pull ruby@sha256:3d259c25938b57e4bab3b3dbd1f0d615b970e99f3ef912e59aa498ebf2d3a693
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.2 MB (347234280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899e6c3fd79add2b61f069cb7a9e13d91985fef521e5b9236cd70fa9c6b9f566`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:37:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:43:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:46:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:47:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:47:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:47:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:47:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:47:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:47:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:47:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dacde51d9842a4f69d438762a86393c169b5b8f649fd6c6ff5b475c6e909046`  
		Last Modified: Tue, 29 Aug 2017 00:04:01 GMT  
		Size: 212.7 MB (212748354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24e9438ebf89d3e8d04b89b7ec0c3d7e4a3f4d6356827f25cf9f0b92d77adf`  
		Last Modified: Tue, 29 Aug 2017 00:26:24 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5369768b74f64b08d699abe320b21d169de7e6a57bd19f0f366d5978f573f533`  
		Last Modified: Tue, 29 Aug 2017 00:26:30 GMT  
		Size: 23.1 MB (23145029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0012ffb53d96656cc0a7f562aa01e5985ba6b6c33ec77c033633695ae2a9c7c9`  
		Last Modified: Tue, 29 Aug 2017 00:26:25 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8cd7c0379e8321969eb3c1c3cd27d9a9b8ea63b8e6841d93aeb34545c41045`  
		Last Modified: Tue, 29 Aug 2017 00:26:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-stretch`

```console
$ docker pull ruby@sha256:3d259c25938b57e4bab3b3dbd1f0d615b970e99f3ef912e59aa498ebf2d3a693
```

-	Platforms:
	-	linux; amd64

### `ruby:2-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.2 MB (347234280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899e6c3fd79add2b61f069cb7a9e13d91985fef521e5b9236cd70fa9c6b9f566`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:37:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:43:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:46:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:47:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:47:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:47:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:47:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:47:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:47:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:47:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dacde51d9842a4f69d438762a86393c169b5b8f649fd6c6ff5b475c6e909046`  
		Last Modified: Tue, 29 Aug 2017 00:04:01 GMT  
		Size: 212.7 MB (212748354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24e9438ebf89d3e8d04b89b7ec0c3d7e4a3f4d6356827f25cf9f0b92d77adf`  
		Last Modified: Tue, 29 Aug 2017 00:26:24 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5369768b74f64b08d699abe320b21d169de7e6a57bd19f0f366d5978f573f533`  
		Last Modified: Tue, 29 Aug 2017 00:26:30 GMT  
		Size: 23.1 MB (23145029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0012ffb53d96656cc0a7f562aa01e5985ba6b6c33ec77c033633695ae2a9c7c9`  
		Last Modified: Tue, 29 Aug 2017 00:26:25 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8cd7c0379e8321969eb3c1c3cd27d9a9b8ea63b8e6841d93aeb34545c41045`  
		Last Modified: Tue, 29 Aug 2017 00:26:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:stretch`

```console
$ docker pull ruby@sha256:3d259c25938b57e4bab3b3dbd1f0d615b970e99f3ef912e59aa498ebf2d3a693
```

-	Platforms:
	-	linux; amd64

### `ruby:stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.2 MB (347234280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:899e6c3fd79add2b61f069cb7a9e13d91985fef521e5b9236cd70fa9c6b9f566`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:28:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:28:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:37:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:43:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:43:35 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:46:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:47:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:47:43 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:47:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:47:44 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:47:44 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:47:45 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:47:45 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336c28b408ed2225485696d1fada041792d7f1b47a4422175e203be4be2f83e6`  
		Last Modified: Mon, 24 Jul 2017 17:36:29 GMT  
		Size: 11.1 MB (11107641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e6b8d80c36cab97c677f32305f00ab2aedb16a26cfb37d0a3a48c50316dbb`  
		Last Modified: Mon, 24 Jul 2017 17:36:27 GMT  
		Size: 4.4 MB (4411330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ccc640979f6f91dfddf979bdb4482bc9e9e021d5d3469dbefda306342d0a41b`  
		Last Modified: Mon, 24 Jul 2017 17:36:55 GMT  
		Size: 50.0 MB (50003328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dacde51d9842a4f69d438762a86393c169b5b8f649fd6c6ff5b475c6e909046`  
		Last Modified: Tue, 29 Aug 2017 00:04:01 GMT  
		Size: 212.7 MB (212748354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24e9438ebf89d3e8d04b89b7ec0c3d7e4a3f4d6356827f25cf9f0b92d77adf`  
		Last Modified: Tue, 29 Aug 2017 00:26:24 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5369768b74f64b08d699abe320b21d169de7e6a57bd19f0f366d5978f573f533`  
		Last Modified: Tue, 29 Aug 2017 00:26:30 GMT  
		Size: 23.1 MB (23145029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0012ffb53d96656cc0a7f562aa01e5985ba6b6c33ec77c033633695ae2a9c7c9`  
		Last Modified: Tue, 29 Aug 2017 00:26:25 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8cd7c0379e8321969eb3c1c3cd27d9a9b8ea63b8e6841d93aeb34545c41045`  
		Last Modified: Tue, 29 Aug 2017 00:26:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-slim-stretch`

```console
$ docker pull ruby@sha256:c16497281ac60f36f2c66b08ddcd5de30bb3a107498df12e6cf10c3c5232c450
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-slim-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82520799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59d19fd1b91598be13d85c7ed0c88a39317de894e536986038e9772281844ed`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 07 Aug 2017 22:41:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Aug 2017 22:41:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:47:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:51:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:53:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:53:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:53:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:53:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:53:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:54:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:54:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc191c5cc4e1ed1bbf91b215abf0e5bd877a7dd844fcdebf372c3415b71cbff`  
		Last Modified: Mon, 07 Aug 2017 23:00:00 GMT  
		Size: 12.7 MB (12742508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca08dd0f6803082f3af0a4ae8cfc2bce30e30dea23856d972152a3bf5392a2bf`  
		Last Modified: Mon, 07 Aug 2017 22:59:57 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255eedc0c371e0da3816f88dd9499995f9c15a1f7f0ca04134cc7728b60dd95e`  
		Last Modified: Tue, 29 Aug 2017 00:27:07 GMT  
		Size: 24.0 MB (23959676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1b4e07f624106dd40bab703ad6657eccaca26fbbb3f396c29730aad5e677ac`  
		Last Modified: Tue, 29 Aug 2017 00:27:01 GMT  
		Size: 675.3 KB (675320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c358c57ad77296d6c9e69887d6e2c20ccd431ff9b290716ac4bb9217bdb24256`  
		Last Modified: Tue, 29 Aug 2017 00:27:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim-stretch`

```console
$ docker pull ruby@sha256:c16497281ac60f36f2c66b08ddcd5de30bb3a107498df12e6cf10c3c5232c450
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82520799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59d19fd1b91598be13d85c7ed0c88a39317de894e536986038e9772281844ed`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 07 Aug 2017 22:41:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Aug 2017 22:41:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:47:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:51:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:53:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:53:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:53:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:53:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:53:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:54:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:54:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc191c5cc4e1ed1bbf91b215abf0e5bd877a7dd844fcdebf372c3415b71cbff`  
		Last Modified: Mon, 07 Aug 2017 23:00:00 GMT  
		Size: 12.7 MB (12742508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca08dd0f6803082f3af0a4ae8cfc2bce30e30dea23856d972152a3bf5392a2bf`  
		Last Modified: Mon, 07 Aug 2017 22:59:57 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255eedc0c371e0da3816f88dd9499995f9c15a1f7f0ca04134cc7728b60dd95e`  
		Last Modified: Tue, 29 Aug 2017 00:27:07 GMT  
		Size: 24.0 MB (23959676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1b4e07f624106dd40bab703ad6657eccaca26fbbb3f396c29730aad5e677ac`  
		Last Modified: Tue, 29 Aug 2017 00:27:01 GMT  
		Size: 675.3 KB (675320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c358c57ad77296d6c9e69887d6e2c20ccd431ff9b290716ac4bb9217bdb24256`  
		Last Modified: Tue, 29 Aug 2017 00:27:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim-stretch`

```console
$ docker pull ruby@sha256:c16497281ac60f36f2c66b08ddcd5de30bb3a107498df12e6cf10c3c5232c450
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82520799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59d19fd1b91598be13d85c7ed0c88a39317de894e536986038e9772281844ed`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 07 Aug 2017 22:41:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Aug 2017 22:41:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:47:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:51:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:53:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:53:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:53:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:53:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:53:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:54:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:54:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc191c5cc4e1ed1bbf91b215abf0e5bd877a7dd844fcdebf372c3415b71cbff`  
		Last Modified: Mon, 07 Aug 2017 23:00:00 GMT  
		Size: 12.7 MB (12742508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca08dd0f6803082f3af0a4ae8cfc2bce30e30dea23856d972152a3bf5392a2bf`  
		Last Modified: Mon, 07 Aug 2017 22:59:57 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255eedc0c371e0da3816f88dd9499995f9c15a1f7f0ca04134cc7728b60dd95e`  
		Last Modified: Tue, 29 Aug 2017 00:27:07 GMT  
		Size: 24.0 MB (23959676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1b4e07f624106dd40bab703ad6657eccaca26fbbb3f396c29730aad5e677ac`  
		Last Modified: Tue, 29 Aug 2017 00:27:01 GMT  
		Size: 675.3 KB (675320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c358c57ad77296d6c9e69887d6e2c20ccd431ff9b290716ac4bb9217bdb24256`  
		Last Modified: Tue, 29 Aug 2017 00:27:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim-stretch`

```console
$ docker pull ruby@sha256:c16497281ac60f36f2c66b08ddcd5de30bb3a107498df12e6cf10c3c5232c450
```

-	Platforms:
	-	linux; amd64

### `ruby:slim-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82520799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d59d19fd1b91598be13d85c7ed0c88a39317de894e536986038e9772281844ed`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 07 Aug 2017 22:41:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Aug 2017 22:41:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:47:50 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:51:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:53:42 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:53:58 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:53:58 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:53:59 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:53:59 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:54:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:54:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc191c5cc4e1ed1bbf91b215abf0e5bd877a7dd844fcdebf372c3415b71cbff`  
		Last Modified: Mon, 07 Aug 2017 23:00:00 GMT  
		Size: 12.7 MB (12742508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca08dd0f6803082f3af0a4ae8cfc2bce30e30dea23856d972152a3bf5392a2bf`  
		Last Modified: Mon, 07 Aug 2017 22:59:57 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255eedc0c371e0da3816f88dd9499995f9c15a1f7f0ca04134cc7728b60dd95e`  
		Last Modified: Tue, 29 Aug 2017 00:27:07 GMT  
		Size: 24.0 MB (23959676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1b4e07f624106dd40bab703ad6657eccaca26fbbb3f396c29730aad5e677ac`  
		Last Modified: Tue, 29 Aug 2017 00:27:01 GMT  
		Size: 675.3 KB (675320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c358c57ad77296d6c9e69887d6e2c20ccd431ff9b290716ac4bb9217bdb24256`  
		Last Modified: Tue, 29 Aug 2017 00:27:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-jessie`

```console
$ docker pull ruby@sha256:7c21ff75c7cb7e312d14cfe98066cf85956e3a2192db926363353b95ee0ba084
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd5fbc73840b23a90cfbda5577ce8d7c14bf2029f235f95d98e1a5ffa9ce66f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-jessie`

```console
$ docker pull ruby@sha256:7c21ff75c7cb7e312d14cfe98066cf85956e3a2192db926363353b95ee0ba084
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd5fbc73840b23a90cfbda5577ce8d7c14bf2029f235f95d98e1a5ffa9ce66f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-jessie`

```console
$ docker pull ruby@sha256:7c21ff75c7cb7e312d14cfe98066cf85956e3a2192db926363353b95ee0ba084
```

-	Platforms:
	-	linux; amd64

### `ruby:2-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd5fbc73840b23a90cfbda5577ce8d7c14bf2029f235f95d98e1a5ffa9ce66f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:jessie`

```console
$ docker pull ruby@sha256:7c21ff75c7cb7e312d14cfe98066cf85956e3a2192db926363353b95ee0ba084
```

-	Platforms:
	-	linux; amd64

### `ruby:jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd5fbc73840b23a90cfbda5577ce8d7c14bf2029f235f95d98e1a5ffa9ce66f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1`

```console
$ docker pull ruby@sha256:7c21ff75c7cb7e312d14cfe98066cf85956e3a2192db926363353b95ee0ba084
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd5fbc73840b23a90cfbda5577ce8d7c14bf2029f235f95d98e1a5ffa9ce66f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4`

```console
$ docker pull ruby@sha256:7c21ff75c7cb7e312d14cfe98066cf85956e3a2192db926363353b95ee0ba084
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd5fbc73840b23a90cfbda5577ce8d7c14bf2029f235f95d98e1a5ffa9ce66f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:7c21ff75c7cb7e312d14cfe98066cf85956e3a2192db926363353b95ee0ba084
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd5fbc73840b23a90cfbda5577ce8d7c14bf2029f235f95d98e1a5ffa9ce66f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:7c21ff75c7cb7e312d14cfe98066cf85956e3a2192db926363353b95ee0ba084
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd5fbc73840b23a90cfbda5577ce8d7c14bf2029f235f95d98e1a5ffa9ce66f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-slim-jessie`

```console
$ docker pull ruby@sha256:95d2214e60a3353067f13fede08fc00862c5f74a843c5f163b2ef5e859e117b7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86733997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b263d2b7094bd38ace00cd6b10b51ace4aa0fb872fe9dbba598e7b2d0776866d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim-jessie`

```console
$ docker pull ruby@sha256:95d2214e60a3353067f13fede08fc00862c5f74a843c5f163b2ef5e859e117b7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86733997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b263d2b7094bd38ace00cd6b10b51ace4aa0fb872fe9dbba598e7b2d0776866d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim-jessie`

```console
$ docker pull ruby@sha256:95d2214e60a3353067f13fede08fc00862c5f74a843c5f163b2ef5e859e117b7
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86733997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b263d2b7094bd38ace00cd6b10b51ace4aa0fb872fe9dbba598e7b2d0776866d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim-jessie`

```console
$ docker pull ruby@sha256:95d2214e60a3353067f13fede08fc00862c5f74a843c5f163b2ef5e859e117b7
```

-	Platforms:
	-	linux; amd64

### `ruby:slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86733997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b263d2b7094bd38ace00cd6b10b51ace4aa0fb872fe9dbba598e7b2d0776866d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-slim`

```console
$ docker pull ruby@sha256:95d2214e60a3353067f13fede08fc00862c5f74a843c5f163b2ef5e859e117b7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86733997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b263d2b7094bd38ace00cd6b10b51ace4aa0fb872fe9dbba598e7b2d0776866d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim`

```console
$ docker pull ruby@sha256:95d2214e60a3353067f13fede08fc00862c5f74a843c5f163b2ef5e859e117b7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86733997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b263d2b7094bd38ace00cd6b10b51ace4aa0fb872fe9dbba598e7b2d0776866d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:95d2214e60a3353067f13fede08fc00862c5f74a843c5f163b2ef5e859e117b7
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86733997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b263d2b7094bd38ace00cd6b10b51ace4aa0fb872fe9dbba598e7b2d0776866d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:95d2214e60a3353067f13fede08fc00862c5f74a843c5f163b2ef5e859e117b7
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86733997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b263d2b7094bd38ace00cd6b10b51ace4aa0fb872fe9dbba598e7b2d0776866d`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:58:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:01:44 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:03:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:03:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:03:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:03:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:03:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:03:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1870958c9fb30db59963f6eef016f43cc7b7747f91ca36c31813021a70bac9a8`  
		Last Modified: Tue, 29 Aug 2017 00:28:50 GMT  
		Size: 23.3 MB (23292146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb6622b7d68d4c09542499d8ae79722bc1d3a0b6249c73998df2b0169ff3862`  
		Last Modified: Tue, 29 Aug 2017 00:28:44 GMT  
		Size: 675.3 KB (675318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b65b0a16dcfb3235d66accd4a2e8625576bc44a889579d31d1434d6d2474a94`  
		Last Modified: Tue, 29 Aug 2017 00:28:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-onbuild`

```console
$ docker pull ruby@sha256:192d68f39d0feacf9203f11833eda374351f3e76918e92a3a5e20499a35227dc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7f00a65c0aa12f6e07d6613a9bcf63d0c11ea8c4dff32e21918ae144a30c7c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 00:03:24 GMT
RUN bundle config --global frozen 1
# Tue, 29 Aug 2017 00:03:25 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 00:03:26 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD RUN bundle install
# Tue, 29 Aug 2017 00:03:27 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290d60a2b5d8ddcd7dafb0a1ec3260bf8e966574201c8faeb1c48e4a8c4d175d`  
		Last Modified: Tue, 29 Aug 2017 00:29:52 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdeeb2a8d43456485298e83ba805c77c8b97fd5035ec10b5c0a4b865fee735f`  
		Last Modified: Tue, 29 Aug 2017 00:29:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-onbuild`

```console
$ docker pull ruby@sha256:192d68f39d0feacf9203f11833eda374351f3e76918e92a3a5e20499a35227dc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7f00a65c0aa12f6e07d6613a9bcf63d0c11ea8c4dff32e21918ae144a30c7c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 00:03:24 GMT
RUN bundle config --global frozen 1
# Tue, 29 Aug 2017 00:03:25 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 00:03:26 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD RUN bundle install
# Tue, 29 Aug 2017 00:03:27 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290d60a2b5d8ddcd7dafb0a1ec3260bf8e966574201c8faeb1c48e4a8c4d175d`  
		Last Modified: Tue, 29 Aug 2017 00:29:52 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdeeb2a8d43456485298e83ba805c77c8b97fd5035ec10b5c0a4b865fee735f`  
		Last Modified: Tue, 29 Aug 2017 00:29:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:192d68f39d0feacf9203f11833eda374351f3e76918e92a3a5e20499a35227dc
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7f00a65c0aa12f6e07d6613a9bcf63d0c11ea8c4dff32e21918ae144a30c7c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 00:03:24 GMT
RUN bundle config --global frozen 1
# Tue, 29 Aug 2017 00:03:25 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 00:03:26 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD RUN bundle install
# Tue, 29 Aug 2017 00:03:27 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290d60a2b5d8ddcd7dafb0a1ec3260bf8e966574201c8faeb1c48e4a8c4d175d`  
		Last Modified: Tue, 29 Aug 2017 00:29:52 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdeeb2a8d43456485298e83ba805c77c8b97fd5035ec10b5c0a4b865fee735f`  
		Last Modified: Tue, 29 Aug 2017 00:29:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:192d68f39d0feacf9203f11833eda374351f3e76918e92a3a5e20499a35227dc
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273591624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7f00a65c0aa12f6e07d6613a9bcf63d0c11ea8c4dff32e21918ae144a30c7c`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 28 Aug 2017 23:54:06 GMT
ENV RUBY_MAJOR=2.4
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 28 Aug 2017 23:54:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 28 Aug 2017 23:57:27 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 28 Aug 2017 23:57:55 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 28 Aug 2017 23:57:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 28 Aug 2017 23:57:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 28 Aug 2017 23:57:57 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 28 Aug 2017 23:57:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 28 Aug 2017 23:57:58 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 00:03:24 GMT
RUN bundle config --global frozen 1
# Tue, 29 Aug 2017 00:03:25 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 00:03:26 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 29 Aug 2017 00:03:26 GMT
ONBUILD RUN bundle install
# Tue, 29 Aug 2017 00:03:27 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d9153bd77385c26af52769d5bfa7ab162c3d441fa678b7a90dcefad7891906`  
		Last Modified: Tue, 29 Aug 2017 00:27:45 GMT  
		Size: 23.1 MB (23136618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770a69c595cc5c6de78db421c6060b7ba72d1fde972c84fffdc771d92a3d5006`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 675.3 KB (675308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bcaa7b5811a54275be42083e548bab8b93d4818b9cdd11a8ee82dc96876d78`  
		Last Modified: Tue, 29 Aug 2017 00:27:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290d60a2b5d8ddcd7dafb0a1ec3260bf8e966574201c8faeb1c48e4a8c4d175d`  
		Last Modified: Tue, 29 Aug 2017 00:29:52 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bdeeb2a8d43456485298e83ba805c77c8b97fd5035ec10b5c0a4b865fee735f`  
		Last Modified: Tue, 29 Aug 2017 00:29:52 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-alpine3.6`

```console
$ docker pull ruby@sha256:9c899890c54dac189be684ae7e18d9261278e294489fa158a7745704115b7bf7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37986834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be9e6250cb9d33270a4c2e780eceb6aea33cc71efa8e11888292666b2fe0125`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Mon, 07 Aug 2017 22:49:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:49:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:03:32 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:06:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:06:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:06:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:06:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:06:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:06:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:06:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:06:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e9766f9e5c17c96b9feeb64ae34f86fa1026ef01106eca51061f60ebe97d`  
		Last Modified: Mon, 07 Aug 2017 23:02:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b05ffe7c18b0e302b405b3a6cdfc65f1149f947486817bb980b4411ed335796`  
		Last Modified: Tue, 29 Aug 2017 00:30:35 GMT  
		Size: 35.3 MB (35320800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7ee53408c0b79b20aa88f8d31c788cc44734a09833fb705ceab7496ad712f2`  
		Last Modified: Tue, 29 Aug 2017 00:30:27 GMT  
		Size: 675.3 KB (675286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544ef07e360c0cd0eafe51d84175c49a10a09948bf9fe3670903d483de0ca3`  
		Last Modified: Tue, 29 Aug 2017 00:30:26 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine3.6`

```console
$ docker pull ruby@sha256:9c899890c54dac189be684ae7e18d9261278e294489fa158a7745704115b7bf7
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37986834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be9e6250cb9d33270a4c2e780eceb6aea33cc71efa8e11888292666b2fe0125`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Mon, 07 Aug 2017 22:49:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:49:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:03:32 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:06:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:06:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:06:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:06:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:06:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:06:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:06:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:06:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e9766f9e5c17c96b9feeb64ae34f86fa1026ef01106eca51061f60ebe97d`  
		Last Modified: Mon, 07 Aug 2017 23:02:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b05ffe7c18b0e302b405b3a6cdfc65f1149f947486817bb980b4411ed335796`  
		Last Modified: Tue, 29 Aug 2017 00:30:35 GMT  
		Size: 35.3 MB (35320800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7ee53408c0b79b20aa88f8d31c788cc44734a09833fb705ceab7496ad712f2`  
		Last Modified: Tue, 29 Aug 2017 00:30:27 GMT  
		Size: 675.3 KB (675286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544ef07e360c0cd0eafe51d84175c49a10a09948bf9fe3670903d483de0ca3`  
		Last Modified: Tue, 29 Aug 2017 00:30:26 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine3.6`

```console
$ docker pull ruby@sha256:9c899890c54dac189be684ae7e18d9261278e294489fa158a7745704115b7bf7
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37986834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be9e6250cb9d33270a4c2e780eceb6aea33cc71efa8e11888292666b2fe0125`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Mon, 07 Aug 2017 22:49:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:49:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:03:32 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:06:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:06:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:06:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:06:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:06:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:06:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:06:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:06:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e9766f9e5c17c96b9feeb64ae34f86fa1026ef01106eca51061f60ebe97d`  
		Last Modified: Mon, 07 Aug 2017 23:02:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b05ffe7c18b0e302b405b3a6cdfc65f1149f947486817bb980b4411ed335796`  
		Last Modified: Tue, 29 Aug 2017 00:30:35 GMT  
		Size: 35.3 MB (35320800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7ee53408c0b79b20aa88f8d31c788cc44734a09833fb705ceab7496ad712f2`  
		Last Modified: Tue, 29 Aug 2017 00:30:27 GMT  
		Size: 675.3 KB (675286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544ef07e360c0cd0eafe51d84175c49a10a09948bf9fe3670903d483de0ca3`  
		Last Modified: Tue, 29 Aug 2017 00:30:26 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine3.6`

```console
$ docker pull ruby@sha256:9c899890c54dac189be684ae7e18d9261278e294489fa158a7745704115b7bf7
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine3.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.0 MB (37986834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be9e6250cb9d33270a4c2e780eceb6aea33cc71efa8e11888292666b2fe0125`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Mon, 07 Aug 2017 22:49:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:49:11 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:49:12 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:03:32 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:06:40 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:06:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:06:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:06:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:06:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:06:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:06:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:06:54 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55c9e9766f9e5c17c96b9feeb64ae34f86fa1026ef01106eca51061f60ebe97d`  
		Last Modified: Mon, 07 Aug 2017 23:02:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b05ffe7c18b0e302b405b3a6cdfc65f1149f947486817bb980b4411ed335796`  
		Last Modified: Tue, 29 Aug 2017 00:30:35 GMT  
		Size: 35.3 MB (35320800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7ee53408c0b79b20aa88f8d31c788cc44734a09833fb705ceab7496ad712f2`  
		Last Modified: Tue, 29 Aug 2017 00:30:27 GMT  
		Size: 675.3 KB (675286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544ef07e360c0cd0eafe51d84175c49a10a09948bf9fe3670903d483de0ca3`  
		Last Modified: Tue, 29 Aug 2017 00:30:26 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-alpine3.4`

```console
$ docker pull ruby@sha256:2043ce519f530e9b6010801032a736c41a870187f7bec1af1f22e5206401fcb1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27747304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89b1de43d5255b0149535f673f6dc60b3aa4829240d99585b8ce97a9bf7e069`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 28 Jun 2017 22:16:42 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:07:00 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:09:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:09:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:09:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:09:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:09:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:09:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04012cf6b144c56713fa0f900f2015d7ba587f8e0df1bc7903f42da21c0ef5ff`  
		Last Modified: Tue, 29 Aug 2017 00:31:12 GMT  
		Size: 24.7 MB (24686637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bded31d1aec1cedb5613a543a03065c2e710cf1323a6e371b12dc6a3b7d99a4a`  
		Last Modified: Tue, 29 Aug 2017 00:31:06 GMT  
		Size: 675.3 KB (675313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c434cf123807df2600e0cdc3dff21884c6282a7f4c0f1b6dac380b083c513f0`  
		Last Modified: Tue, 29 Aug 2017 00:31:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine3.4`

```console
$ docker pull ruby@sha256:2043ce519f530e9b6010801032a736c41a870187f7bec1af1f22e5206401fcb1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27747304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89b1de43d5255b0149535f673f6dc60b3aa4829240d99585b8ce97a9bf7e069`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 28 Jun 2017 22:16:42 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:07:00 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:09:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:09:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:09:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:09:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:09:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:09:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04012cf6b144c56713fa0f900f2015d7ba587f8e0df1bc7903f42da21c0ef5ff`  
		Last Modified: Tue, 29 Aug 2017 00:31:12 GMT  
		Size: 24.7 MB (24686637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bded31d1aec1cedb5613a543a03065c2e710cf1323a6e371b12dc6a3b7d99a4a`  
		Last Modified: Tue, 29 Aug 2017 00:31:06 GMT  
		Size: 675.3 KB (675313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c434cf123807df2600e0cdc3dff21884c6282a7f4c0f1b6dac380b083c513f0`  
		Last Modified: Tue, 29 Aug 2017 00:31:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine3.4`

```console
$ docker pull ruby@sha256:2043ce519f530e9b6010801032a736c41a870187f7bec1af1f22e5206401fcb1
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27747304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89b1de43d5255b0149535f673f6dc60b3aa4829240d99585b8ce97a9bf7e069`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 28 Jun 2017 22:16:42 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:07:00 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:09:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:09:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:09:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:09:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:09:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:09:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04012cf6b144c56713fa0f900f2015d7ba587f8e0df1bc7903f42da21c0ef5ff`  
		Last Modified: Tue, 29 Aug 2017 00:31:12 GMT  
		Size: 24.7 MB (24686637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bded31d1aec1cedb5613a543a03065c2e710cf1323a6e371b12dc6a3b7d99a4a`  
		Last Modified: Tue, 29 Aug 2017 00:31:06 GMT  
		Size: 675.3 KB (675313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c434cf123807df2600e0cdc3dff21884c6282a7f4c0f1b6dac380b083c513f0`  
		Last Modified: Tue, 29 Aug 2017 00:31:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine3.4`

```console
$ docker pull ruby@sha256:2043ce519f530e9b6010801032a736c41a870187f7bec1af1f22e5206401fcb1
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27747304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89b1de43d5255b0149535f673f6dc60b3aa4829240d99585b8ce97a9bf7e069`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 28 Jun 2017 22:16:42 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:07:00 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:09:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:09:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:09:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:09:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:09:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:09:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04012cf6b144c56713fa0f900f2015d7ba587f8e0df1bc7903f42da21c0ef5ff`  
		Last Modified: Tue, 29 Aug 2017 00:31:12 GMT  
		Size: 24.7 MB (24686637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bded31d1aec1cedb5613a543a03065c2e710cf1323a6e371b12dc6a3b7d99a4a`  
		Last Modified: Tue, 29 Aug 2017 00:31:06 GMT  
		Size: 675.3 KB (675313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c434cf123807df2600e0cdc3dff21884c6282a7f4c0f1b6dac380b083c513f0`  
		Last Modified: Tue, 29 Aug 2017 00:31:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-alpine`

```console
$ docker pull ruby@sha256:2043ce519f530e9b6010801032a736c41a870187f7bec1af1f22e5206401fcb1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27747304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89b1de43d5255b0149535f673f6dc60b3aa4829240d99585b8ce97a9bf7e069`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 28 Jun 2017 22:16:42 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:07:00 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:09:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:09:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:09:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:09:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:09:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:09:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04012cf6b144c56713fa0f900f2015d7ba587f8e0df1bc7903f42da21c0ef5ff`  
		Last Modified: Tue, 29 Aug 2017 00:31:12 GMT  
		Size: 24.7 MB (24686637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bded31d1aec1cedb5613a543a03065c2e710cf1323a6e371b12dc6a3b7d99a4a`  
		Last Modified: Tue, 29 Aug 2017 00:31:06 GMT  
		Size: 675.3 KB (675313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c434cf123807df2600e0cdc3dff21884c6282a7f4c0f1b6dac380b083c513f0`  
		Last Modified: Tue, 29 Aug 2017 00:31:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine`

```console
$ docker pull ruby@sha256:2043ce519f530e9b6010801032a736c41a870187f7bec1af1f22e5206401fcb1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27747304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89b1de43d5255b0149535f673f6dc60b3aa4829240d99585b8ce97a9bf7e069`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 28 Jun 2017 22:16:42 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:07:00 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:09:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:09:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:09:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:09:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:09:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:09:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04012cf6b144c56713fa0f900f2015d7ba587f8e0df1bc7903f42da21c0ef5ff`  
		Last Modified: Tue, 29 Aug 2017 00:31:12 GMT  
		Size: 24.7 MB (24686637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bded31d1aec1cedb5613a543a03065c2e710cf1323a6e371b12dc6a3b7d99a4a`  
		Last Modified: Tue, 29 Aug 2017 00:31:06 GMT  
		Size: 675.3 KB (675313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c434cf123807df2600e0cdc3dff21884c6282a7f4c0f1b6dac380b083c513f0`  
		Last Modified: Tue, 29 Aug 2017 00:31:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:2043ce519f530e9b6010801032a736c41a870187f7bec1af1f22e5206401fcb1
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27747304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89b1de43d5255b0149535f673f6dc60b3aa4829240d99585b8ce97a9bf7e069`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 28 Jun 2017 22:16:42 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:07:00 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:09:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:09:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:09:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:09:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:09:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:09:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04012cf6b144c56713fa0f900f2015d7ba587f8e0df1bc7903f42da21c0ef5ff`  
		Last Modified: Tue, 29 Aug 2017 00:31:12 GMT  
		Size: 24.7 MB (24686637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bded31d1aec1cedb5613a543a03065c2e710cf1323a6e371b12dc6a3b7d99a4a`  
		Last Modified: Tue, 29 Aug 2017 00:31:06 GMT  
		Size: 675.3 KB (675313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c434cf123807df2600e0cdc3dff21884c6282a7f4c0f1b6dac380b083c513f0`  
		Last Modified: Tue, 29 Aug 2017 00:31:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:2043ce519f530e9b6010801032a736c41a870187f7bec1af1f22e5206401fcb1
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27747304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89b1de43d5255b0149535f673f6dc60b3aa4829240d99585b8ce97a9bf7e069`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Jun 2017 22:16:41 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 28 Jun 2017 22:16:42 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 29 Aug 2017 00:07:00 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:09:45 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:09:46 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:09:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:09:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:09:48 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:09:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:09:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04012cf6b144c56713fa0f900f2015d7ba587f8e0df1bc7903f42da21c0ef5ff`  
		Last Modified: Tue, 29 Aug 2017 00:31:12 GMT  
		Size: 24.7 MB (24686637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bded31d1aec1cedb5613a543a03065c2e710cf1323a6e371b12dc6a3b7d99a4a`  
		Last Modified: Tue, 29 Aug 2017 00:31:06 GMT  
		Size: 675.3 KB (675313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c434cf123807df2600e0cdc3dff21884c6282a7f4c0f1b6dac380b083c513f0`  
		Last Modified: Tue, 29 Aug 2017 00:31:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-jessie`

```console
$ docker pull ruby@sha256:7f82d4a5eb7b41d88073516506f68c541c92b07208d10903fbbba5fe0273311e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286211227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746df0ada2189fa691fb33c47e5f303d05c9f12451a0fd6ae81d0e1024fb6e44`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_MAJOR=2.3
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_VERSION=2.3.4
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:12:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:12:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:12:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:12:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:12:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:12:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbbdf8061c9778a879ad4c18286ecdc7d425ee02b961677da8d5c989db9796a`  
		Last Modified: Tue, 29 Aug 2017 00:32:13 GMT  
		Size: 35.8 MB (35756527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f064e3d09ff4c8b01eb4532524a9cabeff320c49ee83ab4860c5531402d17a6`  
		Last Modified: Tue, 29 Aug 2017 00:32:08 GMT  
		Size: 675.3 KB (675316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911a03d4ad1ee5d3fc51dac3e24ad35e1ee272e7a5c30b5a2128fe951774352`  
		Last Modified: Tue, 29 Aug 2017 00:32:07 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-jessie`

```console
$ docker pull ruby@sha256:7f82d4a5eb7b41d88073516506f68c541c92b07208d10903fbbba5fe0273311e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286211227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746df0ada2189fa691fb33c47e5f303d05c9f12451a0fd6ae81d0e1024fb6e44`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_MAJOR=2.3
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_VERSION=2.3.4
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:12:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:12:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:12:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:12:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:12:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:12:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbbdf8061c9778a879ad4c18286ecdc7d425ee02b961677da8d5c989db9796a`  
		Last Modified: Tue, 29 Aug 2017 00:32:13 GMT  
		Size: 35.8 MB (35756527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f064e3d09ff4c8b01eb4532524a9cabeff320c49ee83ab4860c5531402d17a6`  
		Last Modified: Tue, 29 Aug 2017 00:32:08 GMT  
		Size: 675.3 KB (675316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911a03d4ad1ee5d3fc51dac3e24ad35e1ee272e7a5c30b5a2128fe951774352`  
		Last Modified: Tue, 29 Aug 2017 00:32:07 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4`

```console
$ docker pull ruby@sha256:7f82d4a5eb7b41d88073516506f68c541c92b07208d10903fbbba5fe0273311e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286211227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746df0ada2189fa691fb33c47e5f303d05c9f12451a0fd6ae81d0e1024fb6e44`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_MAJOR=2.3
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_VERSION=2.3.4
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:12:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:12:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:12:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:12:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:12:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:12:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbbdf8061c9778a879ad4c18286ecdc7d425ee02b961677da8d5c989db9796a`  
		Last Modified: Tue, 29 Aug 2017 00:32:13 GMT  
		Size: 35.8 MB (35756527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f064e3d09ff4c8b01eb4532524a9cabeff320c49ee83ab4860c5531402d17a6`  
		Last Modified: Tue, 29 Aug 2017 00:32:08 GMT  
		Size: 675.3 KB (675316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911a03d4ad1ee5d3fc51dac3e24ad35e1ee272e7a5c30b5a2128fe951774352`  
		Last Modified: Tue, 29 Aug 2017 00:32:07 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:7f82d4a5eb7b41d88073516506f68c541c92b07208d10903fbbba5fe0273311e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286211227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746df0ada2189fa691fb33c47e5f303d05c9f12451a0fd6ae81d0e1024fb6e44`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_MAJOR=2.3
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_VERSION=2.3.4
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:12:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:12:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:12:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:12:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:12:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:12:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbbdf8061c9778a879ad4c18286ecdc7d425ee02b961677da8d5c989db9796a`  
		Last Modified: Tue, 29 Aug 2017 00:32:13 GMT  
		Size: 35.8 MB (35756527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f064e3d09ff4c8b01eb4532524a9cabeff320c49ee83ab4860c5531402d17a6`  
		Last Modified: Tue, 29 Aug 2017 00:32:08 GMT  
		Size: 675.3 KB (675316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911a03d4ad1ee5d3fc51dac3e24ad35e1ee272e7a5c30b5a2128fe951774352`  
		Last Modified: Tue, 29 Aug 2017 00:32:07 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-slim-jessie`

```console
$ docker pull ruby@sha256:f952b85bc6867f275c8d25d9145e6075cf839230387c88cf9e6cd24d922c23eb
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99328714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667d6be6c65fb0085fbd8502a0f08cfb81f6e032adae463b51a6fe56d9217f1a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:57:00 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:57:00 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:57:01 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:12:53 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:15:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:15:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:15:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:15:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:15:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:15:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:15:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:15:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608c6c88c7a397dfdfef664c17984dda141a216f346e661670ff2a00389721cd`  
		Last Modified: Tue, 29 Aug 2017 00:32:53 GMT  
		Size: 35.9 MB (35886869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe63f1cd8c901e0e85060e0d31e8bd77a063b6b9f007cbe315a48ded98cbc6df`  
		Last Modified: Tue, 29 Aug 2017 00:32:45 GMT  
		Size: 675.3 KB (675312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb96baa5dd4bd3b9045fd86e0b5408c3d110ee4b8a68e175beaf72f00699a23f`  
		Last Modified: Tue, 29 Aug 2017 00:32:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim-jessie`

```console
$ docker pull ruby@sha256:f952b85bc6867f275c8d25d9145e6075cf839230387c88cf9e6cd24d922c23eb
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99328714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667d6be6c65fb0085fbd8502a0f08cfb81f6e032adae463b51a6fe56d9217f1a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:57:00 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:57:00 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:57:01 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:12:53 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:15:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:15:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:15:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:15:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:15:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:15:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:15:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:15:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608c6c88c7a397dfdfef664c17984dda141a216f346e661670ff2a00389721cd`  
		Last Modified: Tue, 29 Aug 2017 00:32:53 GMT  
		Size: 35.9 MB (35886869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe63f1cd8c901e0e85060e0d31e8bd77a063b6b9f007cbe315a48ded98cbc6df`  
		Last Modified: Tue, 29 Aug 2017 00:32:45 GMT  
		Size: 675.3 KB (675312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb96baa5dd4bd3b9045fd86e0b5408c3d110ee4b8a68e175beaf72f00699a23f`  
		Last Modified: Tue, 29 Aug 2017 00:32:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-slim`

```console
$ docker pull ruby@sha256:f952b85bc6867f275c8d25d9145e6075cf839230387c88cf9e6cd24d922c23eb
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99328714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667d6be6c65fb0085fbd8502a0f08cfb81f6e032adae463b51a6fe56d9217f1a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:57:00 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:57:00 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:57:01 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:12:53 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:15:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:15:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:15:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:15:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:15:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:15:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:15:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:15:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608c6c88c7a397dfdfef664c17984dda141a216f346e661670ff2a00389721cd`  
		Last Modified: Tue, 29 Aug 2017 00:32:53 GMT  
		Size: 35.9 MB (35886869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe63f1cd8c901e0e85060e0d31e8bd77a063b6b9f007cbe315a48ded98cbc6df`  
		Last Modified: Tue, 29 Aug 2017 00:32:45 GMT  
		Size: 675.3 KB (675312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb96baa5dd4bd3b9045fd86e0b5408c3d110ee4b8a68e175beaf72f00699a23f`  
		Last Modified: Tue, 29 Aug 2017 00:32:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:f952b85bc6867f275c8d25d9145e6075cf839230387c88cf9e6cd24d922c23eb
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99328714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667d6be6c65fb0085fbd8502a0f08cfb81f6e032adae463b51a6fe56d9217f1a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:57:00 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:57:00 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:57:01 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:12:53 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:15:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:15:50 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:15:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:15:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:15:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:15:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:15:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:15:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608c6c88c7a397dfdfef664c17984dda141a216f346e661670ff2a00389721cd`  
		Last Modified: Tue, 29 Aug 2017 00:32:53 GMT  
		Size: 35.9 MB (35886869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe63f1cd8c901e0e85060e0d31e8bd77a063b6b9f007cbe315a48ded98cbc6df`  
		Last Modified: Tue, 29 Aug 2017 00:32:45 GMT  
		Size: 675.3 KB (675312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb96baa5dd4bd3b9045fd86e0b5408c3d110ee4b8a68e175beaf72f00699a23f`  
		Last Modified: Tue, 29 Aug 2017 00:32:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-onbuild`

```console
$ docker pull ruby@sha256:9d87ffa2d0fd3211c2b375d8628989367c7720790632694a3eeb8a72f4dc3420
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286211539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93098ed199550f822e106dea4424ff32e6bca218d1f6c90d18abaafc15bc788`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_MAJOR=2.3
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_VERSION=2.3.4
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:12:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:12:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:12:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:12:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:12:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:12:48 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 00:15:59 GMT
RUN bundle config --global frozen 1
# Tue, 29 Aug 2017 00:16:00 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 00:16:00 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 00:16:00 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 29 Aug 2017 00:16:01 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 29 Aug 2017 00:16:01 GMT
ONBUILD RUN bundle install
# Tue, 29 Aug 2017 00:16:01 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbbdf8061c9778a879ad4c18286ecdc7d425ee02b961677da8d5c989db9796a`  
		Last Modified: Tue, 29 Aug 2017 00:32:13 GMT  
		Size: 35.8 MB (35756527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f064e3d09ff4c8b01eb4532524a9cabeff320c49ee83ab4860c5531402d17a6`  
		Last Modified: Tue, 29 Aug 2017 00:32:08 GMT  
		Size: 675.3 KB (675316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911a03d4ad1ee5d3fc51dac3e24ad35e1ee272e7a5c30b5a2128fe951774352`  
		Last Modified: Tue, 29 Aug 2017 00:32:07 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f9e1b684e5fd0f2b126fc23671d61cda3ce707d097d8f86e7e0510f750ac48`  
		Last Modified: Tue, 29 Aug 2017 00:33:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0900d81db3b7ca847178cfc39bc10ca7416a7627ff49d4f748e824215147bff4`  
		Last Modified: Tue, 29 Aug 2017 00:33:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:9d87ffa2d0fd3211c2b375d8628989367c7720790632694a3eeb8a72f4dc3420
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286211539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93098ed199550f822e106dea4424ff32e6bca218d1f6c90d18abaafc15bc788`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_MAJOR=2.3
# Tue, 29 Aug 2017 00:09:54 GMT
ENV RUBY_VERSION=2.3.4
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:09:55 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:12:45 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:12:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:12:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:12:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:12:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:12:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:12:48 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 00:15:59 GMT
RUN bundle config --global frozen 1
# Tue, 29 Aug 2017 00:16:00 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 00:16:00 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 00:16:00 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 29 Aug 2017 00:16:01 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 29 Aug 2017 00:16:01 GMT
ONBUILD RUN bundle install
# Tue, 29 Aug 2017 00:16:01 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdbbdf8061c9778a879ad4c18286ecdc7d425ee02b961677da8d5c989db9796a`  
		Last Modified: Tue, 29 Aug 2017 00:32:13 GMT  
		Size: 35.8 MB (35756527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f064e3d09ff4c8b01eb4532524a9cabeff320c49ee83ab4860c5531402d17a6`  
		Last Modified: Tue, 29 Aug 2017 00:32:08 GMT  
		Size: 675.3 KB (675316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5911a03d4ad1ee5d3fc51dac3e24ad35e1ee272e7a5c30b5a2128fe951774352`  
		Last Modified: Tue, 29 Aug 2017 00:32:07 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f9e1b684e5fd0f2b126fc23671d61cda3ce707d097d8f86e7e0510f750ac48`  
		Last Modified: Tue, 29 Aug 2017 00:33:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0900d81db3b7ca847178cfc39bc10ca7416a7627ff49d4f748e824215147bff4`  
		Last Modified: Tue, 29 Aug 2017 00:33:24 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-alpine3.4`

```console
$ docker pull ruby@sha256:cffcd2cefce0e355817b5767f08121228013f085a079309f9d21ec37eca58a5c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43814750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eecaaffceaf17021a812d4d51dec80c0f8715c2f38d712b7d897df3d453fc8a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:36:42 GMT
ENV RUBY_MAJOR=2.3
# Wed, 28 Jun 2017 22:36:43 GMT
ENV RUBY_VERSION=2.3.4
# Wed, 28 Jun 2017 22:36:44 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:16:06 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:18:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:18:11 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:18:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:18:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:18:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:18:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:18:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:18:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0563b33185f096c4cab25b3de2bc08053c433d34f70a4a59acbca78d9f6027`  
		Last Modified: Tue, 29 Aug 2017 00:33:52 GMT  
		Size: 40.8 MB (40754103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7fd92b52920f5d45ca0c2a8f047cdfa89a78da19b8c55d23b761192ef9fc6d`  
		Last Modified: Tue, 29 Aug 2017 00:33:43 GMT  
		Size: 675.3 KB (675292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc713537dd646be01821c5ccaa52702eef5e953a78a7cb4749588e4cc7020f7`  
		Last Modified: Tue, 29 Aug 2017 00:33:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine3.4`

```console
$ docker pull ruby@sha256:cffcd2cefce0e355817b5767f08121228013f085a079309f9d21ec37eca58a5c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43814750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eecaaffceaf17021a812d4d51dec80c0f8715c2f38d712b7d897df3d453fc8a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:36:42 GMT
ENV RUBY_MAJOR=2.3
# Wed, 28 Jun 2017 22:36:43 GMT
ENV RUBY_VERSION=2.3.4
# Wed, 28 Jun 2017 22:36:44 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:16:06 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:18:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:18:11 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:18:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:18:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:18:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:18:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:18:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:18:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0563b33185f096c4cab25b3de2bc08053c433d34f70a4a59acbca78d9f6027`  
		Last Modified: Tue, 29 Aug 2017 00:33:52 GMT  
		Size: 40.8 MB (40754103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7fd92b52920f5d45ca0c2a8f047cdfa89a78da19b8c55d23b761192ef9fc6d`  
		Last Modified: Tue, 29 Aug 2017 00:33:43 GMT  
		Size: 675.3 KB (675292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc713537dd646be01821c5ccaa52702eef5e953a78a7cb4749588e4cc7020f7`  
		Last Modified: Tue, 29 Aug 2017 00:33:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-alpine`

```console
$ docker pull ruby@sha256:cffcd2cefce0e355817b5767f08121228013f085a079309f9d21ec37eca58a5c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43814750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eecaaffceaf17021a812d4d51dec80c0f8715c2f38d712b7d897df3d453fc8a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:36:42 GMT
ENV RUBY_MAJOR=2.3
# Wed, 28 Jun 2017 22:36:43 GMT
ENV RUBY_VERSION=2.3.4
# Wed, 28 Jun 2017 22:36:44 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:16:06 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:18:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:18:11 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:18:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:18:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:18:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:18:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:18:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:18:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0563b33185f096c4cab25b3de2bc08053c433d34f70a4a59acbca78d9f6027`  
		Last Modified: Tue, 29 Aug 2017 00:33:52 GMT  
		Size: 40.8 MB (40754103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7fd92b52920f5d45ca0c2a8f047cdfa89a78da19b8c55d23b761192ef9fc6d`  
		Last Modified: Tue, 29 Aug 2017 00:33:43 GMT  
		Size: 675.3 KB (675292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc713537dd646be01821c5ccaa52702eef5e953a78a7cb4749588e4cc7020f7`  
		Last Modified: Tue, 29 Aug 2017 00:33:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:cffcd2cefce0e355817b5767f08121228013f085a079309f9d21ec37eca58a5c
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43814750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eecaaffceaf17021a812d4d51dec80c0f8715c2f38d712b7d897df3d453fc8a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:36:42 GMT
ENV RUBY_MAJOR=2.3
# Wed, 28 Jun 2017 22:36:43 GMT
ENV RUBY_VERSION=2.3.4
# Wed, 28 Jun 2017 22:36:44 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Tue, 29 Aug 2017 00:16:06 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:18:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:18:11 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:18:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:18:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:18:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:18:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:18:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:18:14 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0563b33185f096c4cab25b3de2bc08053c433d34f70a4a59acbca78d9f6027`  
		Last Modified: Tue, 29 Aug 2017 00:33:52 GMT  
		Size: 40.8 MB (40754103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc7fd92b52920f5d45ca0c2a8f047cdfa89a78da19b8c55d23b761192ef9fc6d`  
		Last Modified: Tue, 29 Aug 2017 00:33:43 GMT  
		Size: 675.3 KB (675292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc713537dd646be01821c5ccaa52702eef5e953a78a7cb4749588e4cc7020f7`  
		Last Modified: Tue, 29 Aug 2017 00:33:43 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-jessie`

```console
$ docker pull ruby@sha256:d986363d877474b493d0015b9ceffea8f8f668c958c32176667fe2f9b55c34b3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.2 MB (284208650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6c869d09181122fe316fccf328e8085623620b46eb086f62589eb48825db29`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:18:19 GMT
ENV RUBY_MAJOR=2.2
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:20:58 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:20:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:21:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:21:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7c246e729c26d084122a4234951ac390c85f468ff03335736b531d32cf6066`  
		Last Modified: Tue, 29 Aug 2017 00:34:29 GMT  
		Size: 33.8 MB (33753930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa2820b408a2c54fd29a7cac421acdc8e47492de9a25d29a48235b72c7b5d26`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 675.3 KB (675336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c621610a888107a88e2fa4c2832598a07530d8e67a76c64c1686702618e31767`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-jessie`

```console
$ docker pull ruby@sha256:d986363d877474b493d0015b9ceffea8f8f668c958c32176667fe2f9b55c34b3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.2 MB (284208650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6c869d09181122fe316fccf328e8085623620b46eb086f62589eb48825db29`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:18:19 GMT
ENV RUBY_MAJOR=2.2
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:20:58 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:20:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:21:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:21:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7c246e729c26d084122a4234951ac390c85f468ff03335736b531d32cf6066`  
		Last Modified: Tue, 29 Aug 2017 00:34:29 GMT  
		Size: 33.8 MB (33753930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa2820b408a2c54fd29a7cac421acdc8e47492de9a25d29a48235b72c7b5d26`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 675.3 KB (675336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c621610a888107a88e2fa4c2832598a07530d8e67a76c64c1686702618e31767`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7`

```console
$ docker pull ruby@sha256:d986363d877474b493d0015b9ceffea8f8f668c958c32176667fe2f9b55c34b3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.2 MB (284208650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6c869d09181122fe316fccf328e8085623620b46eb086f62589eb48825db29`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:18:19 GMT
ENV RUBY_MAJOR=2.2
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:20:58 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:20:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:21:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:21:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7c246e729c26d084122a4234951ac390c85f468ff03335736b531d32cf6066`  
		Last Modified: Tue, 29 Aug 2017 00:34:29 GMT  
		Size: 33.8 MB (33753930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa2820b408a2c54fd29a7cac421acdc8e47492de9a25d29a48235b72c7b5d26`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 675.3 KB (675336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c621610a888107a88e2fa4c2832598a07530d8e67a76c64c1686702618e31767`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:d986363d877474b493d0015b9ceffea8f8f668c958c32176667fe2f9b55c34b3
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.2 MB (284208650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6c869d09181122fe316fccf328e8085623620b46eb086f62589eb48825db29`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:18:19 GMT
ENV RUBY_MAJOR=2.2
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:20:58 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:20:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:21:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:21:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7c246e729c26d084122a4234951ac390c85f468ff03335736b531d32cf6066`  
		Last Modified: Tue, 29 Aug 2017 00:34:29 GMT  
		Size: 33.8 MB (33753930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa2820b408a2c54fd29a7cac421acdc8e47492de9a25d29a48235b72c7b5d26`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 675.3 KB (675336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c621610a888107a88e2fa4c2832598a07530d8e67a76c64c1686702618e31767`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-slim-jessie`

```console
$ docker pull ruby@sha256:6e608a4509e1c3d22944f0e95d6a4cc972ea5ff3d29f8a44c71f81a83e1886fd
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97370930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e8e6c4d3b7470b8d82f6e45cf6369dcee9939e004324122eeeae632bf368fb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim-jessie`

```console
$ docker pull ruby@sha256:6e608a4509e1c3d22944f0e95d6a4cc972ea5ff3d29f8a44c71f81a83e1886fd
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97370930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e8e6c4d3b7470b8d82f6e45cf6369dcee9939e004324122eeeae632bf368fb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-slim`

```console
$ docker pull ruby@sha256:6e608a4509e1c3d22944f0e95d6a4cc972ea5ff3d29f8a44c71f81a83e1886fd
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97370930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e8e6c4d3b7470b8d82f6e45cf6369dcee9939e004324122eeeae632bf368fb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:6e608a4509e1c3d22944f0e95d6a4cc972ea5ff3d29f8a44c71f81a83e1886fd
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97370930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06e8e6c4d3b7470b8d82f6e45cf6369dcee9939e004324122eeeae632bf368fb`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 18:48:24 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:48:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:48:25 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:21:07 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:23:54 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:23:54 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:23:55 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:23:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:23:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:23:57 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:23:57 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484a9fcadb8838b009dcbdd1dae46da068f18bd5c10ba9046fb4aab915c63d55`  
		Last Modified: Mon, 24 Jul 2017 19:11:51 GMT  
		Size: 10.2 MB (10160540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7f98f27d9fc17986ba9949113eb9e6971247a09daf7ed5451d512786941f23`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68029d087b149002bd5866fe60b80e2e533881916bdff79f881b8dc05322bf94`  
		Last Modified: Tue, 29 Aug 2017 00:35:07 GMT  
		Size: 33.9 MB (33929094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f6e50085c5c8089cee29ac242f5ca15585e5584d2356f9fe824a53030d33ff`  
		Last Modified: Tue, 29 Aug 2017 00:35:01 GMT  
		Size: 675.3 KB (675303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d053e6e11edf67cf9cb43b50ee88ce37f3d05f09c16287765923101a5be008`  
		Last Modified: Tue, 29 Aug 2017 00:35:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-onbuild`

```console
$ docker pull ruby@sha256:7a40dc3edceb1a3306338001d7ebda423ebc8d18532785adc3aa34d754ba6088
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.2 MB (284208961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654f419ceaa5807fa4aae2e9e32908a4ffb4477d7fba58a483ebc63ab748d2d2`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:18:19 GMT
ENV RUBY_MAJOR=2.2
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:20:58 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:20:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:21:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:21:02 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 00:24:03 GMT
RUN bundle config --global frozen 1
# Tue, 29 Aug 2017 00:24:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 00:24:03 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 00:24:04 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 29 Aug 2017 00:24:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 29 Aug 2017 00:24:04 GMT
ONBUILD RUN bundle install
# Tue, 29 Aug 2017 00:24:05 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7c246e729c26d084122a4234951ac390c85f468ff03335736b531d32cf6066`  
		Last Modified: Tue, 29 Aug 2017 00:34:29 GMT  
		Size: 33.8 MB (33753930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa2820b408a2c54fd29a7cac421acdc8e47492de9a25d29a48235b72c7b5d26`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 675.3 KB (675336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c621610a888107a88e2fa4c2832598a07530d8e67a76c64c1686702618e31767`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df310f08ad59da153e01aab731f36803b0dca6646107144ceafc639b7d0a00d8`  
		Last Modified: Tue, 29 Aug 2017 00:35:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0cdbb900531a23670ae61a29fc841c97684debc70171f796043a74d93d2c64`  
		Last Modified: Tue, 29 Aug 2017 00:35:39 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:7a40dc3edceb1a3306338001d7ebda423ebc8d18532785adc3aa34d754ba6088
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.2 MB (284208961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654f419ceaa5807fa4aae2e9e32908a4ffb4477d7fba58a483ebc63ab748d2d2`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 17:24:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 17:24:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 24 Jul 2017 17:25:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:34:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 28 Aug 2017 23:54:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 29 Aug 2017 00:18:19 GMT
ENV RUBY_MAJOR=2.2
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_VERSION=2.2.7
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:18:20 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:20:58 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:20:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:21:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:21:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:21:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:21:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:21:02 GMT
CMD ["irb"]
# Tue, 29 Aug 2017 00:24:03 GMT
RUN bundle config --global frozen 1
# Tue, 29 Aug 2017 00:24:03 GMT
RUN mkdir -p /usr/src/app
# Tue, 29 Aug 2017 00:24:03 GMT
WORKDIR /usr/src/app
# Tue, 29 Aug 2017 00:24:04 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 29 Aug 2017 00:24:04 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 29 Aug 2017 00:24:04 GMT
ONBUILD RUN bundle install
# Tue, 29 Aug 2017 00:24:05 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b032b8bbe8bc215ad3337035d0183fc353841ec6478d1c481e6e13628ad9e00`  
		Last Modified: Mon, 24 Jul 2017 17:33:28 GMT  
		Size: 19.3 MB (19263320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a5b35f6ead105e66a9af969454ac09b5772eeb0c6281972c48d2ce882e8eba`  
		Last Modified: Mon, 24 Jul 2017 17:33:54 GMT  
		Size: 43.2 MB (43226131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fb60496f634f9afb60bc3374ab2d408c90a59ad033f6400d2b8ce0c9e2c6ac`  
		Last Modified: Mon, 28 Aug 2017 23:58:24 GMT  
		Size: 134.7 MB (134683941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa211bcfe2cf486e52c57c5f968484e0ea3eb7c773b406a64bff42dc7e871b8`  
		Last Modified: Tue, 29 Aug 2017 00:27:39 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7c246e729c26d084122a4234951ac390c85f468ff03335736b531d32cf6066`  
		Last Modified: Tue, 29 Aug 2017 00:34:29 GMT  
		Size: 33.8 MB (33753930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa2820b408a2c54fd29a7cac421acdc8e47492de9a25d29a48235b72c7b5d26`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 675.3 KB (675336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c621610a888107a88e2fa4c2832598a07530d8e67a76c64c1686702618e31767`  
		Last Modified: Tue, 29 Aug 2017 00:34:22 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df310f08ad59da153e01aab731f36803b0dca6646107144ceafc639b7d0a00d8`  
		Last Modified: Tue, 29 Aug 2017 00:35:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0cdbb900531a23670ae61a29fc841c97684debc70171f796043a74d93d2c64`  
		Last Modified: Tue, 29 Aug 2017 00:35:39 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-alpine3.4`

```console
$ docker pull ruby@sha256:4064366cc7c999d6f6407ec1831e5c1ea254c67d0e46918ba1261ee98a9a1edc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36726208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c0bceebeb1ddc1f3614667409b0b9d95ee131039d5297b7ed71c7be220e9a4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:28:17 GMT
ENV RUBY_MAJOR=2.2
# Wed, 28 Jun 2017 22:28:18 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 28 Jun 2017 22:28:19 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:24:09 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:26:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:26:08 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:26:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:26:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:26:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:26:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:26:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:26:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d7f1f5286964b2272dc9f195fee0397a32c6c951831fb9d971409abf377328`  
		Last Modified: Tue, 29 Aug 2017 00:36:06 GMT  
		Size: 33.7 MB (33665527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a2d82f8cc387afd2e21d3408b9adcceac93a4256e856ce8f955910e5200a12`  
		Last Modified: Tue, 29 Aug 2017 00:35:57 GMT  
		Size: 675.3 KB (675326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8724ef283a5d58b66b6d7b9578e038ac94a838eff6d246bb3d6ff7516362db1f`  
		Last Modified: Tue, 29 Aug 2017 00:35:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine3.4`

```console
$ docker pull ruby@sha256:4064366cc7c999d6f6407ec1831e5c1ea254c67d0e46918ba1261ee98a9a1edc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36726208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c0bceebeb1ddc1f3614667409b0b9d95ee131039d5297b7ed71c7be220e9a4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:28:17 GMT
ENV RUBY_MAJOR=2.2
# Wed, 28 Jun 2017 22:28:18 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 28 Jun 2017 22:28:19 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:24:09 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:26:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:26:08 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:26:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:26:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:26:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:26:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:26:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:26:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d7f1f5286964b2272dc9f195fee0397a32c6c951831fb9d971409abf377328`  
		Last Modified: Tue, 29 Aug 2017 00:36:06 GMT  
		Size: 33.7 MB (33665527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a2d82f8cc387afd2e21d3408b9adcceac93a4256e856ce8f955910e5200a12`  
		Last Modified: Tue, 29 Aug 2017 00:35:57 GMT  
		Size: 675.3 KB (675326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8724ef283a5d58b66b6d7b9578e038ac94a838eff6d246bb3d6ff7516362db1f`  
		Last Modified: Tue, 29 Aug 2017 00:35:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-alpine`

```console
$ docker pull ruby@sha256:4064366cc7c999d6f6407ec1831e5c1ea254c67d0e46918ba1261ee98a9a1edc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36726208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c0bceebeb1ddc1f3614667409b0b9d95ee131039d5297b7ed71c7be220e9a4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:28:17 GMT
ENV RUBY_MAJOR=2.2
# Wed, 28 Jun 2017 22:28:18 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 28 Jun 2017 22:28:19 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:24:09 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:26:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:26:08 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:26:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:26:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:26:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:26:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:26:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:26:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d7f1f5286964b2272dc9f195fee0397a32c6c951831fb9d971409abf377328`  
		Last Modified: Tue, 29 Aug 2017 00:36:06 GMT  
		Size: 33.7 MB (33665527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a2d82f8cc387afd2e21d3408b9adcceac93a4256e856ce8f955910e5200a12`  
		Last Modified: Tue, 29 Aug 2017 00:35:57 GMT  
		Size: 675.3 KB (675326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8724ef283a5d58b66b6d7b9578e038ac94a838eff6d246bb3d6ff7516362db1f`  
		Last Modified: Tue, 29 Aug 2017 00:35:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:4064366cc7c999d6f6407ec1831e5c1ea254c67d0e46918ba1261ee98a9a1edc
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36726208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c0bceebeb1ddc1f3614667409b0b9d95ee131039d5297b7ed71c7be220e9a4`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 27 Jun 2017 18:37:38 GMT
ADD file:89e72bfc19e81624ba6a34bd5cecdf258750dc569ba03e17e3f4a286b1526461 in / 
# Tue, 27 Jun 2017 18:38:04 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 22:16:40 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 28 Jun 2017 22:28:17 GMT
ENV RUBY_MAJOR=2.2
# Wed, 28 Jun 2017 22:28:18 GMT
ENV RUBY_VERSION=2.2.7
# Wed, 28 Jun 2017 22:28:19 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Tue, 29 Aug 2017 00:24:09 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 29 Aug 2017 00:26:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		openssl 		openssl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 29 Aug 2017 00:26:08 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 29 Aug 2017 00:26:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 29 Aug 2017 00:26:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 29 Aug 2017 00:26:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 29 Aug 2017 00:26:10 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Aug 2017 00:26:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 29 Aug 2017 00:26:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:90f4dba627d65ea3223761bcfe54e726337a919fe98117ef107914f91be657c9`  
		Last Modified: Tue, 27 Jun 2017 18:47:56 GMT  
		Size: 2.4 MB (2385007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c1a7514ba6794891826f241e6ec6c2bb1c5b99c8ae209b7ec49dd327bdc128`  
		Last Modified: Fri, 30 Jun 2017 01:07:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d7f1f5286964b2272dc9f195fee0397a32c6c951831fb9d971409abf377328`  
		Last Modified: Tue, 29 Aug 2017 00:36:06 GMT  
		Size: 33.7 MB (33665527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a2d82f8cc387afd2e21d3408b9adcceac93a4256e856ce8f955910e5200a12`  
		Last Modified: Tue, 29 Aug 2017 00:35:57 GMT  
		Size: 675.3 KB (675326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8724ef283a5d58b66b6d7b9578e038ac94a838eff6d246bb3d6ff7516362db1f`  
		Last Modified: Tue, 29 Aug 2017 00:35:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
