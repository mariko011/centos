## `ruby:slim-stretch`

```console
$ docker pull ruby@sha256:2f5108f082d390f1be6a1e506489788ecea0f4a745a2b73c9874206ad6c080fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:slim-stretch` - linux; amd64

```console
$ docker pull ruby@sha256:28e9e3db14e64a87029b945871e2d3b303a062ed01fb00679c91b564d8b69d8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82524589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f3200bb0e48807531445c368e87ed765db768cc31c8bdd2bf7683a06c99938`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 07 Sep 2017 23:07:26 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Thu, 07 Sep 2017 23:07:26 GMT
CMD ["bash"]
# Tue, 12 Sep 2017 22:45:33 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Sep 2017 22:45:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 12 Sep 2017 22:45:33 GMT
ENV RUBY_MAJOR=2.4
# Tue, 12 Sep 2017 22:45:33 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 12 Sep 2017 22:45:34 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 12 Sep 2017 22:45:34 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 12 Sep 2017 22:48:28 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 12 Sep 2017 22:48:28 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 12 Sep 2017 22:48:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 12 Sep 2017 22:48:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 12 Sep 2017 22:48:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 12 Sep 2017 22:48:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Sep 2017 22:48:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 12 Sep 2017 22:48:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9fa1cc7f67f798f50ef592dcb11a8b8d385588b15151a88ea18d3ceb864431`  
		Last Modified: Tue, 12 Sep 2017 23:17:31 GMT  
		Size: 12.7 MB (12740873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0b7831296a6c02a83f33d9cf30f77f726473a1860bb7af58da3299aa9d368a`  
		Last Modified: Tue, 12 Sep 2017 23:17:26 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9f203088942ff79e45a02479becd254d68fc1fb032ac8a86c12d07c65f9c5a`  
		Last Modified: Tue, 12 Sep 2017 23:17:32 GMT  
		Size: 24.0 MB (23980783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f771290d66bcdd5bd1083a2def0f493ace78a061c11d7dd0dd89d2d43c71d2`  
		Last Modified: Tue, 12 Sep 2017 23:17:27 GMT  
		Size: 677.1 KB (677066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c157a4162e0008a5da6d50106998828f22435755d0028b0bc5021220c0e1f31`  
		Last Modified: Tue, 12 Sep 2017 23:17:26 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm variant v7

```console
$ docker pull ruby@sha256:1e80616945394157337682a184a1b061e297f5ed67af007f19888a8152afbd23
```

-	Docker Version: 17.06.0-ce-rc5
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76668876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16c16da4b5b98f8709174cbd3d246ca72f44ffa30f3b1e37cd69542c1eae90a`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 25 Jul 2017 12:58:38 GMT
ADD file:5b66635869fca4e54960f6da988fb3dbdf9d69742093516035a3eda4c3869ed0 in / 
# Tue, 25 Jul 2017 12:58:39 GMT
CMD ["bash"]
# Tue, 08 Aug 2017 01:28:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Aug 2017 01:28:30 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 08 Aug 2017 01:28:32 GMT
ENV RUBY_MAJOR=2.4
# Tue, 08 Aug 2017 01:28:32 GMT
ENV RUBY_VERSION=2.4.1
# Tue, 08 Aug 2017 01:28:33 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Tue, 08 Aug 2017 01:28:34 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Tue, 08 Aug 2017 01:46:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 08 Aug 2017 01:46:23 GMT
ENV BUNDLER_VERSION=1.15.3
# Tue, 08 Aug 2017 01:46:27 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 08 Aug 2017 01:46:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 08 Aug 2017 01:46:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 08 Aug 2017 01:46:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Aug 2017 01:46:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 08 Aug 2017 01:46:32 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ed4f1f0d0a0457e7f76ffb25a8d6a193007709dd312b7647cb44fc6979ec4a53`  
		Last Modified: Tue, 25 Jul 2017 13:12:54 GMT  
		Size: 41.8 MB (41847444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3686da1d00fea98e14f0b748e827666e188e1da6c9e435d58bc4b1690e9f4eb7`  
		Last Modified: Tue, 08 Aug 2017 02:52:06 GMT  
		Size: 10.8 MB (10827870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f227cd5ce4ae95be194b2c20d98c164eff6b86c278b05a2071de3a6fa55d26b`  
		Last Modified: Tue, 08 Aug 2017 02:51:55 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:877aa37470e34b8f2eacdf1d1af3ce316d4eee47886c3aa16d759b27a1159254`  
		Last Modified: Tue, 08 Aug 2017 02:52:19 GMT  
		Size: 23.3 MB (23318056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2abe007055f3d5c456c0fa6746a892918ffe99f1777fc4b678eb14a1a72fdbe`  
		Last Modified: Tue, 08 Aug 2017 02:51:58 GMT  
		Size: 675.1 KB (675134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5f808171c5569565ace238adf842c35cf68cf0cb0cd8335c0e6e9196522a1e`  
		Last Modified: Tue, 08 Aug 2017 02:51:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:03dfb1efc946c13794961730bd49be99d3c5a55d7a0c3d9daabbdadcda1e7dca
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78886713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e278bf2a458914eb588980742bcc9a768886db19a1d4beb49b0e5c70ef5d06c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 17:28:29 GMT
ADD file:b07e310ad0ecb33cde1c2343c00726e7850bdf28d515c2fbf89ab52cb524aecd in / 
# Fri, 08 Sep 2017 17:28:30 GMT
CMD ["bash"]
# Sat, 09 Sep 2017 01:33:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 09 Sep 2017 01:33:33 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 09 Sep 2017 01:33:33 GMT
ENV RUBY_MAJOR=2.4
# Sat, 09 Sep 2017 01:33:34 GMT
ENV RUBY_VERSION=2.4.1
# Sat, 09 Sep 2017 01:33:35 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Sat, 09 Sep 2017 01:33:36 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Sat, 09 Sep 2017 01:45:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Sat, 09 Sep 2017 01:45:03 GMT
ENV BUNDLER_VERSION=1.15.4
# Sat, 09 Sep 2017 01:45:06 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Sat, 09 Sep 2017 01:45:07 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 09 Sep 2017 01:45:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 09 Sep 2017 01:45:08 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 09 Sep 2017 01:45:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 09 Sep 2017 01:45:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:61e2133fe2d7b94a36716e9a4c49c342905068f6defa9060a6b963354addd21c`  
		Last Modified: Fri, 08 Sep 2017 17:42:14 GMT  
		Size: 42.9 MB (42904079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80be969d8dd3febe85dee7e699cbeb35f1e612e4dcbca4f21099fe34a6b7b278`  
		Last Modified: Sat, 09 Sep 2017 02:18:18 GMT  
		Size: 11.6 MB (11552632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8880eafb5da958a040fe4e7d0ff380b2cc0e8c1c85b132c6d6f909c0bf2ec08f`  
		Last Modified: Sat, 09 Sep 2017 02:18:12 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349a92aee28492491e78f7b22c4198bbfbc24d2ff04909e1e856cb39aa5b2e98`  
		Last Modified: Sat, 09 Sep 2017 02:18:20 GMT  
		Size: 23.8 MB (23752567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ef69f6af2cafa505722c876860415c8484b0ce6d6b6c946c3e65e72e32dd2a`  
		Last Modified: Sat, 09 Sep 2017 02:18:13 GMT  
		Size: 677.1 KB (677067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc08525c6ad93da85b52a5bebe172a46c3a797e93b99f40778876118b74ce71`  
		Last Modified: Sat, 09 Sep 2017 02:18:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; 386

```console
$ docker pull ruby@sha256:0fb67a637adbdac21cecf73eae3717742176fee38abe6648abae5701a43470b7
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.3 MB (86272573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb1331c6e3c682ac32cce3eefd40102e2d4a8dd32ff03bbec34bb27e28d424c`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 13:19:45 GMT
ADD file:402d57d8bc933b07f97c70a7d47950ab9db320f2efcbfe638adc290d1a0c159d in / 
# Fri, 08 Sep 2017 13:19:46 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 17:21:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 17:21:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 17:21:03 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 17:21:04 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 17:21:04 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 17:21:04 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 17:25:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 17:25:22 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 17:25:23 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 17:25:23 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 17:25:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 17:25:24 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 17:25:24 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 17:25:24 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:38807300bd16de4a00efeffb81570740677ff99a2307929b5335a897a79864df`  
		Last Modified: Fri, 08 Sep 2017 13:27:10 GMT  
		Size: 45.8 MB (45831803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a6f6e52426ed9b45895cec04ae90e0abc825e5213da0f0d6351d4b8648edee`  
		Last Modified: Fri, 08 Sep 2017 17:46:21 GMT  
		Size: 16.2 MB (16183568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ffde021ff9dc51bb57ece5d068b5263e3aac18edc8ba92e4a0b274b318016c`  
		Last Modified: Fri, 08 Sep 2017 17:46:14 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957b8617780b75eba7ddd12d05c7b5e839df5f5550548d889a3f52f0cd3b3e07`  
		Last Modified: Fri, 08 Sep 2017 17:46:22 GMT  
		Size: 23.6 MB (23581480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19d21a08d5eeec2ab1c4bff8c6b50bf3e40b40e5e1457964456a90e93087e60`  
		Last Modified: Fri, 08 Sep 2017 17:46:14 GMT  
		Size: 675.4 KB (675354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b432168be8274e48cb7f2512abf9bb0b4a3777949b609d9e38d7bb32985478`  
		Last Modified: Fri, 08 Sep 2017 17:46:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; ppc64le

```console
$ docker pull ruby@sha256:df46127e5535682404eb72b9f958e2c41e541402abaa50cabab6b1082266492f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82392405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa23af354033a4e471f4ecd872330437f03be03687a0f2a0119e309ccfa97abd`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 00:34:09 GMT
ADD file:dcb3d4c61a7bf218af93e213165a66227776bbbf5a29daf22d6bf27b0925f97a in / 
# Fri, 08 Sep 2017 00:34:09 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 02:17:13 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 02:17:14 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 02:17:14 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 02:17:14 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 02:17:15 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 02:17:15 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 02:21:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 02:21:19 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 02:21:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 02:21:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 02:21:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 02:21:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 02:21:21 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 02:21:21 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:97a7e851b7e2e26b94781e2f2bd23043fa46c09b45f0944d9ee2dfd81fa79762`  
		Last Modified: Fri, 08 Sep 2017 00:40:54 GMT  
		Size: 45.4 MB (45376722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcdd417ce5409bce2bce40d06234038bccdb50d20dcaeda03578b588810891`  
		Last Modified: Fri, 08 Sep 2017 02:33:26 GMT  
		Size: 12.1 MB (12138050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacc62cffdb4af2581e2090a3e689397c683ae5228f243dc8cda3b15e9664298`  
		Last Modified: Fri, 08 Sep 2017 02:33:21 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4ab5c93070fc8bb2c75301b018e5a66ba45aca8cbd7876bd701f955b9ec8b5`  
		Last Modified: Fri, 08 Sep 2017 02:33:28 GMT  
		Size: 24.2 MB (24200146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c5e2c8f5da38a717fb44591599849989acb96ac37f34c7bb9a4d97d322e8aa`  
		Last Modified: Fri, 08 Sep 2017 02:33:22 GMT  
		Size: 677.1 KB (677086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dd27a3ba6b57cd51b4a6a075eaddfd00966731d8ead1c54847684f16649b5fd`  
		Last Modified: Fri, 08 Sep 2017 02:33:21 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; s390x

```console
$ docker pull ruby@sha256:4af5567013118f89adb84bcac4ba1f9c3ff570c9ac0ca608156c622a94fcb0c3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83142173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c722ce10608c78cb263b25293d3fc8fe93ddf402c3025f18a6433d0ebb19f14a`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 08 Sep 2017 05:22:51 GMT
ADD file:2fc0b17ef015eff73a1fa19bbc2a72baf39b9f2abe8ccd1cd8ce1c757be70308 in / 
# Fri, 08 Sep 2017 05:22:53 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 07:17:04 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:17:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 08 Sep 2017 07:17:05 GMT
ENV RUBY_MAJOR=2.4
# Fri, 08 Sep 2017 07:17:05 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 08 Sep 2017 07:17:05 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 08 Sep 2017 07:17:05 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 08 Sep 2017 07:20:14 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 08 Sep 2017 07:20:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 08 Sep 2017 07:20:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 08 Sep 2017 07:20:15 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 08 Sep 2017 07:20:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 08 Sep 2017 07:20:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 07:20:16 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 08 Sep 2017 07:20:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:2f25bc6ba506d980514ec3fda2b8f9cbb5e39423e5e4edad7fadf3faa9e3aef7`  
		Last Modified: Fri, 08 Sep 2017 05:26:51 GMT  
		Size: 45.0 MB (44968557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd084db6dbb3491b5500d08c552ec80dd9c83d2cfbdd52038b48f513a15393e`  
		Last Modified: Fri, 08 Sep 2017 07:30:01 GMT  
		Size: 13.1 MB (13144357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a11967ee35ef515dff4609e514fcaa6ffe0fe067161117be1729c2cb078239`  
		Last Modified: Fri, 08 Sep 2017 07:29:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965a502068d0a381a76061c9b186cac650d5ed9831fc7aa0af96e620ecd9027e`  
		Last Modified: Fri, 08 Sep 2017 07:30:02 GMT  
		Size: 24.4 MB (24351831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8134ae262fa05a2d359ced167a2a52f483a82561ea759bb70398aada177ea75`  
		Last Modified: Fri, 08 Sep 2017 07:29:57 GMT  
		Size: 677.1 KB (677061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d694fe1a37d59fe9c16a7ee541067dfad4c69782e35040c7d0c4f0d933b566b7`  
		Last Modified: Fri, 08 Sep 2017 07:29:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
