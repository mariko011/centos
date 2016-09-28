## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:edcf82ec82a51f9d58c7ddf3a9ba09b6c51a02374aad222a34d69e41a6f71ed6
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.3 MB (279322236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa032c7f7408eeae1a4d4b4d965e4c28867ef5e333e2e386f89647a16caff08`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:42:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 24 Sep 2016 05:42:22 GMT
ENV RUBY_MAJOR=2.3
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_VERSION=2.3.1
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Wed, 28 Sep 2016 21:10:05 GMT
ENV RUBYGEMS_VERSION=2.6.7
# Wed, 28 Sep 2016 21:12:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Wed, 28 Sep 2016 21:12:26 GMT
ENV BUNDLER_VERSION=1.13.1
# Wed, 28 Sep 2016 21:12:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Wed, 28 Sep 2016 21:12:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 28 Sep 2016 21:12:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Sep 2016 21:12:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 28 Sep 2016 21:12:30 GMT
CMD ["irb"]
# Wed, 28 Sep 2016 21:17:23 GMT
RUN bundle config --global frozen 1
# Wed, 28 Sep 2016 21:17:24 GMT
RUN mkdir -p /usr/src/app
# Wed, 28 Sep 2016 21:17:24 GMT
WORKDIR /usr/src/app
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Wed, 28 Sep 2016 21:17:25 GMT
ONBUILD RUN bundle install
# Wed, 28 Sep 2016 21:17:26 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf982eec5d9ac4dd13bee06cb88efb42a3e0b8235fdb6e0b13dee65a731c81c`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7587c67cc39abede471241226dee3063ac292034c2b73d878884e1d042df631`  
		Last Modified: Wed, 28 Sep 2016 21:22:24 GMT  
		Size: 35.3 MB (35289236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a2fd7d1a6bcc5ecfb7b0eea3f3d10db73cfe44ebb6c551c9965ffb765913b3`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 609.9 KB (609932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d545703443d8ea078113ce724826bfd6786bdde37e69c06bc480e2697d7caef`  
		Last Modified: Wed, 28 Sep 2016 21:22:13 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbab24f258fe7294d32278d8148f0da8c74557822e1c59e32a2c210d22d88072`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0173b76bf858f217f4966a9e3bf2c01403c9ed9506bd9f1909c97471382617b`  
		Last Modified: Wed, 28 Sep 2016 21:25:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
