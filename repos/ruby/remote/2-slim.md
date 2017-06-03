## `ruby:2-slim`

```console
$ docker pull ruby@sha256:6ea94b30669c3702ac73f6eb88a20eb1b8daf876938f1ec88ca7389e7ee26e39
```

-	Platforms:
	-	linux; amd64

### `ruby:2-slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86611109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd077757d49458df2128861a28537c62d061193813ff717e7a9eceb22d6d088`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 08 May 2017 23:28:14 GMT
ADD file:f4e6551ac34ab446a297849489a5693d67a7e76c9cb9ed9346d82392c9d9a5fe in / 
# Mon, 08 May 2017 23:28:15 GMT
CMD ["/bin/bash"]
# Wed, 10 May 2017 15:53:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 15:53:12 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 10 May 2017 15:53:12 GMT
ENV RUBY_MAJOR=2.4
# Wed, 10 May 2017 15:53:13 GMT
ENV RUBY_VERSION=2.4.1
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Wed, 10 May 2017 15:53:14 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Thu, 11 May 2017 19:15:11 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 03 Jun 2017 19:27:12 GMT
ENV BUNDLER_VERSION=1.15.1
# Sat, 03 Jun 2017 19:27:16 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 03 Jun 2017 19:27:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 03 Jun 2017 19:27:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 03 Jun 2017 19:27:18 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 03 Jun 2017 19:27:19 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 03 Jun 2017 19:27:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:10a267c67f423630f3afe5e04bbbc93d578861ddcc54283526222f3ad5e895b9`  
		Last Modified: Mon, 08 May 2017 23:43:59 GMT  
		Size: 52.6 MB (52584016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaa89427703d5bdd37a7b3c98c01a6e0434e2906c7212919ed6277622bf9abb`  
		Last Modified: Thu, 11 May 2017 19:23:22 GMT  
		Size: 10.2 MB (10159984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4351445696bc2482da72ce5d84caf70003361f2997c9b7e2adae06a3725118`  
		Last Modified: Thu, 11 May 2017 19:23:19 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607f837da88cbb3dc216f236e87164c0368ee2f8e341156ddaf5b3591cf81e10`  
		Last Modified: Thu, 11 May 2017 19:38:13 GMT  
		Size: 23.2 MB (23188840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d78170ddb6c6b519a37d32074f3598469f6e38847c8a0bdc9dba26c8b0f81e15`  
		Last Modified: Sat, 03 Jun 2017 19:44:04 GMT  
		Size: 677.9 KB (677909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cbb1af8eb03f142cd9093affafdffb26846ab424f6aa2a4031f31ab449ca50`  
		Last Modified: Sat, 03 Jun 2017 19:44:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
