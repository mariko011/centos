## `ruby:rc-slim-stretch`

```console
$ docker pull ruby@sha256:3c2e9bca3bbc4073e8d441825978fba6868200c3110853db0afeaa26ec04d8e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ruby:rc-slim-stretch` - linux; amd64

```console
$ docker pull ruby@sha256:e1f8ac12480f8fa0fd9d946b8e31462487790bcbf26a77df8ec4ac5b831067f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81514041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7860b393990575cac2ccd0170e512d6fc28d0fe2d9b34766528156951493fb1`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:22:17 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:22:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Dec 2017 07:22:18 GMT
ENV RUBY_MAJOR=2.5-rc
# Fri, 15 Dec 2017 20:46:06 GMT
ENV RUBY_VERSION=2.5.0-rc1
# Fri, 15 Dec 2017 20:46:07 GMT
ENV RUBY_DOWNLOAD_SHA256=a479a1bce69b2cf656821f10104dcb8b426922b56d3d6cbdf48318842fae752c
# Fri, 15 Dec 2017 20:46:07 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Fri, 15 Dec 2017 20:46:07 GMT
ENV BUNDLER_VERSION=1.16.0
# Fri, 15 Dec 2017 20:48:32 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Fri, 15 Dec 2017 20:48:40 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Dec 2017 20:48:40 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Dec 2017 20:48:40 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Dec 2017 20:48:41 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Dec 2017 20:48:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe166ce1da0112f9600613768fc616d8e46cabdc75ed1ec67dfe06f3b28880c`  
		Last Modified: Tue, 12 Dec 2017 07:40:51 GMT  
		Size: 12.8 MB (12788598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972333458c2f75b1dafb3b7837ffcb7f84d7abe4cda9a260fa88556ce60ee4f2`  
		Last Modified: Tue, 12 Dec 2017 07:40:47 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555d9bb1e206e0c56802fd91bd0357efe0cc8e25cfe38abe1b8359549b6952dc`  
		Last Modified: Fri, 15 Dec 2017 21:37:47 GMT  
		Size: 23.6 MB (23603445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1a4b1e11fecf7bcb42e30f7e1e5374916dcaa304fb5729c9f7feb700b25088`  
		Last Modified: Fri, 15 Dec 2017 21:37:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
