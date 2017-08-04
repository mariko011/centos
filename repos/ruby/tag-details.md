<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ruby`

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

## `ruby:2.4.1-jessie`

```console
$ docker pull ruby@sha256:d6531352b2993d6f085ec39fee876d9b5d768612949d33478f4b593db5a8323b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630c02d3d1b80bb1413f80c164a06a1184577d22cb12e5479dd6ee081449b77`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-jessie`

```console
$ docker pull ruby@sha256:d6531352b2993d6f085ec39fee876d9b5d768612949d33478f4b593db5a8323b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630c02d3d1b80bb1413f80c164a06a1184577d22cb12e5479dd6ee081449b77`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-jessie`

```console
$ docker pull ruby@sha256:d6531352b2993d6f085ec39fee876d9b5d768612949d33478f4b593db5a8323b
```

-	Platforms:
	-	linux; amd64

### `ruby:2-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630c02d3d1b80bb1413f80c164a06a1184577d22cb12e5479dd6ee081449b77`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:jessie`

```console
$ docker pull ruby@sha256:d6531352b2993d6f085ec39fee876d9b5d768612949d33478f4b593db5a8323b
```

-	Platforms:
	-	linux; amd64

### `ruby:jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630c02d3d1b80bb1413f80c164a06a1184577d22cb12e5479dd6ee081449b77`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1`

```console
$ docker pull ruby@sha256:d6531352b2993d6f085ec39fee876d9b5d768612949d33478f4b593db5a8323b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630c02d3d1b80bb1413f80c164a06a1184577d22cb12e5479dd6ee081449b77`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4`

```console
$ docker pull ruby@sha256:d6531352b2993d6f085ec39fee876d9b5d768612949d33478f4b593db5a8323b
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630c02d3d1b80bb1413f80c164a06a1184577d22cb12e5479dd6ee081449b77`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2`

```console
$ docker pull ruby@sha256:d6531352b2993d6f085ec39fee876d9b5d768612949d33478f4b593db5a8323b
```

-	Platforms:
	-	linux; amd64

### `ruby:2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630c02d3d1b80bb1413f80c164a06a1184577d22cb12e5479dd6ee081449b77`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:latest`

```console
$ docker pull ruby@sha256:d6531352b2993d6f085ec39fee876d9b5d768612949d33478f4b593db5a8323b
```

-	Platforms:
	-	linux; amd64

### `ruby:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3630c02d3d1b80bb1413f80c164a06a1184577d22cb12e5479dd6ee081449b77`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-slim-jessie`

```console
$ docker pull ruby@sha256:954489061f862416752aa78a14fc3556f7a6a8125112b2f1df8bfa83fbbe8a0e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86693235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c498a69cfe96045c851085a786534640cf45809c8587453024993a489cc4a2`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
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
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim-jessie`

```console
$ docker pull ruby@sha256:954489061f862416752aa78a14fc3556f7a6a8125112b2f1df8bfa83fbbe8a0e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86693235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c498a69cfe96045c851085a786534640cf45809c8587453024993a489cc4a2`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
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
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim-jessie`

```console
$ docker pull ruby@sha256:954489061f862416752aa78a14fc3556f7a6a8125112b2f1df8bfa83fbbe8a0e
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86693235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c498a69cfe96045c851085a786534640cf45809c8587453024993a489cc4a2`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
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
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim-jessie`

```console
$ docker pull ruby@sha256:954489061f862416752aa78a14fc3556f7a6a8125112b2f1df8bfa83fbbe8a0e
```

-	Platforms:
	-	linux; amd64

### `ruby:slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86693235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c498a69cfe96045c851085a786534640cf45809c8587453024993a489cc4a2`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
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
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-slim`

```console
$ docker pull ruby@sha256:954489061f862416752aa78a14fc3556f7a6a8125112b2f1df8bfa83fbbe8a0e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86693235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c498a69cfe96045c851085a786534640cf45809c8587453024993a489cc4a2`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
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
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-slim`

```console
$ docker pull ruby@sha256:954489061f862416752aa78a14fc3556f7a6a8125112b2f1df8bfa83fbbe8a0e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86693235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c498a69cfe96045c851085a786534640cf45809c8587453024993a489cc4a2`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
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
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-slim`

