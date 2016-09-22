## `ruby:onbuild`

```console
$ docker pull ruby@sha256:8ac288f4a6d367c6be22570a6d58d8b6bfa783ec6f25a0bde695d8d4ebe771b3
```

-	Platforms:
	-	linux; amd64

### `ruby:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278038245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fd60a6e36961fbb672ff6e5ad69e2fa6d7c017d8c50bb87cf3ed7357a5a6d27`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 19 Sep 2016 17:42:37 GMT
ADD file:cae7a35a0d8c43d5ba00fa03413136b37e0a0bf8f4d5311dda779748e64ef425 in / 
# Mon, 19 Sep 2016 17:42:37 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:48:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Sep 2016 18:23:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 20 Sep 2016 18:33:06 GMT
ENV RUBY_MAJOR=2.3
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 20 Sep 2016 18:33:07 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Wed, 21 Sep 2016 23:49:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 21 Sep 2016 23:49:47 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 21 Sep 2016 23:49:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 21 Sep 2016 23:49:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 21 Sep 2016 23:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Sep 2016 23:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 21 Sep 2016 23:49:50 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 23:54:44 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 23:54:45 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 23:54:45 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 23:54:46 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2f5fbf61137445d75e8077a9ac5b9b89a2b8eda2dc7486ef42c93da4c5d8760b`  
		Last Modified: Mon, 19 Sep 2016 17:44:31 GMT  
		Size: 51.4 MB (51354569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9338b080890fe86641e5bb99e8cc0ca75a4b9aae160ef6f826a36865d53cc281`  
		Last Modified: Mon, 19 Sep 2016 17:54:20 GMT  
		Size: 18.5 MB (18527624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e9f9640562cf88eb4fbb29ff94d3c527e1abcaada715ce9b71011b7b9cdbc7`  
		Last Modified: Mon, 19 Sep 2016 17:55:02 GMT  
		Size: 42.5 MB (42496798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dff8d6297fa7aafd7d118ff8070d252c076e8fa52d79f36a98f1f4a39de0c61`  
		Last Modified: Mon, 19 Sep 2016 17:56:01 GMT  
		Size: 129.8 MB (129760900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495676767d68b79f30f651d055c93be9d4ab5df9f41da915e94605f5b2a3647`  
		Last Modified: Wed, 21 Sep 2016 21:02:57 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e27f1e7e6e3f90995a05f36dcdbcdc8276da967b0ee6fc6608b216959525009`  
		Last Modified: Wed, 21 Sep 2016 23:59:21 GMT  
		Size: 35.3 MB (35287744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7830ef3f6735db1554abab9ab621b5ca12ad99887963b2eb3dc4da4b308e0dac`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 609.9 KB (609933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26b12caf49256f0f8d12ed28eb1a30bb2eef4069966f2e69e4801ce4b44a6eb8`  
		Last Modified: Wed, 21 Sep 2016 23:59:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d996b0769eabf1b7ed960c9225e1b9b5636ec3f7b32b5d5c6660c4b5b06c53`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a903cd7ea561bfedf5dbeb4706bd18cc74395376d844eae32b5b02e84644643c`  
		Last Modified: Thu, 22 Sep 2016 00:01:48 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
