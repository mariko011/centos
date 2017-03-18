## `ruby:2-onbuild`

```console
$ docker pull ruby@sha256:0eaa2bbff1e95d17d7f992160c827cd99b582cef0055f09acae77072a9aa4c69
```

-	Platforms:
	-	linux; amd64

### `ruby:2-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.5 MB (265533544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c573a7880cfbbdce35afb825afccf924c54765aa4650b2aeae8bf3a00494487b`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 23:06:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 28 Feb 2017 23:06:09 GMT
ENV RUBY_MAJOR=2.4
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_VERSION=2.4.0
# Tue, 28 Feb 2017 23:06:10 GMT
ENV RUBY_DOWNLOAD_SHA256=3a87fef45cba48b9322236be60c455c13fd4220184ce7287600361319bb63690
# Fri, 17 Mar 2017 23:57:45 GMT
ENV RUBYGEMS_VERSION=2.6.11
# Sat, 18 Mar 2017 00:00:26 GMT
RUN set -ex 		&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& ./configure --disable-install-doc --enable-shared 	&& make -j"$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 18 Mar 2017 00:00:27 GMT
ENV BUNDLER_VERSION=1.14.6
# Sat, 18 Mar 2017 00:00:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 18 Mar 2017 00:00:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 18 Mar 2017 00:00:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 18 Mar 2017 00:00:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Mar 2017 00:00:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 18 Mar 2017 00:00:30 GMT
CMD ["irb"]
# Sat, 18 Mar 2017 00:06:21 GMT
RUN bundle config --global frozen 1
# Sat, 18 Mar 2017 00:06:22 GMT
RUN mkdir -p /usr/src/app
# Sat, 18 Mar 2017 00:06:22 GMT
WORKDIR /usr/src/app
# Sat, 18 Mar 2017 00:06:23 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Sat, 18 Mar 2017 00:06:23 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Sat, 18 Mar 2017 00:06:23 GMT
ONBUILD RUN bundle install
# Sat, 18 Mar 2017 00:06:24 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168cf3f33330209b5d659614bc0f85b33bdec178d185d6a9e439e98e2d1a3a95`  
		Last Modified: Thu, 02 Mar 2017 04:03:11 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edf1a65e7e1c714fbdc985045123ee8a0daba4b035e0c03d7a948d3fbda18b8`  
		Last Modified: Sat, 18 Mar 2017 00:17:11 GMT  
		Size: 22.6 MB (22641251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95fc1e51b4de1dc499978b437b947bdee884a8172ab6b5ae423c5dd00721d85`  
		Last Modified: Sat, 18 Mar 2017 00:17:04 GMT  
		Size: 638.1 KB (638120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0164b0dd2de176a552c7e00d32d23116f87d9bcf122ed0bd8c88b20f7aac98ef`  
		Last Modified: Sat, 18 Mar 2017 00:17:04 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9763c7c578ae48b37d9b9e714c551d0916dd1ce7c73ae6693ad62e903a4d815a`  
		Last Modified: Sat, 18 Mar 2017 00:21:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e01c0c2c00740b0de4e03ec08887a7886e79b5a5ac15fb8fa49a92388769e24`  
		Last Modified: Sat, 18 Mar 2017 00:21:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
