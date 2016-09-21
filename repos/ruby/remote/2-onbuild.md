## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:19f5eff6bb209fee63b7b5854a008d638501c3bc49fe5cf0f03b3c3a3b6b73f9
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278034743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7592a46e05d946766e2bad20d98719a0471034c703749e124ccff2d03f33ce4`
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
# Tue, 20 Sep 2016 18:35:29 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 20 Sep 2016 18:35:29 GMT
ENV BUNDLER_VERSION=1.13.1
# Tue, 20 Sep 2016 18:35:30 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 20 Sep 2016 18:35:30 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Sep 2016 18:35:31 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Sep 2016 18:35:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Sep 2016 18:35:32 GMT
CMD ["irb"]
# Wed, 21 Sep 2016 21:02:45 GMT
RUN bundle config --global frozen 1
# Wed, 21 Sep 2016 21:02:46 GMT
RUN mkdir -p /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
WORKDIR /usr/src/app
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 21 Sep 2016 21:02:46 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 21 Sep 2016 21:02:47 GMT
ONBUILD RUN bundle install
# Wed, 21 Sep 2016 21:02:47 GMT
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
	-	`sha256:30557040ed3160859ae0ed6e8f33581be4c82ddf05c07800f3e295687d5acc05`  
		Last Modified: Wed, 21 Sep 2016 21:07:01 GMT  
		Size: 35.3 MB (35284240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:160486c2fa889a8de1f92cecf4e383225247436e84c81215bae0df837dd7fd96`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 609.9 KB (609938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f7eac844bdb05be217f7ab41e81d47c2b8c74e2ab3b1afc57d9760b2418d9f`  
		Last Modified: Wed, 21 Sep 2016 21:06:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb75123aa574d4c3400fbee8b8142fd267270a2dc73f7a38b564d67da0b453f`  
		Last Modified: Wed, 21 Sep 2016 21:09:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1bfb79c01b26d4c48b5ed82cdd030cdf40616c47aff9083d269ffd28cb426c`  
		Last Modified: Wed, 21 Sep 2016 21:09:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
