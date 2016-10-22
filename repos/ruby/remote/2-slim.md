## `ruby:2-slim`

```console
$ docker pull ruby@sha256:34fdaf4286b546558a3e627ed8e43201ac425d63a53f27ed5d9ba0cbb04f2c9e
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97428763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:108c93b968c39625e1a5402b467e00faf2f5e70108eaa76d534f049ad7c1d1d7`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 01:14:55 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:14:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 22 Oct 2016 01:14:56 GMT
ENV RUBY_MAJOR=2.3
# Sat, 22 Oct 2016 01:14:57 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 22 Oct 2016 01:14:57 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Sat, 22 Oct 2016 01:14:57 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Sat, 22 Oct 2016 01:17:39 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 22 Oct 2016 01:17:40 GMT
ENV BUNDLER_VERSION=1.13.5
# Sat, 22 Oct 2016 01:17:41 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 22 Oct 2016 01:17:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 22 Oct 2016 01:17:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 22 Oct 2016 01:17:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 01:17:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 22 Oct 2016 01:17:44 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0a11f098842dc14361e47f8a50f59accbe7a4a4efb4842c4492b949cde211a`  
		Last Modified: Sat, 22 Oct 2016 01:17:57 GMT  
		Size: 10.0 MB (9980336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832c79cd44b54926d1eb92d221168d7f5a5a0562524e427861493f037a568c75`  
		Last Modified: Sat, 22 Oct 2016 01:17:53 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7566844f8853b35fc68807a141b2637726e4337513fbe13b40a82e50f49df60c`  
		Last Modified: Sat, 22 Oct 2016 01:18:08 GMT  
		Size: 35.5 MB (35482607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c942ba89127964c0aafb03575aa822cf6c2b731e18be40f5a4a4c55bb91f90e`  
		Last Modified: Sat, 22 Oct 2016 01:17:54 GMT  
		Size: 612.3 KB (612332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022046db327f2d8be872d8bc7b4e4418d4d046af9099602fb194123cd28735bb`  
		Last Modified: Sat, 22 Oct 2016 01:17:54 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
