## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:a87b19aeb38d5ee724639491bda3f715e05e974e02f2eec89cdca45f8d471e94
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.4 MB (265438654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad6997cb91d454a75c7571b49689ff7b08bb2cb94e57cb204c4175bb06b0429`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:04:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 18 Jan 2017 03:19:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_MAJOR=2.4
# Wed, 18 Jan 2017 03:19:33 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 18 Jan 2017 03:19:34 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 25 Jan 2017 18:20:33 GMT
ENV RUBYGEMS_VERSION=2.6.10
# Wed, 25 Jan 2017 18:23:14 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 25 Jan 2017 18:23:14 GMT
ENV BUNDLER_VERSION=1.14.3
# Wed, 25 Jan 2017 18:23:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 25 Jan 2017 18:23:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Jan 2017 18:23:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Jan 2017 18:23:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2017 18:23:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Jan 2017 18:23:18 GMT
CMD ["irb"]
# Wed, 25 Jan 2017 18:29:05 GMT
RUN bundle config --global frozen 1
# Wed, 25 Jan 2017 18:29:05 GMT
RUN mkdir -p /usr/src/app
# Wed, 25 Jan 2017 18:29:06 GMT
WORKDIR /usr/src/app
# Wed, 25 Jan 2017 18:29:06 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 25 Jan 2017 18:29:06 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 25 Jan 2017 18:29:07 GMT
ONBUILD RUN bundle install
# Wed, 25 Jan 2017 18:29:07 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f3db4b5710849a53bc2eea0b6f0895c494d751c38c597404d805da82b3f37c`  
		Last Modified: Tue, 17 Jan 2017 00:26:00 GMT  
		Size: 129.8 MB (129823115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c0dc2c700a064aa674936ea4b17811cd59dbe1f68b46be92c5a95cfcc2b3cc`  
		Last Modified: Wed, 18 Jan 2017 07:24:11 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:351e66c43585e9e89c590ba0d9da82fee3eb194e228a657f47927203dafb474a`  
		Last Modified: Wed, 25 Jan 2017 18:38:06 GMT  
		Size: 22.6 MB (22584076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05338302b02a7e38bf3ffc3fbe4f4ee56bf800b1b28238c2cf8ea5b605f5ce84`  
		Last Modified: Wed, 25 Jan 2017 18:37:58 GMT  
		Size: 631.7 KB (631729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e9476686fe594abc3fb47513cd812f4096c6478b538b285950e858f9528ddf`  
		Last Modified: Wed, 25 Jan 2017 18:37:58 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b1e39ee854c02785ebc9c09575328c47fb605bd8753070a821c318f339b7fe6`  
		Last Modified: Wed, 25 Jan 2017 18:41:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cb655cd735ba2a8ec84f7d7cc5ac3ad00398d1fe8737a2ce2c11e4f3456f39`  
		Last Modified: Wed, 25 Jan 2017 18:41:34 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
