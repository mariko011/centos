## `rails:onbuild`

```console
$ docker pull rails@sha256:80477a5f152064af7ebffbfa7f47cdfa1a1094900b8512bf125e6970cf402501
```

-	Platforms:
	-	linux; amd64

### `rails:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (295951985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52bfaae1cb3a3aa53f22c6f6fdb288fa81872bbb9a3323fe2fbdf9ab92a4a5c4`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

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
# Sat, 24 Sep 2016 05:42:23 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Sat, 24 Sep 2016 05:44:46 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.gz "https://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 24 Sep 2016 05:44:46 GMT
ENV BUNDLER_VERSION=1.13.1
# Sat, 24 Sep 2016 05:44:48 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 24 Sep 2016 05:44:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 24 Sep 2016 05:44:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 24 Sep 2016 05:44:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 05:44:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 24 Sep 2016 05:44:50 GMT
CMD ["irb"]
# Sat, 24 Sep 2016 05:45:55 GMT
RUN bundle config --global frozen 1
# Sat, 24 Sep 2016 05:45:56 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 05:45:56 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 05:45:56 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Sat, 24 Sep 2016 05:45:57 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Sat, 24 Sep 2016 05:45:57 GMT
ONBUILD RUN bundle install
# Sat, 24 Sep 2016 05:45:57 GMT
ONBUILD COPY . /usr/src/app
# Sat, 24 Sep 2016 06:01:22 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 06:01:30 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 06:01:30 GMT
EXPOSE 3000/tcp
# Sat, 24 Sep 2016 06:01:31 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
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
	-	`sha256:9626c13fb27a18a346dc329fcc60277345647f9e1bb554ad567f98ab1f547bff`  
		Last Modified: Sat, 24 Sep 2016 05:45:14 GMT  
		Size: 35.3 MB (35292440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33cca82b34cd39a33e10296f920a86dd5eff71d3f7f8aed0302af2d9aa763081`  
		Last Modified: Sat, 24 Sep 2016 05:45:00 GMT  
		Size: 609.9 KB (609934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b1afc1156add3b5c843e8cedff5a847d1dd372670bb4a124c3ec7657b87ce5`  
		Last Modified: Sat, 24 Sep 2016 05:44:59 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2d5437f134b9dc4537e62c1ef83be0c0a62f96f84375923779c175b6bf5528`  
		Last Modified: Sat, 24 Sep 2016 05:46:07 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06342ab1d4616cd337a0370ff20a313368b45dd412ed7ad20f704d1b3316f690`  
		Last Modified: Sat, 24 Sep 2016 05:46:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420884b480c4fc5b238e1ad0421e3e430e681913d2b842f1fb387074cdd37e00`  
		Last Modified: Sat, 24 Sep 2016 06:01:42 GMT  
		Size: 2.9 MB (2879189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14b28687c6c67ec8bf2ef168d1af046c71fbcb91454a922331c4240dca8ee60`  
		Last Modified: Sat, 24 Sep 2016 06:01:44 GMT  
		Size: 13.7 MB (13747353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
