## `ruby:slim`

```console
$ docker pull ruby@sha256:a91d79e6778d964b5954ec89a91f7597d048cbc130aa3f07239a93ff90bdfddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:slim` - linux; amd64

```console
$ docker pull ruby@sha256:c700333d041361fabb7796211167005d5e02c53684aa1da7034cea8a0a66df7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (86972404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d78051e33d6dae29476c4d26bcb9dd099f2439ad28fe454c1af6a27343763ef`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:51:53 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:51:54 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Sep 2017 22:51:54 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Sep 2017 22:51:54 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 12 Sep 2017 22:51:54 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 12 Sep 2017 22:51:54 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 12 Sep 2017 22:55:01 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 12 Sep 2017 22:55:01 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 12 Sep 2017 22:55:02 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 12 Sep 2017 22:55:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Sep 2017 22:55:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Sep 2017 22:55:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:55:03 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Sep 2017 22:55:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde9b0a09f8bc6fbd364208f4da7edb0a9d9c3f4a0bb8b133b28b20ab71498e9`  
		Last Modified: Tue, 12 Sep 2017 23:18:44 GMT  
		Size: 10.2 MB (10161070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40bc847ba82ef80b99352f07406aa02ed74994e9544a88d529a3e5d97dad9fa`  
		Last Modified: Tue, 12 Sep 2017 23:18:40 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15eb30e34e36fd528d9de93c34822a6d17c9a6ec23a5c27127c0c8779f20543`  
		Last Modified: Tue, 12 Sep 2017 23:18:48 GMT  
		Size: 23.5 MB (23538351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38ea8f16d3672d57bf682ed979f6159abc809e3be5320e385fb27081a08c2c9`  
		Last Modified: Tue, 12 Sep 2017 23:18:40 GMT  
		Size: 677.1 KB (677068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0806448c1509b85c1c0527666d119885709b990f3e923818a562b235f77d9855`  
		Last Modified: Tue, 12 Sep 2017 23:18:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm variant v7

```console
$ docker pull ruby@sha256:bfa5c36d0c12d0bd5ba35b7d1c388a7c7d8274361441e514a4c95c8d09de3afb
```

-	Docker Version: 17.06.0-ce-rc5
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81263701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:206bec3c25cee244a30f419b27b66d4105e1ca31f17e5828fba89a50a29e5baf`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 25 Jul 2017 12:47:49 GMT
ADD file:0448b2cd9da7d0c40fa8f3ee9ac6db219379c4631011ee1495ec8ad66be4f52e in / 
# Tue, 25 Jul 2017 12:47:52 GMT
CMD ["bash"]
# Tue, 25 Jul 2017 21:17:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Jul 2017 21:17:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 25 Jul 2017 22:29:31 GMT
ENV RUBY_MAJOR=2.4
# Tue, 25 Jul 2017 22:29:31 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 25 Jul 2017 22:29:32 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 25 Jul 2017 22:29:33 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Tue, 08 Aug 2017 02:06:53 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 08 Aug 2017 02:06:55 GMT
ENV BUNDLER_VERSION=1.15.3
# Tue, 08 Aug 2017 02:07:03 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 08 Aug 2017 02:07:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 08 Aug 2017 02:07:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 08 Aug 2017 02:07:06 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 02:07:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 08 Aug 2017 02:07:08 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5e32d580a9d26e16dd26eaf656c25de16f6fc4a5e2cf51e5d73de3d0b5a0966c`  
		Last Modified: Tue, 25 Jul 2017 13:05:41 GMT  
		Size: 48.7 MB (48691924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7252c672e1244a314f27c65ec4fe68cb74043cd3ad4847669754a89799b9bb`  
		Last Modified: Tue, 25 Jul 2017 22:50:36 GMT  
		Size: 8.8 MB (8760765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f24e9128903b3006f48abcc6a13be8b1d521c653ce5b1b18b3cbf96c0a4af39`  
		Last Modified: Tue, 25 Jul 2017 22:50:27 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fad06d7e9153d8de18431d7c07f515ecd1c6e2889018e4b0bfde95f3cf39634`  
		Last Modified: Tue, 08 Aug 2017 02:54:12 GMT  
		Size: 23.1 MB (23135523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa9ec40ddc8cfe941b4e5781a2b8cc4b7fb7fd3852ca8c7152a5eae0fa41a1a`  
		Last Modified: Tue, 08 Aug 2017 02:53:53 GMT  
		Size: 675.1 KB (675117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b61943d0a15301f5380e9ec67129a3a6d93d3d56215ed074a7c1d4e301c959`  
		Last Modified: Tue, 08 Aug 2017 02:53:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:13e671fc3b7912457f34b4df3f1e799e8dc133e33e644c5c6bded8d63f7a609b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83446279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31cca46e663e81b355efa2bcdec343215247ffa7cebdc4f23ba3aeff18729c52`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 17:23:41 GMT
ADD file:9f576a63a5e03994904e585c35fbeef6a2c96c41d8f696705c033f3ca69b6a2b in / 
# Fri, 08 Sep 2017 17:23:42 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:45:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:46:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_MAJOR=2.4
# Sat, 09 Sep 2017 01:46:01 GMT
ENV RUBY_VERSION=2.4.1
# Sat, 09 Sep 2017 01:46:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Sat, 09 Sep 2017 01:46:03 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 01:55:50 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 01:55:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 01:55:56 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 01:55:56 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:57 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 01:55:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:56:00 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 01:56:00 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e91a355b0d3ff86add037a3f24718b760d8eb3f346f998e5116375ddce9eae19`  
		Last Modified: Fri, 08 Sep 2017 17:34:56 GMT  
		Size: 49.9 MB (49929457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4bbc482c0d26f8b6230f97061871c782877735f701c9cc762b0356ad9c0e3f`  
		Last Modified: Sat, 09 Sep 2017 02:19:01 GMT  
		Size: 9.3 MB (9332298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef122b58f06bdab5a969d104fcf421229fb660cc254ea19a97939db96b7aea06`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74405fb65c253054772497a3b0c3b9a5979040ea94aebc625ae73b76b1b8fcf`  
		Last Modified: Sat, 09 Sep 2017 02:19:07 GMT  
		Size: 23.5 MB (23507075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5566312f6f818f68db42e2bc4e33b55a8eb2aeb9551dd8267b94b90457a234`  
		Last Modified: Sat, 09 Sep 2017 02:18:57 GMT  
		Size: 677.1 KB (677080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830f4c2aa6bc676974f92616a9371d4327e6f8a4cc2cb18712adf94274377d31`  
		Last Modified: Sat, 09 Sep 2017 02:18:56 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; 386

```console
$ docker pull ruby@sha256:0d6dbf6189117650f178f59f9a2716149d177de2cc5675ef3f364a39e5703975
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.6 MB (90604019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc413aef9616ad97484d8cc812c7354352835cec14f5afe783f4a4f8686494df`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 13:17:52 GMT
ADD file:e02edf114d3ee3a58b6c6729d41261abc361f69333d3b08c7c730572fd6c1874 in / 
# Fri, 08 Sep 2017 13:17:52 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:29:01 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:29:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 17:29:01 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 17:29:02 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:33:31 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:33:32 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:33:33 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:33:33 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:33:34 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:33:35 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:33:35 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f611f84acffe6a66fad3356eb9101ed9fff54e980701079bbce3ee4826ccd3ae`  
		Last Modified: Fri, 08 Sep 2017 13:22:33 GMT  
		Size: 52.8 MB (52773126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c17b08c3dfc503b71e3ce2bb63b38c8554fb5bfa8645c3ac17b033c1c024792`  
		Last Modified: Fri, 08 Sep 2017 17:48:46 GMT  
		Size: 14.6 MB (14626939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18227dba261327339ab7f00b157f9d2d57e44b4bd0137e2e3435ebc28d033d3b`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b12cba66e252bac5f9e0b81a34f0d63d81c858783a7201a2f03b85acc693a373`  
		Last Modified: Fri, 08 Sep 2017 17:48:48 GMT  
		Size: 22.5 MB (22528234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdf78bea3ab183fc4f4e2bde787c7bc69f1c9dda463e4fcaaa451fb999b35c5`  
		Last Modified: Fri, 08 Sep 2017 17:48:40 GMT  
		Size: 675.4 KB (675351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aea2e9e3c9ebec0771894e4176a4c83c5674e4f595c8197a361f72e4a4ac95c`  
		Last Modified: Fri, 08 Sep 2017 17:48:39 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; ppc64le

```console
$ docker pull ruby@sha256:664b49a044e1229d76fb827a0601748d57090ce00e7e1c5f583278eca4a057a1
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86604845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3bd2373b4765fcfcb2d2efe9e2ae6dde49d3cc75aaed51cc0f44d57f5eed19`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 00:32:21 GMT
ADD file:483b3245941140ac32394a804364a1a9bd5dfdf1b4475238b61068cc7252ac08 in / 
# Fri, 08 Sep 2017 00:32:21 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:21:46 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:21:46 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 02:21:47 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:25:58 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:25:59 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:26:00 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:26:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:26:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:26:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:26:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d4a5434e09b7ac8431060d347d6ef1233ae07514878fb2aff4085bcf441c29f3`  
		Last Modified: Fri, 08 Sep 2017 00:36:52 GMT  
		Size: 51.8 MB (51809570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c896344886dfdcd5eca0a6a98f7e005802c573a03e25019bd9457a79f88740`  
		Last Modified: Fri, 08 Sep 2017 02:34:04 GMT  
		Size: 10.1 MB (10131881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083d5c844be1ade3dfe901a472aa40840d4717f8e4b2450863a22111ba76f3cf`  
		Last Modified: Fri, 08 Sep 2017 02:34:01 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7b44bf81f3f2321567548bb7c79d01f228ee004d0941396eeb83583ad7c4d8`  
		Last Modified: Fri, 08 Sep 2017 02:34:08 GMT  
		Size: 24.0 MB (23985896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fe15c7649bdcea02c229cfc27c060395be62ea78919a6d5be177c3a6d1309f`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 677.1 KB (677099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1a16e37d923c90cb309e7813e80527919016ae0d6203d4470b8a915a3618043`  
		Last Modified: Fri, 08 Sep 2017 02:34:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; s390x

```console
$ docker pull ruby@sha256:29097590a3aefb7b8075b4d16dc23ef387f3449ba8eda26d390e69ea90a46735
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.4 MB (87351662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61efad96bd18a851cf07e67c53c9e8ae20b68f0ddbf39920955e9b32bf62cb8d`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 05:21:42 GMT
ADD file:996e52a941b7162fafcf761c415142a34a2fc703e21d2f264b824373e9fa4b1e in / 
# Fri, 08 Sep 2017 05:21:43 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:20:35 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:20:35 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:20:35 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 07:20:36 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:23:51 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:23:51 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:23:52 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:23:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:23:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:23:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:23:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5f39dbffcd07e3254246d3c2e4b3532c3697ed04f83eadf5433da820098787df`  
		Last Modified: Fri, 08 Sep 2017 05:24:42 GMT  
		Size: 52.8 MB (52788802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7806079690737ed18410be149d70cc3439abe5521f16720649707abbffe2ac`  
		Last Modified: Fri, 08 Sep 2017 07:30:19 GMT  
		Size: 10.0 MB (9959664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4801eb4feb44806d3dbada1c80e2fe522b598975252c8c21a80d3aa8213ff0c3`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5598177114eac29e87ce3f57b8708a996d916a36365b06a434d6480f4597877`  
		Last Modified: Fri, 08 Sep 2017 07:30:22 GMT  
		Size: 23.9 MB (23925757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808aeba778eff29e45818fa11e9bc8583194233253bdf68e2e1e1db184633dfb`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 677.1 KB (677071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f1717302ecd50989e6e5905a41c6539bae522ad69ad41e1f6a9bd4f477966c`  
		Last Modified: Fri, 08 Sep 2017 07:30:16 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
