## `ruby:2-slim`

```console
$ docker pull ruby@sha256:cac39adfb1709420d0c3a612da2b927bfaaab7abd69ac49f9ffcf404f643eb87
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (100981021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939d61d1cdbeab0b7f4f38d336b8464fc6c944f0b55e461678712020eea7cc0f`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Tue, 02 Aug 2016 01:13:54 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		curl 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 01:13:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 02 Aug 2016 01:37:26 GMT
ENV RUBY_MAJOR=2.3
# Tue, 02 Aug 2016 01:37:26 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 02 Aug 2016 01:37:26 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 02 Aug 2016 01:37:27 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 02 Aug 2016 01:42:42 GMT
RUN set -ex 	&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 02 Aug 2016 01:42:43 GMT
ENV BUNDLER_VERSION=1.12.5
# Tue, 02 Aug 2016 01:42:45 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 02 Aug 2016 01:42:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 02 Aug 2016 01:42:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 02 Aug 2016 01:42:46 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Aug 2016 01:42:47 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 02 Aug 2016 01:42:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e51c641b978ba0004deb05c92048bb81c519060e8d009a3e79f22f3c0863907`  
		Last Modified: Tue, 02 Aug 2016 01:43:46 GMT  
		Size: 13.7 MB (13654999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde819570a66d2224ed174073eb3abcba8b3985050ce80aa9810e1a6ddcf356d`  
		Last Modified: Tue, 02 Aug 2016 01:43:40 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac45adc532a2a9c7ac494c80f23277e3190bd13d4b696a2e4bfb78b6236af925`  
		Last Modified: Tue, 02 Aug 2016 01:48:28 GMT  
		Size: 35.4 MB (35402793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd7be68aaf452b0b81531a8133be9b6215db17e9f3d9906aaafc751b645f70f`  
		Last Modified: Tue, 02 Aug 2016 01:48:16 GMT  
		Size: 557.3 KB (557251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18bf9fa1aef1dfdd91770bddf3a48e9aa780703ab89bbc286c208259226e14e`  
		Last Modified: Tue, 02 Aug 2016 01:48:16 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