```console
$ docker pull ruby@sha256:954489061f862416752aa78a14fc3556f7a6a8125112b2f1df8bfa83fbbe8a0e
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86693235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c498a69cfe96045c851085a786534640cf45809c8587453024993a489cc4a2`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
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
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:slim`

```console
$ docker pull ruby@sha256:954489061f862416752aa78a14fc3556f7a6a8125112b2f1df8bfa83fbbe8a0e
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86693235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c498a69cfe96045c851085a786534640cf45809c8587453024993a489cc4a2`
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
# Mon, 24 Jul 2017 19:06:08 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:10:59 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:00 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:03 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:04 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:04 GMT
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
	-	`sha256:f1cca0f715e1e9dd6c7f4aab3980af6c026d27b8e5586935ce216b9b9bc1e8e5`  
		Last Modified: Mon, 24 Jul 2017 19:14:39 GMT  
		Size: 23.3 MB (23253326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29b01be01ba80d663fba4b004e8f400a8de36102ffb0004e5d1aa7cd248c9bc`  
		Last Modified: Mon, 24 Jul 2017 19:14:33 GMT  
		Size: 673.4 KB (673376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bc8594fa676d20ae0e996ae95b718f69433b0809be9b706baba7cabf52585f`  
		Last Modified: Mon, 24 Jul 2017 19:14:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-onbuild`

```console
$ docker pull ruby@sha256:400b141da4b171d88f03a936338c400c18bdd1afa0b6a59ab7aac5ba98177f81
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012d3c95a64624f08f4471ee56f8973d23b2f4e99131bae407ac6237be5c5e9c`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 19:11:16 GMT
RUN bundle config --global frozen 1
# Mon, 24 Jul 2017 19:11:17 GMT
RUN mkdir -p /usr/src/app
# Mon, 24 Jul 2017 19:11:17 GMT
WORKDIR /usr/src/app
# Mon, 24 Jul 2017 19:11:17 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 24 Jul 2017 19:11:17 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 24 Jul 2017 19:11:18 GMT
ONBUILD RUN bundle install
# Mon, 24 Jul 2017 19:11:18 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa38b39bd1318fe58ef3c1d456e5a541ca690d63e62aa0efe7fe3273c2fd1218`  
		Last Modified: Mon, 24 Jul 2017 19:15:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bb256c3497493c29be7d5b46463216c54545989fec83e47aecb135507a2879`  
		Last Modified: Mon, 24 Jul 2017 19:15:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-onbuild`

```console
$ docker pull ruby@sha256:400b141da4b171d88f03a936338c400c18bdd1afa0b6a59ab7aac5ba98177f81
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012d3c95a64624f08f4471ee56f8973d23b2f4e99131bae407ac6237be5c5e9c`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 19:11:16 GMT
RUN bundle config --global frozen 1
# Mon, 24 Jul 2017 19:11:17 GMT
RUN mkdir -p /usr/src/app
# Mon, 24 Jul 2017 19:11:17 GMT
WORKDIR /usr/src/app
# Mon, 24 Jul 2017 19:11:17 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 24 Jul 2017 19:11:17 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 24 Jul 2017 19:11:18 GMT
ONBUILD RUN bundle install
# Mon, 24 Jul 2017 19:11:18 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa38b39bd1318fe58ef3c1d456e5a541ca690d63e62aa0efe7fe3273c2fd1218`  
		Last Modified: Mon, 24 Jul 2017 19:15:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bb256c3497493c29be7d5b46463216c54545989fec83e47aecb135507a2879`  
		Last Modified: Mon, 24 Jul 2017 19:15:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:400b141da4b171d88f03a936338c400c18bdd1afa0b6a59ab7aac5ba98177f81
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012d3c95a64624f08f4471ee56f8973d23b2f4e99131bae407ac6237be5c5e9c`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 19:11:16 GMT
RUN bundle config --global frozen 1
# Mon, 24 Jul 2017 19:11:17 GMT
RUN mkdir -p /usr/src/app
# Mon, 24 Jul 2017 19:11:17 GMT
WORKDIR /usr/src/app
# Mon, 24 Jul 2017 19:11:17 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 24 Jul 2017 19:11:17 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 24 Jul 2017 19:11:18 GMT
ONBUILD RUN bundle install
# Mon, 24 Jul 2017 19:11:18 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa38b39bd1318fe58ef3c1d456e5a541ca690d63e62aa0efe7fe3273c2fd1218`  
		Last Modified: Mon, 24 Jul 2017 19:15:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bb256c3497493c29be7d5b46463216c54545989fec83e47aecb135507a2879`  
		Last Modified: Mon, 24 Jul 2017 19:15:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:onbuild`

```console
$ docker pull ruby@sha256:400b141da4b171d88f03a936338c400c18bdd1afa0b6a59ab7aac5ba98177f81
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270727815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012d3c95a64624f08f4471ee56f8973d23b2f4e99131bae407ac6237be5c5e9c`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_MAJOR=2.4
# Mon, 24 Jul 2017 19:01:35 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 24 Jul 2017 19:01:36 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:06:02 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:06:02 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:06:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:06:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:06:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:06:05 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:06:06 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 19:11:16 GMT
RUN bundle config --global frozen 1
# Mon, 24 Jul 2017 19:11:17 GMT
RUN mkdir -p /usr/src/app
# Mon, 24 Jul 2017 19:11:17 GMT
WORKDIR /usr/src/app
# Mon, 24 Jul 2017 19:11:17 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 24 Jul 2017 19:11:17 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 24 Jul 2017 19:11:18 GMT
ONBUILD RUN bundle install
# Mon, 24 Jul 2017 19:11:18 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7931b3d78b90dd74f3147e6e8c9f0fff41e0728daee89182726ddfa6f4594901`  
		Last Modified: Mon, 24 Jul 2017 19:14:05 GMT  
		Size: 23.1 MB (23099865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1447720beebd385b58d6912e6c364dd105e4bf4ff4f2ec7b3b2225b66fbf4d24`  
		Last Modified: Mon, 24 Jul 2017 19:13:58 GMT  
		Size: 673.4 KB (673380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c1f8174094001be3eb176b8e59359ae1ec35e57adfa9d7741a904122584e5b`  
		Last Modified: Mon, 24 Jul 2017 19:13:57 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa38b39bd1318fe58ef3c1d456e5a541ca690d63e62aa0efe7fe3273c2fd1218`  
		Last Modified: Mon, 24 Jul 2017 19:15:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23bb256c3497493c29be7d5b46463216c54545989fec83e47aecb135507a2879`  
		Last Modified: Mon, 24 Jul 2017 19:15:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-alpine3.4`

```console
$ docker pull ruby@sha256:26f474950f2195c719a1a52b81df2073641b39401b427b9965dabcb3d9d2edc6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27686401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f38f6a9837ff613bbfebf851eed5c13789d57fa3da762bc41f2e21a31ddda68`
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
# Wed, 28 Jun 2017 22:16:43 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:08 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:13 GMT
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
	-	`sha256:e970acb20b346d5ba2fc4114470c6bc788bb01506529344596a8d4d59ce30d36`  
		Last Modified: Fri, 30 Jun 2017 01:12:43 GMT  
		Size: 24.6 MB (24627672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1603643434d25e73d61367cd067b3f8163a9854a155b87f40469ed31882346`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 673.4 KB (673374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ec6100fdd40dd84ec3a5b73849a60a7d59205215197b5cda9f0d0e5639f5e`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine3.4`

```console
$ docker pull ruby@sha256:26f474950f2195c719a1a52b81df2073641b39401b427b9965dabcb3d9d2edc6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27686401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f38f6a9837ff613bbfebf851eed5c13789d57fa3da762bc41f2e21a31ddda68`
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
# Wed, 28 Jun 2017 22:16:43 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:08 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:13 GMT
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
	-	`sha256:e970acb20b346d5ba2fc4114470c6bc788bb01506529344596a8d4d59ce30d36`  
		Last Modified: Fri, 30 Jun 2017 01:12:43 GMT  
		Size: 24.6 MB (24627672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1603643434d25e73d61367cd067b3f8163a9854a155b87f40469ed31882346`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 673.4 KB (673374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ec6100fdd40dd84ec3a5b73849a60a7d59205215197b5cda9f0d0e5639f5e`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine3.4`

```console
$ docker pull ruby@sha256:26f474950f2195c719a1a52b81df2073641b39401b427b9965dabcb3d9d2edc6
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27686401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f38f6a9837ff613bbfebf851eed5c13789d57fa3da762bc41f2e21a31ddda68`
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
# Wed, 28 Jun 2017 22:16:43 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:08 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:13 GMT
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
	-	`sha256:e970acb20b346d5ba2fc4114470c6bc788bb01506529344596a8d4d59ce30d36`  
		Last Modified: Fri, 30 Jun 2017 01:12:43 GMT  
		Size: 24.6 MB (24627672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1603643434d25e73d61367cd067b3f8163a9854a155b87f40469ed31882346`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 673.4 KB (673374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ec6100fdd40dd84ec3a5b73849a60a7d59205215197b5cda9f0d0e5639f5e`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine3.4`

```console
$ docker pull ruby@sha256:26f474950f2195c719a1a52b81df2073641b39401b427b9965dabcb3d9d2edc6
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27686401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f38f6a9837ff613bbfebf851eed5c13789d57fa3da762bc41f2e21a31ddda68`
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
# Wed, 28 Jun 2017 22:16:43 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:08 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:13 GMT
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
	-	`sha256:e970acb20b346d5ba2fc4114470c6bc788bb01506529344596a8d4d59ce30d36`  
		Last Modified: Fri, 30 Jun 2017 01:12:43 GMT  
		Size: 24.6 MB (24627672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1603643434d25e73d61367cd067b3f8163a9854a155b87f40469ed31882346`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 673.4 KB (673374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ec6100fdd40dd84ec3a5b73849a60a7d59205215197b5cda9f0d0e5639f5e`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4.1-alpine`

```console
$ docker pull ruby@sha256:26f474950f2195c719a1a52b81df2073641b39401b427b9965dabcb3d9d2edc6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4.1-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27686401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f38f6a9837ff613bbfebf851eed5c13789d57fa3da762bc41f2e21a31ddda68`
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
# Wed, 28 Jun 2017 22:16:43 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:08 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:13 GMT
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
	-	`sha256:e970acb20b346d5ba2fc4114470c6bc788bb01506529344596a8d4d59ce30d36`  
		Last Modified: Fri, 30 Jun 2017 01:12:43 GMT  
		Size: 24.6 MB (24627672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1603643434d25e73d61367cd067b3f8163a9854a155b87f40469ed31882346`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 673.4 KB (673374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ec6100fdd40dd84ec3a5b73849a60a7d59205215197b5cda9f0d0e5639f5e`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.4-alpine`

```console
$ docker pull ruby@sha256:26f474950f2195c719a1a52b81df2073641b39401b427b9965dabcb3d9d2edc6
```

-	Platforms:
	-	linux; amd64

### `ruby:2.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27686401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f38f6a9837ff613bbfebf851eed5c13789d57fa3da762bc41f2e21a31ddda68`
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
# Wed, 28 Jun 2017 22:16:43 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:08 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:13 GMT
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
	-	`sha256:e970acb20b346d5ba2fc4114470c6bc788bb01506529344596a8d4d59ce30d36`  
		Last Modified: Fri, 30 Jun 2017 01:12:43 GMT  
		Size: 24.6 MB (24627672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1603643434d25e73d61367cd067b3f8163a9854a155b87f40469ed31882346`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 673.4 KB (673374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ec6100fdd40dd84ec3a5b73849a60a7d59205215197b5cda9f0d0e5639f5e`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2-alpine`

```console
$ docker pull ruby@sha256:26f474950f2195c719a1a52b81df2073641b39401b427b9965dabcb3d9d2edc6
```

-	Platforms:
	-	linux; amd64

### `ruby:2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27686401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f38f6a9837ff613bbfebf851eed5c13789d57fa3da762bc41f2e21a31ddda68`
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
# Wed, 28 Jun 2017 22:16:43 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:08 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:13 GMT
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
	-	`sha256:e970acb20b346d5ba2fc4114470c6bc788bb01506529344596a8d4d59ce30d36`  
		Last Modified: Fri, 30 Jun 2017 01:12:43 GMT  
		Size: 24.6 MB (24627672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1603643434d25e73d61367cd067b3f8163a9854a155b87f40469ed31882346`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 673.4 KB (673374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ec6100fdd40dd84ec3a5b73849a60a7d59205215197b5cda9f0d0e5639f5e`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:alpine`

```console
$ docker pull ruby@sha256:26f474950f2195c719a1a52b81df2073641b39401b427b9965dabcb3d9d2edc6
```

-	Platforms:
	-	linux; amd64

### `ruby:alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27686401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f38f6a9837ff613bbfebf851eed5c13789d57fa3da762bc41f2e21a31ddda68`
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
# Wed, 28 Jun 2017 22:16:43 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:19:25 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:11:08 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:11:11 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:11:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:11:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:11:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:11:13 GMT
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
	-	`sha256:e970acb20b346d5ba2fc4114470c6bc788bb01506529344596a8d4d59ce30d36`  
		Last Modified: Fri, 30 Jun 2017 01:12:43 GMT  
		Size: 24.6 MB (24627672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1603643434d25e73d61367cd067b3f8163a9854a155b87f40469ed31882346`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 673.4 KB (673374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505ec6100fdd40dd84ec3a5b73849a60a7d59205215197b5cda9f0d0e5639f5e`  
		Last Modified: Mon, 24 Jul 2017 19:15:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-jessie`

```console
$ docker pull ruby@sha256:a69b201e53e643ff69431507130022219bec6f56133def9bfec4b839fcd0c311
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283318945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e606910d1bd7cbb063f96e7ea2cfc018989d87a375e8fa838afdc4d08db9c79`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Mon, 24 Jul 2017 18:52:37 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:56:52 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:56:52 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:56:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:56:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:56:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:56:56 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1870c7531a424ed134c6f7e36f1f579d2a8b61958f21ea1a2350a3e34e6700d`  
		Last Modified: Mon, 24 Jul 2017 19:12:47 GMT  
		Size: 35.7 MB (35691304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f112937e45bed3481b10049271469f466cefc5b9c8d1bc17a8184b7da2f9c062`  
		Last Modified: Mon, 24 Jul 2017 19:12:39 GMT  
		Size: 673.4 KB (673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605da3a8125207dbf7376854e558b83fcca06fc44b4ddc81dadea5c3a9c859c8`  
		Last Modified: Mon, 24 Jul 2017 19:12:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-jessie`

```console
$ docker pull ruby@sha256:a69b201e53e643ff69431507130022219bec6f56133def9bfec4b839fcd0c311
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283318945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e606910d1bd7cbb063f96e7ea2cfc018989d87a375e8fa838afdc4d08db9c79`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Mon, 24 Jul 2017 18:52:37 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:56:52 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:56:52 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:56:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:56:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:56:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:56:56 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1870c7531a424ed134c6f7e36f1f579d2a8b61958f21ea1a2350a3e34e6700d`  
		Last Modified: Mon, 24 Jul 2017 19:12:47 GMT  
		Size: 35.7 MB (35691304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f112937e45bed3481b10049271469f466cefc5b9c8d1bc17a8184b7da2f9c062`  
		Last Modified: Mon, 24 Jul 2017 19:12:39 GMT  
		Size: 673.4 KB (673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605da3a8125207dbf7376854e558b83fcca06fc44b4ddc81dadea5c3a9c859c8`  
		Last Modified: Mon, 24 Jul 2017 19:12:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4`

```console
$ docker pull ruby@sha256:a69b201e53e643ff69431507130022219bec6f56133def9bfec4b839fcd0c311
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283318945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e606910d1bd7cbb063f96e7ea2cfc018989d87a375e8fa838afdc4d08db9c79`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Mon, 24 Jul 2017 18:52:37 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:56:52 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:56:52 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:56:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:56:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:56:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:56:56 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1870c7531a424ed134c6f7e36f1f579d2a8b61958f21ea1a2350a3e34e6700d`  
		Last Modified: Mon, 24 Jul 2017 19:12:47 GMT  
		Size: 35.7 MB (35691304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f112937e45bed3481b10049271469f466cefc5b9c8d1bc17a8184b7da2f9c062`  
		Last Modified: Mon, 24 Jul 2017 19:12:39 GMT  
		Size: 673.4 KB (673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605da3a8125207dbf7376854e558b83fcca06fc44b4ddc81dadea5c3a9c859c8`  
		Last Modified: Mon, 24 Jul 2017 19:12:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3`

```console
$ docker pull ruby@sha256:a69b201e53e643ff69431507130022219bec6f56133def9bfec4b839fcd0c311
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283318945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e606910d1bd7cbb063f96e7ea2cfc018989d87a375e8fa838afdc4d08db9c79`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Mon, 24 Jul 2017 18:52:37 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:56:52 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:56:52 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:56:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:56:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:56:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:56:56 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1870c7531a424ed134c6f7e36f1f579d2a8b61958f21ea1a2350a3e34e6700d`  
		Last Modified: Mon, 24 Jul 2017 19:12:47 GMT  
		Size: 35.7 MB (35691304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f112937e45bed3481b10049271469f466cefc5b9c8d1bc17a8184b7da2f9c062`  
		Last Modified: Mon, 24 Jul 2017 19:12:39 GMT  
		Size: 673.4 KB (673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605da3a8125207dbf7376854e558b83fcca06fc44b4ddc81dadea5c3a9c859c8`  
		Last Modified: Mon, 24 Jul 2017 19:12:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-slim-jessie`

```console
$ docker pull ruby@sha256:ed7f5a4eec50d8dff025c841ff96803b72245aa08060a523491c4412b1ceffba
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99311931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d797c6f499e9609f1b26b32510c63def369345da9be162f695ff1cb48d18174f`
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
# Mon, 24 Jul 2017 18:57:01 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:01:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:01:10 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:01:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:01:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:01:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:01:14 GMT
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
	-	`sha256:f366b317cc928842b61159750ef21217252c3ce0d2e597c17befb060d1df8241`  
		Last Modified: Mon, 24 Jul 2017 19:13:14 GMT  
		Size: 35.9 MB (35872011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4a6bceb1c356b51352f2ffd06ebb3fb0648e08173c6d451e63d699071122c1`  
		Last Modified: Mon, 24 Jul 2017 19:13:02 GMT  
		Size: 673.4 KB (673387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411e89f926af5997e5854d51b6bb6238fa359bc85223e679300b05f6d9ba368b`  
		Last Modified: Mon, 24 Jul 2017 19:13:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim-jessie`

```console
$ docker pull ruby@sha256:ed7f5a4eec50d8dff025c841ff96803b72245aa08060a523491c4412b1ceffba
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99311931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d797c6f499e9609f1b26b32510c63def369345da9be162f695ff1cb48d18174f`
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
# Mon, 24 Jul 2017 18:57:01 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:01:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:01:10 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:01:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:01:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:01:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:01:14 GMT
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
	-	`sha256:f366b317cc928842b61159750ef21217252c3ce0d2e597c17befb060d1df8241`  
		Last Modified: Mon, 24 Jul 2017 19:13:14 GMT  
		Size: 35.9 MB (35872011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4a6bceb1c356b51352f2ffd06ebb3fb0648e08173c6d451e63d699071122c1`  
		Last Modified: Mon, 24 Jul 2017 19:13:02 GMT  
		Size: 673.4 KB (673387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411e89f926af5997e5854d51b6bb6238fa359bc85223e679300b05f6d9ba368b`  
		Last Modified: Mon, 24 Jul 2017 19:13:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-slim`

```console
$ docker pull ruby@sha256:ed7f5a4eec50d8dff025c841ff96803b72245aa08060a523491c4412b1ceffba
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99311931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d797c6f499e9609f1b26b32510c63def369345da9be162f695ff1cb48d18174f`
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
# Mon, 24 Jul 2017 18:57:01 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:01:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:01:10 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:01:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:01:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:01:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:01:14 GMT
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
	-	`sha256:f366b317cc928842b61159750ef21217252c3ce0d2e597c17befb060d1df8241`  
		Last Modified: Mon, 24 Jul 2017 19:13:14 GMT  
		Size: 35.9 MB (35872011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4a6bceb1c356b51352f2ffd06ebb3fb0648e08173c6d451e63d699071122c1`  
		Last Modified: Mon, 24 Jul 2017 19:13:02 GMT  
		Size: 673.4 KB (673387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411e89f926af5997e5854d51b6bb6238fa359bc85223e679300b05f6d9ba368b`  
		Last Modified: Mon, 24 Jul 2017 19:13:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-slim`

```console
$ docker pull ruby@sha256:ed7f5a4eec50d8dff025c841ff96803b72245aa08060a523491c4412b1ceffba
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99311931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d797c6f499e9609f1b26b32510c63def369345da9be162f695ff1cb48d18174f`
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
# Mon, 24 Jul 2017 18:57:01 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 19:01:10 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:01:10 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:01:12 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:01:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:13 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:01:14 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:01:14 GMT
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
	-	`sha256:f366b317cc928842b61159750ef21217252c3ce0d2e597c17befb060d1df8241`  
		Last Modified: Mon, 24 Jul 2017 19:13:14 GMT  
		Size: 35.9 MB (35872011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4a6bceb1c356b51352f2ffd06ebb3fb0648e08173c6d451e63d699071122c1`  
		Last Modified: Mon, 24 Jul 2017 19:13:02 GMT  
		Size: 673.4 KB (673387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411e89f926af5997e5854d51b6bb6238fa359bc85223e679300b05f6d9ba368b`  
		Last Modified: Mon, 24 Jul 2017 19:13:00 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-onbuild`

```console
$ docker pull ruby@sha256:a091e8c93a8e7219d1e91fce68b606ca57164128d227983fd3a5c5918f0f6725
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283319257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7912c62062d7f29124fab080be2299e75bcc6fcc0a8c85d805d38e5736f4a9`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Mon, 24 Jul 2017 18:52:37 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:56:52 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:56:52 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:56:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:56:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:56:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:56:56 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 19:01:29 GMT
RUN bundle config --global frozen 1
# Mon, 24 Jul 2017 19:01:30 GMT
RUN mkdir -p /usr/src/app
# Mon, 24 Jul 2017 19:01:30 GMT
WORKDIR /usr/src/app
# Mon, 24 Jul 2017 19:01:30 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 24 Jul 2017 19:01:31 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 24 Jul 2017 19:01:31 GMT
ONBUILD RUN bundle install
# Mon, 24 Jul 2017 19:01:31 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1870c7531a424ed134c6f7e36f1f579d2a8b61958f21ea1a2350a3e34e6700d`  
		Last Modified: Mon, 24 Jul 2017 19:12:47 GMT  
		Size: 35.7 MB (35691304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f112937e45bed3481b10049271469f466cefc5b9c8d1bc17a8184b7da2f9c062`  
		Last Modified: Mon, 24 Jul 2017 19:12:39 GMT  
		Size: 673.4 KB (673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605da3a8125207dbf7376854e558b83fcca06fc44b4ddc81dadea5c3a9c859c8`  
		Last Modified: Mon, 24 Jul 2017 19:12:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886e919ac0dc1c7d559360c25465fd99ad54958ba534b00d081530594fc7062c`  
		Last Modified: Mon, 24 Jul 2017 19:13:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8f100dc91659fa1a8ccab48d072b819925f73357bee9b02430663828ce14ea`  
		Last Modified: Mon, 24 Jul 2017 19:13:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-onbuild`

```console
$ docker pull ruby@sha256:a091e8c93a8e7219d1e91fce68b606ca57164128d227983fd3a5c5918f0f6725
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.3 MB (283319257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7912c62062d7f29124fab080be2299e75bcc6fcc0a8c85d805d38e5736f4a9`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_MAJOR=2.3
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_VERSION=2.3.4
# Mon, 24 Jul 2017 18:52:36 GMT
ENV RUBY_DOWNLOAD_SHA256=341cd9032e9fd17c452ed8562a8d43f7e45bfe05e411d0d7d627751dd82c578c
# Mon, 24 Jul 2017 18:52:37 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:56:52 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:56:52 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:56:54 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:56:54 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:56:55 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:56:56 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:56:56 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 19:01:29 GMT
RUN bundle config --global frozen 1
# Mon, 24 Jul 2017 19:01:30 GMT
RUN mkdir -p /usr/src/app
# Mon, 24 Jul 2017 19:01:30 GMT
WORKDIR /usr/src/app
# Mon, 24 Jul 2017 19:01:30 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 24 Jul 2017 19:01:31 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 24 Jul 2017 19:01:31 GMT
ONBUILD RUN bundle install
# Mon, 24 Jul 2017 19:01:31 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1870c7531a424ed134c6f7e36f1f579d2a8b61958f21ea1a2350a3e34e6700d`  
		Last Modified: Mon, 24 Jul 2017 19:12:47 GMT  
		Size: 35.7 MB (35691304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f112937e45bed3481b10049271469f466cefc5b9c8d1bc17a8184b7da2f9c062`  
		Last Modified: Mon, 24 Jul 2017 19:12:39 GMT  
		Size: 673.4 KB (673385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605da3a8125207dbf7376854e558b83fcca06fc44b4ddc81dadea5c3a9c859c8`  
		Last Modified: Mon, 24 Jul 2017 19:12:38 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:886e919ac0dc1c7d559360c25465fd99ad54958ba534b00d081530594fc7062c`  
		Last Modified: Mon, 24 Jul 2017 19:13:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8f100dc91659fa1a8ccab48d072b819925f73357bee9b02430663828ce14ea`  
		Last Modified: Mon, 24 Jul 2017 19:13:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-alpine3.4`

```console
$ docker pull ruby@sha256:9e6a21c3c8295aa038f621c8fde9505a36fe65d2559baca5b6d42bdbc151c460
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43761829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a583f085d2aa6b9745989ebb702fbdc5dfa478a8586724b4c9a28cf74e32b69`
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
# Wed, 28 Jun 2017 22:36:45 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:39:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:01:18 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:01:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:01:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:01:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:01:24 GMT
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
	-	`sha256:e6538a52932eaf355efc497f0903100ff1e9fc1940f3247245e40a9e92aef1a7`  
		Last Modified: Fri, 30 Jun 2017 01:11:10 GMT  
		Size: 40.7 MB (40703121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f59eea952b81054f17bae6274eba580dea1e1cf71601fcfdd88e1f442a2b1ac`  
		Last Modified: Mon, 24 Jul 2017 19:13:26 GMT  
		Size: 673.4 KB (673353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf361ea959efc316417d709a226ac186762cae204b3a9288acd45cd9b5894e`  
		Last Modified: Mon, 24 Jul 2017 19:13:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine3.4`

```console
$ docker pull ruby@sha256:9e6a21c3c8295aa038f621c8fde9505a36fe65d2559baca5b6d42bdbc151c460
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43761829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a583f085d2aa6b9745989ebb702fbdc5dfa478a8586724b4c9a28cf74e32b69`
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
# Wed, 28 Jun 2017 22:36:45 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:39:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:01:18 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:01:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:01:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:01:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:01:24 GMT
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
	-	`sha256:e6538a52932eaf355efc497f0903100ff1e9fc1940f3247245e40a9e92aef1a7`  
		Last Modified: Fri, 30 Jun 2017 01:11:10 GMT  
		Size: 40.7 MB (40703121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f59eea952b81054f17bae6274eba580dea1e1cf71601fcfdd88e1f442a2b1ac`  
		Last Modified: Mon, 24 Jul 2017 19:13:26 GMT  
		Size: 673.4 KB (673353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf361ea959efc316417d709a226ac186762cae204b3a9288acd45cd9b5894e`  
		Last Modified: Mon, 24 Jul 2017 19:13:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3.4-alpine`

```console
$ docker pull ruby@sha256:9e6a21c3c8295aa038f621c8fde9505a36fe65d2559baca5b6d42bdbc151c460
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3.4-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43761829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a583f085d2aa6b9745989ebb702fbdc5dfa478a8586724b4c9a28cf74e32b69`
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
# Wed, 28 Jun 2017 22:36:45 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:39:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:01:18 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:01:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:01:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:01:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:01:24 GMT
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
	-	`sha256:e6538a52932eaf355efc497f0903100ff1e9fc1940f3247245e40a9e92aef1a7`  
		Last Modified: Fri, 30 Jun 2017 01:11:10 GMT  
		Size: 40.7 MB (40703121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f59eea952b81054f17bae6274eba580dea1e1cf71601fcfdd88e1f442a2b1ac`  
		Last Modified: Mon, 24 Jul 2017 19:13:26 GMT  
		Size: 673.4 KB (673353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf361ea959efc316417d709a226ac186762cae204b3a9288acd45cd9b5894e`  
		Last Modified: Mon, 24 Jul 2017 19:13:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.3-alpine`

```console
$ docker pull ruby@sha256:9e6a21c3c8295aa038f621c8fde9505a36fe65d2559baca5b6d42bdbc151c460
```

-	Platforms:
	-	linux; amd64

### `ruby:2.3-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.8 MB (43761829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a583f085d2aa6b9745989ebb702fbdc5dfa478a8586724b4c9a28cf74e32b69`
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
# Wed, 28 Jun 2017 22:36:45 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:39:07 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 19:01:18 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 19:01:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 19:01:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 19:01:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:01:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 19:01:24 GMT
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
	-	`sha256:e6538a52932eaf355efc497f0903100ff1e9fc1940f3247245e40a9e92aef1a7`  
		Last Modified: Fri, 30 Jun 2017 01:11:10 GMT  
		Size: 40.7 MB (40703121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f59eea952b81054f17bae6274eba580dea1e1cf71601fcfdd88e1f442a2b1ac`  
		Last Modified: Mon, 24 Jul 2017 19:13:26 GMT  
		Size: 673.4 KB (673353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bf361ea959efc316417d709a226ac186762cae204b3a9288acd45cd9b5894e`  
		Last Modified: Mon, 24 Jul 2017 19:13:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-jessie`

```console
$ docker pull ruby@sha256:19f9b88857688cf8f4712d7f2c9a694794b98ab8eaf11fcc5221784a869b9a86
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281338488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9184e7901a5f5210fff0301fc0ede2b6de90e1a11d4ff7b05d6a09d16e0b5bdd`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:47:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:47:51 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:47:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:47:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:47:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:47:55 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cffe6b92a6cecda4c45ef58013cd13a2f2207282650b5d9b0a4c58a53dc13`  
		Last Modified: Mon, 24 Jul 2017 19:11:34 GMT  
		Size: 33.7 MB (33710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b90c34f64712be7a848ce8c5a3544d5a485d2bf6878b35d2f356f49e8a4650`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 673.4 KB (673357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f8cf624d4c73c6b2374f5ba4f71f0ddfbcc3801813602319bb6b1b7ed07e4b`  
		Last Modified: Mon, 24 Jul 2017 19:11:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-jessie`

```console
$ docker pull ruby@sha256:19f9b88857688cf8f4712d7f2c9a694794b98ab8eaf11fcc5221784a869b9a86
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281338488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9184e7901a5f5210fff0301fc0ede2b6de90e1a11d4ff7b05d6a09d16e0b5bdd`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:47:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:47:51 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:47:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:47:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:47:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:47:55 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cffe6b92a6cecda4c45ef58013cd13a2f2207282650b5d9b0a4c58a53dc13`  
		Last Modified: Mon, 24 Jul 2017 19:11:34 GMT  
		Size: 33.7 MB (33710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b90c34f64712be7a848ce8c5a3544d5a485d2bf6878b35d2f356f49e8a4650`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 673.4 KB (673357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f8cf624d4c73c6b2374f5ba4f71f0ddfbcc3801813602319bb6b1b7ed07e4b`  
		Last Modified: Mon, 24 Jul 2017 19:11:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7`

```console
$ docker pull ruby@sha256:19f9b88857688cf8f4712d7f2c9a694794b98ab8eaf11fcc5221784a869b9a86
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281338488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9184e7901a5f5210fff0301fc0ede2b6de90e1a11d4ff7b05d6a09d16e0b5bdd`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:47:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:47:51 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:47:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:47:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:47:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:47:55 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cffe6b92a6cecda4c45ef58013cd13a2f2207282650b5d9b0a4c58a53dc13`  
		Last Modified: Mon, 24 Jul 2017 19:11:34 GMT  
		Size: 33.7 MB (33710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b90c34f64712be7a848ce8c5a3544d5a485d2bf6878b35d2f356f49e8a4650`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 673.4 KB (673357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f8cf624d4c73c6b2374f5ba4f71f0ddfbcc3801813602319bb6b1b7ed07e4b`  
		Last Modified: Mon, 24 Jul 2017 19:11:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2`

```console
$ docker pull ruby@sha256:19f9b88857688cf8f4712d7f2c9a694794b98ab8eaf11fcc5221784a869b9a86
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281338488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9184e7901a5f5210fff0301fc0ede2b6de90e1a11d4ff7b05d6a09d16e0b5bdd`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:47:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:47:51 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:47:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:47:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:47:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:47:55 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cffe6b92a6cecda4c45ef58013cd13a2f2207282650b5d9b0a4c58a53dc13`  
		Last Modified: Mon, 24 Jul 2017 19:11:34 GMT  
		Size: 33.7 MB (33710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b90c34f64712be7a848ce8c5a3544d5a485d2bf6878b35d2f356f49e8a4650`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 673.4 KB (673357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f8cf624d4c73c6b2374f5ba4f71f0ddfbcc3801813602319bb6b1b7ed07e4b`  
		Last Modified: Mon, 24 Jul 2017 19:11:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-slim-jessie`

```console
$ docker pull ruby@sha256:44f485fef9c458943bf77fd6622a74c7f082f47f841f745b748d6d44a531455e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97309702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d93809bca966b0381dec15e687ce151af8e16a1459ba84e55c87fef3d96ce`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
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
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim-jessie`

```console
$ docker pull ruby@sha256:44f485fef9c458943bf77fd6622a74c7f082f47f841f745b748d6d44a531455e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim-jessie` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97309702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d93809bca966b0381dec15e687ce151af8e16a1459ba84e55c87fef3d96ce`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
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
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-slim`

```console
$ docker pull ruby@sha256:44f485fef9c458943bf77fd6622a74c7f082f47f841f745b748d6d44a531455e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97309702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d93809bca966b0381dec15e687ce151af8e16a1459ba84e55c87fef3d96ce`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
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
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-slim`

```console
$ docker pull ruby@sha256:44f485fef9c458943bf77fd6622a74c7f082f47f841f745b748d6d44a531455e
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.3 MB (97309702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d93809bca966b0381dec15e687ce151af8e16a1459ba84e55c87fef3d96ce`
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
# Mon, 24 Jul 2017 18:48:26 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:52:12 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:12 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:14 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:16 GMT
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
	-	`sha256:1a194defb741f301f29d8ebbc1e4bb9562f31e32f12732420d05e29cb0ec388e`  
		Last Modified: Mon, 24 Jul 2017 19:12:00 GMT  
		Size: 33.9 MB (33869787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011cd46bc935cc0957b5044f62e7a58651b6eec2c4b11a3afa41ff6cf2c02928`  
		Last Modified: Mon, 24 Jul 2017 19:11:50 GMT  
		Size: 673.4 KB (673382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731f768a6a68c027be02d37e0b1b76e2fa3534d44fe9c1fb5ddce5b7c4c88a90`  
		Last Modified: Mon, 24 Jul 2017 19:11:49 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-onbuild`

```console
$ docker pull ruby@sha256:6a02b9c21396fe2bbffc254980e1ffd46c59effe59b1bf05cb2a9087adbd33c1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281338799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029b20989c9ca3a93962031de34b5807a48a7d982938f77e26c87b3183242b40`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:47:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:47:51 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:47:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:47:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:47:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:47:55 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 18:52:30 GMT
RUN bundle config --global frozen 1
# Mon, 24 Jul 2017 18:52:31 GMT
RUN mkdir -p /usr/src/app
# Mon, 24 Jul 2017 18:52:31 GMT
WORKDIR /usr/src/app
# Mon, 24 Jul 2017 18:52:31 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 24 Jul 2017 18:52:32 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 24 Jul 2017 18:52:32 GMT
ONBUILD RUN bundle install
# Mon, 24 Jul 2017 18:52:32 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cffe6b92a6cecda4c45ef58013cd13a2f2207282650b5d9b0a4c58a53dc13`  
		Last Modified: Mon, 24 Jul 2017 19:11:34 GMT  
		Size: 33.7 MB (33710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b90c34f64712be7a848ce8c5a3544d5a485d2bf6878b35d2f356f49e8a4650`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 673.4 KB (673357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f8cf624d4c73c6b2374f5ba4f71f0ddfbcc3801813602319bb6b1b7ed07e4b`  
		Last Modified: Mon, 24 Jul 2017 19:11:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7e1635aa3c96f9e9be3053ea7df1cde764826ebca461b9cfd9c23749dc0ff`  
		Last Modified: Mon, 24 Jul 2017 19:12:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1f4ab314623cc625078225233e704b9e0a30ea131f1c59701b3a3163ec17b9`  
		Last Modified: Mon, 24 Jul 2017 19:12:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-onbuild`

```console
$ docker pull ruby@sha256:6a02b9c21396fe2bbffc254980e1ffd46c59effe59b1bf05cb2a9087adbd33c1
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.3 MB (281338799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029b20989c9ca3a93962031de34b5807a48a7d982938f77e26c87b3183242b40`
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
# Mon, 24 Jul 2017 17:26:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 18:43:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_MAJOR=2.2
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_VERSION=2.2.7
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBY_DOWNLOAD_SHA256=234c8aee6543da9efd67008e6e7ee740d41ed57a52e797f65043c3b5ec3bcb53
# Mon, 24 Jul 2017 18:43:10 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 24 Jul 2017 18:47:50 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:47:51 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:47:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:47:53 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:47:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:47:54 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:47:55 GMT
CMD ["irb"]
# Mon, 24 Jul 2017 18:52:30 GMT
RUN bundle config --global frozen 1
# Mon, 24 Jul 2017 18:52:31 GMT
RUN mkdir -p /usr/src/app
# Mon, 24 Jul 2017 18:52:31 GMT
WORKDIR /usr/src/app
# Mon, 24 Jul 2017 18:52:31 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Mon, 24 Jul 2017 18:52:32 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Mon, 24 Jul 2017 18:52:32 GMT
ONBUILD RUN bundle install
# Mon, 24 Jul 2017 18:52:32 GMT
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
	-	`sha256:3245b5a1c52cbf0ae23d948fb94ef7b321e3dc54e13c3f6cf79951ed8237f03e`  
		Last Modified: Mon, 24 Jul 2017 17:34:30 GMT  
		Size: 131.9 MB (131858814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe857736c8f3a5369ac183fe86e005b237e0580c6c9d4faaae3e0c4e70bcb9`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203cffe6b92a6cecda4c45ef58013cd13a2f2207282650b5d9b0a4c58a53dc13`  
		Last Modified: Mon, 24 Jul 2017 19:11:34 GMT  
		Size: 33.7 MB (33710875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b90c34f64712be7a848ce8c5a3544d5a485d2bf6878b35d2f356f49e8a4650`  
		Last Modified: Mon, 24 Jul 2017 19:11:25 GMT  
		Size: 673.4 KB (673357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f8cf624d4c73c6b2374f5ba4f71f0ddfbcc3801813602319bb6b1b7ed07e4b`  
		Last Modified: Mon, 24 Jul 2017 19:11:24 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7e1635aa3c96f9e9be3053ea7df1cde764826ebca461b9cfd9c23749dc0ff`  
		Last Modified: Mon, 24 Jul 2017 19:12:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1f4ab314623cc625078225233e704b9e0a30ea131f1c59701b3a3163ec17b9`  
		Last Modified: Mon, 24 Jul 2017 19:12:25 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-alpine3.4`

```console
$ docker pull ruby@sha256:19955e9f8e8684d8449d74bcada6976bce8fb77b98dd7905bb9e075680be5d46
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36668186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade4568618fb9152c69211ef4d6e0291f72b5136e690e520ff9b178c1fd48d25`
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
# Wed, 28 Jun 2017 22:28:20 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:30:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:20 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:25 GMT
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
	-	`sha256:8056e8e9a481fd11af8d005d3b3fbf9a873b91bd0bdc19a8ca2a7b0ffe6e8417`  
		Last Modified: Fri, 30 Jun 2017 01:09:27 GMT  
		Size: 33.6 MB (33609465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9281e723484968bf379f918e2da7d6544e9db552c9b66b29e122b8d78756a7d`  
		Last Modified: Mon, 24 Jul 2017 19:12:13 GMT  
		Size: 673.4 KB (673366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77accf0a657aac4d73924250105913b5a8ca80b34e6de4b60a38aa77cf9a8279`  
		Last Modified: Mon, 24 Jul 2017 19:12:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine3.4`

```console
$ docker pull ruby@sha256:19955e9f8e8684d8449d74bcada6976bce8fb77b98dd7905bb9e075680be5d46
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine3.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36668186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade4568618fb9152c69211ef4d6e0291f72b5136e690e520ff9b178c1fd48d25`
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
# Wed, 28 Jun 2017 22:28:20 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:30:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:20 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:25 GMT
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
	-	`sha256:8056e8e9a481fd11af8d005d3b3fbf9a873b91bd0bdc19a8ca2a7b0ffe6e8417`  
		Last Modified: Fri, 30 Jun 2017 01:09:27 GMT  
		Size: 33.6 MB (33609465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9281e723484968bf379f918e2da7d6544e9db552c9b66b29e122b8d78756a7d`  
		Last Modified: Mon, 24 Jul 2017 19:12:13 GMT  
		Size: 673.4 KB (673366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77accf0a657aac4d73924250105913b5a8ca80b34e6de4b60a38aa77cf9a8279`  
		Last Modified: Mon, 24 Jul 2017 19:12:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2.7-alpine`

```console
$ docker pull ruby@sha256:19955e9f8e8684d8449d74bcada6976bce8fb77b98dd7905bb9e075680be5d46
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2.7-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36668186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade4568618fb9152c69211ef4d6e0291f72b5136e690e520ff9b178c1fd48d25`
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
# Wed, 28 Jun 2017 22:28:20 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:30:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:20 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:25 GMT
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
	-	`sha256:8056e8e9a481fd11af8d005d3b3fbf9a873b91bd0bdc19a8ca2a7b0ffe6e8417`  
		Last Modified: Fri, 30 Jun 2017 01:09:27 GMT  
		Size: 33.6 MB (33609465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9281e723484968bf379f918e2da7d6544e9db552c9b66b29e122b8d78756a7d`  
		Last Modified: Mon, 24 Jul 2017 19:12:13 GMT  
		Size: 673.4 KB (673366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77accf0a657aac4d73924250105913b5a8ca80b34e6de4b60a38aa77cf9a8279`  
		Last Modified: Mon, 24 Jul 2017 19:12:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ruby:2.2-alpine`

```console
$ docker pull ruby@sha256:19955e9f8e8684d8449d74bcada6976bce8fb77b98dd7905bb9e075680be5d46
```

-	Platforms:
	-	linux; amd64

### `ruby:2.2-alpine` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 MB (36668186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade4568618fb9152c69211ef4d6e0291f72b5136e690e520ff9b178c1fd48d25`
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
# Wed, 28 Jun 2017 22:28:20 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Wed, 28 Jun 2017 22:30:55 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		openssl 		openssl-dev 		procps 		readline-dev 		ruby 		tar 		yaml-dev 		zlib-dev 		xz 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --recursive /usr/local 			| awk '{ gsub(/,/, "\nso:", $2); print "so:" $2 }' 			| sort -u 			| xargs -r apk info --installed 			| sort -u 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		openssl-dev 		yaml-dev 		procps 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 24 Jul 2017 18:52:20 GMT
ENV BUNDLER_VERSION=1.15.3
# Mon, 24 Jul 2017 18:52:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 24 Jul 2017 18:52:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:24 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 24 Jul 2017 18:52:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 18:52:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 24 Jul 2017 18:52:25 GMT
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
	-	`sha256:8056e8e9a481fd11af8d005d3b3fbf9a873b91bd0bdc19a8ca2a7b0ffe6e8417`  
		Last Modified: Fri, 30 Jun 2017 01:09:27 GMT  
		Size: 33.6 MB (33609465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9281e723484968bf379f918e2da7d6544e9db552c9b66b29e122b8d78756a7d`  
		Last Modified: Mon, 24 Jul 2017 19:12:13 GMT  
		Size: 673.4 KB (673366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77accf0a657aac4d73924250105913b5a8ca80b34e6de4b60a38aa77cf9a8279`  
		Last Modified: Mon, 24 Jul 2017 19:12:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
