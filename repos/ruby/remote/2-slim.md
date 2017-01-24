## `ruby:2-slim`

```console
$ docker pull ruby@sha256:88024720e26639872917bdd17b44f1740d68c99f8044ae621831bd3f24ba5fd7
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.7 MB (84729357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194c5bd4a311fa1a97c5f5f93d23330187535981d356a5f454cd69d4da317416`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 20:12:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 20:12:20 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_MAJOR=2.4
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 17 Jan 2017 20:12:21 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Tue, 24 Jan 2017 20:29:15 GMT
ENV RUBYGEMS_VERSION=2.6.9
# Tue, 24 Jan 2017 20:32:07 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 24 Jan 2017 20:32:07 GMT
ENV BUNDLER_VERSION=1.14.2
# Tue, 24 Jan 2017 20:32:09 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 24 Jan 2017 20:32:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Jan 2017 20:32:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2017 20:32:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Jan 2017 20:32:11 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596ec0bfbfe79e6bf8ba516cc80f14487c52f661c1c8f1dfdef2535f165beb56`  
		Last Modified: Wed, 18 Jan 2017 07:25:44 GMT  
		Size: 10.0 MB (9994242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330c0f0b9895c0a3df4249a9e2fe344e00dc43a4d9aac66506818ee0a8408043`  
		Last Modified: Wed, 18 Jan 2017 07:25:33 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71b4269631a878c798d197252d03ee021f0a4cacb33b79048d7861e0ab04ce1`  
		Last Modified: Tue, 24 Jan 2017 20:44:56 GMT  
		Size: 22.7 MB (22742172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0061737cc688331e6fe711c39448408cf82b5dfb1ede9cdce1f30cb41ba8718b`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 631.4 KB (631368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970b8f4b6d0979b9ce8fd763b86ecfc09cc8a3871c33d23c4a3d34906da9d42c`  
		Last Modified: Tue, 24 Jan 2017 20:44:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
