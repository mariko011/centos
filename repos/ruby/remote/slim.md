## `ruby:slim`

```console
$ docker pull ruby@sha256:44026b18cf9296c109947eaaeef3e744a480b7dfdaf80287d6452d871bd0cbbb
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82920680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:540be904efd6dd8959f35a5a1a0df54bee78f3a7c8b54e4a0eb3b46178e31d4f`
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
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_MAJOR=2.4
# Wed, 28 Dec 2016 22:22:43 GMT
ENV RUBY_VERSION=2.4.0
# Wed, 04 Jan 2017 21:59:48 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Wed, 04 Jan 2017 21:59:49 GMT
ENV RUBYGEMS_VERSION=2.6.8
# Wed, 04 Jan 2017 22:02:40 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 04 Jan 2017 22:02:40 GMT
ENV BUNDLER_VERSION=1.13.7
# Wed, 04 Jan 2017 22:02:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 04 Jan 2017 22:02:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 04 Jan 2017 22:02:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2017 22:02:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 04 Jan 2017 22:02:43 GMT
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
	-	`sha256:e76a28922800b98a5f904aa8b85ad78302f80496c0cc43f375d275e0344f3ec2`  
		Last Modified: Thu, 05 Jan 2017 01:11:26 GMT  
		Size: 21.0 MB (20963247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4e256bff2d4a5ae58dc1b647ab0ae1f0caaa916876e1dfe05650b41d548013`  
		Last Modified: Thu, 05 Jan 2017 01:11:18 GMT  
		Size: 612.9 KB (612880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b60e133af03c7965cdeab7dc98761392abcd988837917769b73e565d6e5280`  
		Last Modified: Thu, 05 Jan 2017 01:11:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
