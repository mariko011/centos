## `ruby:2-slim`

```console
$ docker pull ruby@sha256:06f90a497f54df31515a2bb576fafab802f64a67ab3e58fd94f68213cdf605c6
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97200824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63954332b1265b159c0ed7e5d9811e68eaf40f47569fd2dc677b4f62ff615db6`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 19:29:34 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:29:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 14 Dec 2016 19:29:35 GMT
ENV RUBY_MAJOR=2.3
# Wed, 14 Dec 2016 19:29:35 GMT
ENV RUBY_VERSION=2.3.3
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBY_DOWNLOAD_SHA256=241408c8c555b258846368830a06146e4849a1d58dcaf6b14a3b6a73058115b7
# Wed, 14 Dec 2016 19:29:36 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 14 Dec 2016 19:32:21 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Dec 2016 22:19:34 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 28 Dec 2016 22:19:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Dec 2016 22:19:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Dec 2016 22:19:37 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Dec 2016 22:19:38 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Dec 2016 22:19:38 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5f214bcc245dd5c26f327f40bd86b0e8b4ce9e6844b9f4853af727fbe3ae27`  
		Last Modified: Mon, 19 Dec 2016 23:23:29 GMT  
		Size: 10.0 MB (9981063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0f7b75b7bfe530be21a60de20b1480905a2ad4149ee21b945900c39a40751`  
		Last Modified: Mon, 19 Dec 2016 23:23:21 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c43a96d93cc45cb516481732e4631d6d59bc70e1ed5d2506a5df9951134fbdc`  
		Last Modified: Wed, 21 Dec 2016 20:07:16 GMT  
		Size: 35.2 MB (35243388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ff6cad157e3d620bf17b14efe027bbd5a32d67716e552ffd01f3a7ec7f42d1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 612.9 KB (612883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb6dfdca9ccc21a028eed95050f60d6dabed20ab2c6d42aaefd627b5c094bb1`  
		Last Modified: Wed, 28 Dec 2016 22:34:13 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
