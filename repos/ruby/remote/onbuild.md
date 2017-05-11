## `ruby:onbuild`

```console
$ docker pull ruby@sha256:ea83d3a6f9de0a1ab9c8c3f1074bec8274defb01929fb195434ef734b4cdc069
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270578176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2237ea03e82764adca1d1fff4a058c4d45b975bc88f041600ef23de26a7e1100`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:53:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:54:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 May 2017 23:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 11 May 2017 06:41:41 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 11 May 2017 06:41:42 GMT
ENV RUBY_MAJOR=2.4
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_VERSION=2.4.1
# Thu, 11 May 2017 06:41:43 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Thu, 11 May 2017 06:41:44 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:10:23 GMT
RUN set -ex 		&& buildDeps=' 		bison 		dpkg-dev 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Thu, 11 May 2017 19:10:24 GMT
ENV BUNDLER_VERSION=1.14.6
# Thu, 11 May 2017 19:10:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Thu, 11 May 2017 19:10:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 11 May 2017 19:10:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 11 May 2017 19:10:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 May 2017 19:10:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 11 May 2017 19:10:33 GMT
CMD ["irb"]
# Thu, 11 May 2017 19:20:45 GMT
RUN bundle config --global frozen 1
# Thu, 11 May 2017 19:20:47 GMT
RUN mkdir -p /usr/src/app
# Thu, 11 May 2017 19:20:48 GMT
WORKDIR /usr/src/app
# Thu, 11 May 2017 19:20:49 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Thu, 11 May 2017 19:20:50 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Thu, 11 May 2017 19:20:51 GMT
ONBUILD RUN bundle install
# Thu, 11 May 2017 19:20:52 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5937da9414eeab6d68ce06a7ff60d8be1e2c1518ac2588d5df135ab54a9801`  
		Last Modified: Tue, 09 May 2017 15:55:04 GMT  
		Size: 19.3 MB (19267434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021b2326a1e3a942223c7e349a92203df184f2dcca45f5be7b0b80ac50e2ccf`  
		Last Modified: Tue, 09 May 2017 15:56:09 GMT  
		Size: 43.2 MB (43230898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbed9b09434efb583eb5f23173bf2aadb578cbfe2516e26226e3f7e458fac621`  
		Last Modified: Tue, 09 May 2017 15:57:33 GMT  
		Size: 131.8 MB (131830309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b67985d109310b1e251db627eab93f7822660ed9b7ca59ea7f6df51957c18`  
		Last Modified: Thu, 11 May 2017 19:21:20 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2ffc998aca23d313f9b3a77e94b7e665ce7a7f047ba25460f2f284c6a14dce`  
		Last Modified: Thu, 11 May 2017 19:36:11 GMT  
		Size: 23.0 MB (23025371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7ea8bf6a34ee0129a080f3c9cbb793dfabb04a50b5ccf5fc064e45682ca9e8c`  
		Last Modified: Thu, 11 May 2017 19:36:03 GMT  
		Size: 639.5 KB (639476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b6e6204a6b598f6da9eca7cb8b0070fe5c91e3138a0f4d2158e8391e374373`  
		Last Modified: Thu, 11 May 2017 19:36:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f9e0a19250f0476bfc546403ea20f6960c4b7090d56d127efc5eecf1bec5ae`  
		Last Modified: Thu, 11 May 2017 19:42:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480d8a1b728f9bf9b217310da7a01f35383b805de47681e531eb7f77fe652161`  
		Last Modified: Thu, 11 May 2017 19:42:07 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
