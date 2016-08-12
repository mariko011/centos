<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `rails`

-	[`rails:5.0.0.1`](#rails5001)
-	[`rails:5.0.0`](#rails500)
-	[`rails:5.0`](#rails50)
-	[`rails:5`](#rails5)
-	[`rails:latest`](#railslatest)
-	[`rails:onbuild`](#railsonbuild)

## `rails:5.0.0.1`

**does not exist** (yet?)

## `rails:5.0.0`

```console
$ docker pull rails@sha256:8f876bd94dd5c014a127ee189a6ad69aae60670eab2f1bcf6f232df06d5f2418
```

-	Platforms:
	-	linux; amd64

### `rails:5.0.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318264214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40927e361b2d821c2ee922dce70b8203f78266708243abd2c491e020367c3455`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 01:07:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 02 Aug 2016 01:32:19 GMT
ENV RUBY_MAJOR=2.3
# Tue, 02 Aug 2016 01:32:20 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 02 Aug 2016 01:32:20 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 02 Aug 2016 01:32:21 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 02 Aug 2016 01:37:19 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 02 Aug 2016 01:37:20 GMT
ENV BUNDLER_VERSION=1.12.5
# Tue, 02 Aug 2016 01:37:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 02 Aug 2016 01:37:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 02 Aug 2016 01:37:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 02 Aug 2016 01:37:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Aug 2016 01:37:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 02 Aug 2016 01:37:25 GMT
CMD ["irb"]
# Fri, 12 Aug 2016 16:33:26 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:34:27 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:34:28 GMT
ENV RAILS_VERSION=5.0.0.1
# Fri, 12 Aug 2016 16:35:56 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:91a41507aa6519639062c463152b4be1f33e38718e2d410ab900247e6b4b34b5`  
		Last Modified: Tue, 02 Aug 2016 01:43:04 GMT  
		Size: 202.0 B
	-	`sha256:f5e9acf10a104ef0434b660a434e346da67e760f4c1ee485dfd0956536d170b6`  
		Last Modified: Tue, 02 Aug 2016 01:47:31 GMT  
		Size: 35.2 MB (35234500 bytes)
	-	`sha256:98e602e9fe5db9042445aef78c46f5824105f86f3854e9df60848cd8765ca404`  
		Last Modified: Tue, 02 Aug 2016 01:47:20 GMT  
		Size: 557.3 KB (557259 bytes)
	-	`sha256:977379f5afc71250f30f02597c6a18dbde0c5600b5fc1397f3912f16a014c7dc`  
		Last Modified: Tue, 02 Aug 2016 01:47:19 GMT  
		Size: 161.0 B
	-	`sha256:8e7811090bd8765ede7d57cf41d85fa63b81052dcea39feba8eb7eb7c8f203a9`  
		Last Modified: Fri, 12 Aug 2016 16:38:05 GMT  
		Size: 2.9 MB (2878864 bytes)
	-	`sha256:eb8682fd98c3da3fcaa0979daf712be8e6da43910f87b1d34aae3f728062026b`  
		Last Modified: Fri, 12 Aug 2016 16:38:09 GMT  
		Size: 14.1 MB (14141374 bytes)
	-	`sha256:c92471462591c0a80f09bceaf9d4c53277ed0b147a5e23c0bb55204534e28b5b`  
		Last Modified: Fri, 12 Aug 2016 16:38:11 GMT  
		Size: 23.4 MB (23371348 bytes)

## `rails:5.0`

```console
$ docker pull rails@sha256:8f876bd94dd5c014a127ee189a6ad69aae60670eab2f1bcf6f232df06d5f2418
```

-	Platforms:
	-	linux; amd64

### `rails:5.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318264214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40927e361b2d821c2ee922dce70b8203f78266708243abd2c491e020367c3455`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 01:07:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 02 Aug 2016 01:32:19 GMT
ENV RUBY_MAJOR=2.3
# Tue, 02 Aug 2016 01:32:20 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 02 Aug 2016 01:32:20 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 02 Aug 2016 01:32:21 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 02 Aug 2016 01:37:19 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 02 Aug 2016 01:37:20 GMT
ENV BUNDLER_VERSION=1.12.5
# Tue, 02 Aug 2016 01:37:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 02 Aug 2016 01:37:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 02 Aug 2016 01:37:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 02 Aug 2016 01:37:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Aug 2016 01:37:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 02 Aug 2016 01:37:25 GMT
CMD ["irb"]
# Fri, 12 Aug 2016 16:33:26 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:34:27 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:34:28 GMT
ENV RAILS_VERSION=5.0.0.1
# Fri, 12 Aug 2016 16:35:56 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:91a41507aa6519639062c463152b4be1f33e38718e2d410ab900247e6b4b34b5`  
		Last Modified: Tue, 02 Aug 2016 01:43:04 GMT  
		Size: 202.0 B
	-	`sha256:f5e9acf10a104ef0434b660a434e346da67e760f4c1ee485dfd0956536d170b6`  
		Last Modified: Tue, 02 Aug 2016 01:47:31 GMT  
		Size: 35.2 MB (35234500 bytes)
	-	`sha256:98e602e9fe5db9042445aef78c46f5824105f86f3854e9df60848cd8765ca404`  
		Last Modified: Tue, 02 Aug 2016 01:47:20 GMT  
		Size: 557.3 KB (557259 bytes)
	-	`sha256:977379f5afc71250f30f02597c6a18dbde0c5600b5fc1397f3912f16a014c7dc`  
		Last Modified: Tue, 02 Aug 2016 01:47:19 GMT  
		Size: 161.0 B
	-	`sha256:8e7811090bd8765ede7d57cf41d85fa63b81052dcea39feba8eb7eb7c8f203a9`  
		Last Modified: Fri, 12 Aug 2016 16:38:05 GMT  
		Size: 2.9 MB (2878864 bytes)
	-	`sha256:eb8682fd98c3da3fcaa0979daf712be8e6da43910f87b1d34aae3f728062026b`  
		Last Modified: Fri, 12 Aug 2016 16:38:09 GMT  
		Size: 14.1 MB (14141374 bytes)
	-	`sha256:c92471462591c0a80f09bceaf9d4c53277ed0b147a5e23c0bb55204534e28b5b`  
		Last Modified: Fri, 12 Aug 2016 16:38:11 GMT  
		Size: 23.4 MB (23371348 bytes)

## `rails:5`

```console
$ docker pull rails@sha256:8f876bd94dd5c014a127ee189a6ad69aae60670eab2f1bcf6f232df06d5f2418
```

-	Platforms:
	-	linux; amd64

### `rails:5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318264214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40927e361b2d821c2ee922dce70b8203f78266708243abd2c491e020367c3455`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 01:07:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 02 Aug 2016 01:32:19 GMT
ENV RUBY_MAJOR=2.3
# Tue, 02 Aug 2016 01:32:20 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 02 Aug 2016 01:32:20 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 02 Aug 2016 01:32:21 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 02 Aug 2016 01:37:19 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 02 Aug 2016 01:37:20 GMT
ENV BUNDLER_VERSION=1.12.5
# Tue, 02 Aug 2016 01:37:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 02 Aug 2016 01:37:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 02 Aug 2016 01:37:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 02 Aug 2016 01:37:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Aug 2016 01:37:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 02 Aug 2016 01:37:25 GMT
CMD ["irb"]
# Fri, 12 Aug 2016 16:33:26 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:34:27 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:34:28 GMT
ENV RAILS_VERSION=5.0.0.1
# Fri, 12 Aug 2016 16:35:56 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:91a41507aa6519639062c463152b4be1f33e38718e2d410ab900247e6b4b34b5`  
		Last Modified: Tue, 02 Aug 2016 01:43:04 GMT  
		Size: 202.0 B
	-	`sha256:f5e9acf10a104ef0434b660a434e346da67e760f4c1ee485dfd0956536d170b6`  
		Last Modified: Tue, 02 Aug 2016 01:47:31 GMT  
		Size: 35.2 MB (35234500 bytes)
	-	`sha256:98e602e9fe5db9042445aef78c46f5824105f86f3854e9df60848cd8765ca404`  
		Last Modified: Tue, 02 Aug 2016 01:47:20 GMT  
		Size: 557.3 KB (557259 bytes)
	-	`sha256:977379f5afc71250f30f02597c6a18dbde0c5600b5fc1397f3912f16a014c7dc`  
		Last Modified: Tue, 02 Aug 2016 01:47:19 GMT  
		Size: 161.0 B
	-	`sha256:8e7811090bd8765ede7d57cf41d85fa63b81052dcea39feba8eb7eb7c8f203a9`  
		Last Modified: Fri, 12 Aug 2016 16:38:05 GMT  
		Size: 2.9 MB (2878864 bytes)
	-	`sha256:eb8682fd98c3da3fcaa0979daf712be8e6da43910f87b1d34aae3f728062026b`  
		Last Modified: Fri, 12 Aug 2016 16:38:09 GMT  
		Size: 14.1 MB (14141374 bytes)
	-	`sha256:c92471462591c0a80f09bceaf9d4c53277ed0b147a5e23c0bb55204534e28b5b`  
		Last Modified: Fri, 12 Aug 2016 16:38:11 GMT  
		Size: 23.4 MB (23371348 bytes)

## `rails:latest`

```console
$ docker pull rails@sha256:b053d716c501dee93ef04cdd1008bd9d642f33ec12ae7ccd872e12e093eaaa7d
```

-	Platforms:
	-	linux; amd64

### `rails:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.9 MB (317931356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172482983ce11cc0ec58ac877c9009b4a24cf96816ce863b825decef2ca79837`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Thu, 09 Jun 2016 21:35:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:37:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 Jun 2016 21:39:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Jun 2016 22:38:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 10 Jun 2016 22:42:40 GMT
ENV RUBY_MAJOR=2.3
# Fri, 10 Jun 2016 22:42:40 GMT
ENV RUBY_VERSION=2.3.1
# Fri, 10 Jun 2016 22:42:40 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Fri, 24 Jun 2016 01:41:06 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Fri, 24 Jun 2016 01:47:03 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Fri, 24 Jun 2016 01:47:04 GMT
ENV BUNDLER_VERSION=1.12.5
# Fri, 24 Jun 2016 01:47:06 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 24 Jun 2016 01:47:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 24 Jun 2016 01:47:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 24 Jun 2016 01:47:07 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jun 2016 01:47:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 24 Jun 2016 01:47:09 GMT
CMD ["irb"]
# Fri, 24 Jun 2016 16:39:58 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 24 Jun 2016 16:41:00 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jul 2016 18:15:48 GMT
ENV RAILS_VERSION=5.0.0
# Tue, 05 Jul 2016 18:17:17 GMT
RUN gem install rails --version "$RAILS_VERSION"
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:ab30c63719b10dd434ddbe896879bd9b637fe4e16749a94d3dc827450dc2a437`  
		Last Modified: Thu, 09 Jun 2016 21:46:24 GMT  
		Size: 18.5 MB (18547219 bytes)
	-	`sha256:c6072700a24252bd71f6c5d2cabf5978ddf324a959b05bad417d8b3789f8df33`  
		Last Modified: Thu, 09 Jun 2016 21:46:52 GMT  
		Size: 42.5 MB (42525371 bytes)
	-	`sha256:abb742d515b4cf197291ef3132f11462aaadc5cfbbe362f4ae4f6f7dcdb6453e`  
		Last Modified: Thu, 09 Jun 2016 21:47:38 GMT  
		Size: 129.7 MB (129704383 bytes)
	-	`sha256:3ac8779b67177e7a175c695e64f32242398fc340ed86e0d6edbf1f58649db15c`  
		Last Modified: Fri, 24 Jun 2016 01:57:05 GMT  
		Size: 202.0 B
	-	`sha256:0a19bf9a5daa5b2db390a313c1d5fe31171a5b621443f09e7668eecad7920bb1`  
		Last Modified: Fri, 24 Jun 2016 02:01:20 GMT  
		Size: 35.2 MB (35203638 bytes)
	-	`sha256:1969210a2db882905d30670ab80c40f42c282b8d45ccbd25e5c8d32e378c9aba`  
		Last Modified: Fri, 24 Jun 2016 02:01:08 GMT  
		Size: 557.3 KB (557270 bytes)
	-	`sha256:c0a0f9995c9b507a8f25de97bcf4c691b986416171b40e20786d55eb42c33617`  
		Last Modified: Fri, 24 Jun 2016 02:01:08 GMT  
		Size: 159.0 B
	-	`sha256:89025f8fc0be943acdcbe10238792268976e76b08b70de7cfade66fa46fc097c`  
		Last Modified: Fri, 24 Jun 2016 16:42:35 GMT  
		Size: 2.9 MB (2899761 bytes)
	-	`sha256:3e9342e429b16e18b31cf7916bfdec7ce9fa6690bf80527a0c45db738f6349b1`  
		Last Modified: Fri, 24 Jun 2016 16:42:37 GMT  
		Size: 13.8 MB (13778746 bytes)
	-	`sha256:645d308178cade9ef05ca24283d5ddea70e5f0e2268e364ac2bf16cef3b2001b`  
		Last Modified: Tue, 05 Jul 2016 18:17:31 GMT  
		Size: 23.4 MB (23362072 bytes)

## `rails:onbuild`

```console
$ docker pull rails@sha256:21cb8101f8fa880a26a7cfcd7017ad35a07438c17d5ab3318590ecc08eaf38ec
```

-	Platforms:
	-	linux; amd64

### `rails:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294893155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4b15a5bd3028e71f0b53b5dfc1dab535541e28173a0eb6264bdc36457025be2`
-	Default Command: `["rails","server","-b","0.0.0.0"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2016 01:07:53 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 02 Aug 2016 01:32:19 GMT
ENV RUBY_MAJOR=2.3
# Tue, 02 Aug 2016 01:32:20 GMT
ENV RUBY_VERSION=2.3.1
# Tue, 02 Aug 2016 01:32:20 GMT
ENV RUBY_DOWNLOAD_SHA256=b87c738cb2032bf4920fef8e3864dc5cf8eae9d89d8d523ce0236945c5797dcd
# Tue, 02 Aug 2016 01:32:21 GMT
ENV RUBYGEMS_VERSION=2.6.6
# Tue, 02 Aug 2016 01:37:19 GMT
RUN set -ex 	&& buildDeps=' 		bison 		libgdbm-dev 		ruby 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 	&& curl -fSL -o ruby.tar.gz "http://cache.ruby-lang.org/pub/ruby/$RUBY_MAJOR/ruby-$RUBY_VERSION.tar.gz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.gz" | sha256sum -c - 	&& mkdir -p /usr/src/ruby 	&& tar -xzf ruby.tar.gz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.gz 	&& cd /usr/src/ruby 	&& { echo '#define ENABLE_PATH_CHECK 0'; echo; cat file.c; } > file.c.new && mv file.c.new file.c 	&& autoconf 	&& ./configure --disable-install-doc 	&& make -j"$(nproc)" 	&& make install 	&& apt-get purge -y --auto-remove $buildDeps 	&& gem update --system $RUBYGEMS_VERSION 	&& rm -r /usr/src/ruby
# Tue, 02 Aug 2016 01:37:20 GMT
ENV BUNDLER_VERSION=1.12.5
# Tue, 02 Aug 2016 01:37:22 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 02 Aug 2016 01:37:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 02 Aug 2016 01:37:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 02 Aug 2016 01:37:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Aug 2016 01:37:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 02 Aug 2016 01:37:25 GMT
CMD ["irb"]
# Tue, 02 Aug 2016 01:42:50 GMT
RUN bundle config --global frozen 1
# Tue, 02 Aug 2016 01:42:51 GMT
RUN mkdir -p /usr/src/app
# Tue, 02 Aug 2016 01:42:52 GMT
WORKDIR /usr/src/app
# Tue, 02 Aug 2016 01:42:52 GMT
ONBUILD COPY Gemfile /usr/src/app/
# Tue, 02 Aug 2016 01:42:52 GMT
ONBUILD COPY Gemfile.lock /usr/src/app/
# Tue, 02 Aug 2016 01:42:53 GMT
ONBUILD RUN bundle install
# Tue, 02 Aug 2016 01:42:53 GMT
ONBUILD COPY . /usr/src/app
# Fri, 12 Aug 2016 16:36:52 GMT
RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:37:51 GMT
RUN apt-get update && apt-get install -y mysql-client postgresql-client sqlite3 --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 12 Aug 2016 16:37:52 GMT
EXPOSE 3000/tcp
# Fri, 12 Aug 2016 16:37:53 GMT
CMD ["rails" "server" "-b" "0.0.0.0"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:91a41507aa6519639062c463152b4be1f33e38718e2d410ab900247e6b4b34b5`  
		Last Modified: Tue, 02 Aug 2016 01:43:04 GMT  
		Size: 202.0 B
	-	`sha256:f5e9acf10a104ef0434b660a434e346da67e760f4c1ee485dfd0956536d170b6`  
		Last Modified: Tue, 02 Aug 2016 01:47:31 GMT  
		Size: 35.2 MB (35234500 bytes)
	-	`sha256:98e602e9fe5db9042445aef78c46f5824105f86f3854e9df60848cd8765ca404`  
		Last Modified: Tue, 02 Aug 2016 01:47:20 GMT  
		Size: 557.3 KB (557259 bytes)
	-	`sha256:977379f5afc71250f30f02597c6a18dbde0c5600b5fc1397f3912f16a014c7dc`  
		Last Modified: Tue, 02 Aug 2016 01:47:19 GMT  
		Size: 161.0 B
	-	`sha256:87991071078ab6c9b532671c43e54fe474c96be442cccd8a388f99d93bfd4a34`  
		Last Modified: Tue, 02 Aug 2016 01:49:52 GMT  
		Size: 186.0 B
	-	`sha256:ec705cfbc5dda73245949d93e9bda16c5163684616e7676f744ad317ba0e8e98`  
		Last Modified: Tue, 02 Aug 2016 01:49:52 GMT  
		Size: 126.0 B
	-	`sha256:cbcf50b3611a5e9f0db314a7991db16094922dc6fb0bcc66a6d5e785af68e8a9`  
		Last Modified: Fri, 12 Aug 2016 16:39:16 GMT  
		Size: 2.9 MB (2878879 bytes)
	-	`sha256:885ca3a2c75fd5343bd68f4353d0c90177b4bee16bc4594a41c0a061474e5b04`  
		Last Modified: Fri, 12 Aug 2016 16:39:19 GMT  
		Size: 14.1 MB (14141336 bytes)
