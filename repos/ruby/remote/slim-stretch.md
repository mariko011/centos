## `ruby:slim-stretch`

```console
$ docker pull ruby@sha256:8f9047c2ffcbd5adc49dbb13b19230960b0f376152cf29c0d810b92daf1c79fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:slim-stretch` - linux; amd64

```console
$ docker pull ruby@sha256:d017721a2d92adb4830d5c70b97b1a22e69196020f6f6c83b1f596087ec1bb7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80776397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8796ba6f5356677d717854f464285cb07cd727eb8be6dadec303ad6bcbf04d08`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 13 Sep 2017 08:41:42 GMT
ADD file:a7405474b639b2239b96a93d02803224c052a390fe42b3f9080f2ad07de94640 in / 
# Wed, 13 Sep 2017 08:41:42 GMT
CMD ["bash"]
# Thu, 14 Sep 2017 02:46:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 02:46:01 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 14 Sep 2017 02:46:01 GMT
ENV RUBY_MAJOR=2.4
# Fri, 15 Sep 2017 20:01:28 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:01:28 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:01:29 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:04:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:04:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:04:47 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:04:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:04:47 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:04:47 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:04:48 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:04:48 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:219d2e45b4afc3d80375a2fcf76505684de01f55027fb35a691099f0e538fdd8`  
		Last Modified: Thu, 07 Sep 2017 23:20:31 GMT  
		Size: 45.1 MB (45125497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18af44e618641d4b36e05f7b572e68332bde371cee768bc191a9817ad169ff16`  
		Last Modified: Thu, 14 Sep 2017 03:50:36 GMT  
		Size: 12.7 MB (12741117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5edf40c8b4c9aa51d8c56430fa2fecba882d54f85032a9fed28abad5ae9d21`  
		Last Modified: Thu, 14 Sep 2017 03:50:30 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9d56ca3f72d305e3bbd4c4d63d2c2be41842a35bf6d5bb816d3825c88fee62`  
		Last Modified: Fri, 15 Sep 2017 20:51:06 GMT  
		Size: 22.2 MB (22232353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab875af4b1b11427a09e30006f2f76722399b1016adfc24ecc3cbd6a4786f34`  
		Last Modified: Fri, 15 Sep 2017 20:51:02 GMT  
		Size: 677.1 KB (677061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1714a24fa9868a13f5538dadbc1a2421d387b638c1caa5bc13d91221eca7e427`  
		Last Modified: Fri, 15 Sep 2017 20:51:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm variant v5

```console
$ docker pull ruby@sha256:f3fee6d41206c52f9a75d41c12a1b29ebea99abd95bbd7c5eccc921441759597
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77651530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b51c04a599c3c0247f18117d482b1fe6fa84bbe5e2531f6d4ca3a10a03a197`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:33 GMT
ADD file:faa50a4d3491f148f07964f6b9f9c8e97c0cf64588b20deb10f24e2f4f6c6b87 in / 
# Mon, 09 Oct 2017 21:44:33 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:31:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:31:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:31:13 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:31:13 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:31:13 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 00:31:14 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:37:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:37:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:37:04 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:37:05 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:37:05 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:37:05 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:37:06 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:37:06 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3c60e7fc5441d6c90edac385048cfe55b732e74ac7a95ce0f52555d1fdd4777a`  
		Last Modified: Mon, 09 Oct 2017 21:50:32 GMT  
		Size: 43.8 MB (43815910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c416c81ba4dff87a2abaab346993bdf7c88b658e2b24bcaf567a01d8bb5f24`  
		Last Modified: Tue, 10 Oct 2017 01:12:44 GMT  
		Size: 11.3 MB (11337171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda218d8320c952835d12b60c05b0a2a04808648848698c2458108f65d88a019`  
		Last Modified: Tue, 10 Oct 2017 01:12:40 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0720359962cf3ab9ab870c82c5bd031804ccbd3453eb48bcbaa9ec691a5181d`  
		Last Modified: Tue, 10 Oct 2017 01:12:46 GMT  
		Size: 21.8 MB (21820890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5417a42b2692d724bce9d933ac1ec297638a0317a72c592c69965107d42ecd62`  
		Last Modified: Tue, 10 Oct 2017 01:12:40 GMT  
		Size: 677.2 KB (677158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dced985cb37b1d8b1edaac76e4d8aa49cd6e6e3f377f5a4593188aeb73fa611`  
		Last Modified: Tue, 10 Oct 2017 01:12:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm variant v7

```console
$ docker pull ruby@sha256:ccffdf8217ae05f359b136df7e2ffa2721322d096255957ca9bde8d8bece7592
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75007743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:066f820d7c3ad4b8f87182e76642204d39a2d94350c58b1c442900e7996ecc83`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:23 GMT
ADD file:8b7cf813a113aa20eb7f5eecbb602ff5d306b7586add13ed5e082cd09770edb4 in / 
# Mon, 09 Oct 2017 21:45:23 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 00:22:14 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:22:18 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 00:22:18 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 00:22:19 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 00:22:19 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 00:22:19 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 00:27:25 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 00:27:25 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 00:27:28 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 00:27:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 00:27:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 00:27:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 00:27:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 00:27:30 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0d9fbbfaa2cd8961ae50e51e7388e3a2a1a5ca2c105389b56a3a862dfe76d035`  
		Last Modified: Mon, 09 Oct 2017 21:52:12 GMT  
		Size: 41.8 MB (41841946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35a2c00091285c2fc2ebb932b11b45eb5b4bb3ef250f293ad54ba7094577bc4`  
		Last Modified: Tue, 10 Oct 2017 01:01:12 GMT  
		Size: 10.9 MB (10857369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bb7bf878e9c07e0b88216d82ef5f9b41183e1ea0d9051ecb47d6ff5258aca7c`  
		Last Modified: Tue, 10 Oct 2017 01:01:08 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f522c1f9ea392c9f6d0dd89c22913438a772a5f26febfd05b10e3c194d8b42`  
		Last Modified: Tue, 10 Oct 2017 01:01:14 GMT  
		Size: 21.6 MB (21630912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba7a3e440aa7479acf6d126a9db6a67f1519882b742af400bd4569eaa352e2b`  
		Last Modified: Tue, 10 Oct 2017 01:01:08 GMT  
		Size: 677.1 KB (677114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64549afbfe1d9b360fe585b67d9f01cc750f92a00d9343baa72b47e4de80f197`  
		Last Modified: Tue, 10 Oct 2017 01:01:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:a5bc59fde45b64733586945ccc1c5a0d7d07ff14adb180d26474bac44db1ad71
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77140314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cae9aed6b62bb8271dcc5b81d29b1880d99cf4919da2b7ec7f1bb01c0165d6`
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
# Fri, 15 Sep 2017 20:46:58 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:46:58 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:46:59 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:56:45 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:56:45 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:56:49 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:56:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:56:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:56:53 GMT
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
	-	`sha256:04a6b4920f054edd9a6fb9341b046588b100212c3b4724581036d168747efc41`  
		Last Modified: Fri, 15 Sep 2017 21:45:36 GMT  
		Size: 22.0 MB (22006177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8022da6ea2969f6fff84697b241a16d280dc6973a9bbe7d30b6b035ad27351`  
		Last Modified: Fri, 15 Sep 2017 21:45:29 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e796c93749838e72032a79ab41048024565a53706084ed54cd4026f16e91ae1`  
		Last Modified: Fri, 15 Sep 2017 21:45:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; 386

```console
$ docker pull ruby@sha256:6c8336d92a4a051eddaf54823d17d269ccfbf0d48d67682940b7778f1cb1d1fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.6 MB (84581799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2025662a822dffd3b9517b5373b5419a377fbecdce3565cd58278407dfd82c4a`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:21 GMT
ADD file:14ce0e7f11224a3d3ef5a62ece43529a687ada430b8d8ecfa0e0a5d2d1e47467 in / 
# Mon, 09 Oct 2017 21:45:21 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:36:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 02:37:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 10 Oct 2017 02:37:00 GMT
ENV RUBY_MAJOR=2.4
# Tue, 10 Oct 2017 02:37:00 GMT
ENV RUBY_VERSION=2.4.2
# Tue, 10 Oct 2017 02:37:00 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Tue, 10 Oct 2017 02:37:01 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Tue, 10 Oct 2017 02:41:55 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 10 Oct 2017 02:44:28 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 10 Oct 2017 02:44:29 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 10 Oct 2017 02:44:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 10 Oct 2017 02:44:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 10 Oct 2017 02:44:30 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:44:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 10 Oct 2017 02:44:31 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d1d52bc84c959ce2a6002a4aab897e247f2b7a55c1440de500f57e791c7814f3`  
		Last Modified: Mon, 09 Oct 2017 21:52:48 GMT  
		Size: 45.8 MB (45833677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259e90340c1a040510f4401ab1c6a213cfcd826273c165e394fe7113642cbd35`  
		Last Modified: Tue, 10 Oct 2017 03:23:04 GMT  
		Size: 16.2 MB (16212649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e912a3df84503cbab193a207a5373ba7f24e9196bf2e5a4cfd745de7f6075768`  
		Last Modified: Tue, 10 Oct 2017 03:22:59 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ba02c7043b957e221e6a32bef25976859ded54eb1c05b97e89a33ecaba1227`  
		Last Modified: Tue, 10 Oct 2017 03:23:04 GMT  
		Size: 21.9 MB (21858024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68606ef9d23ce57af8688601a1aa90fb52fa7c33bb0ee48cdc175524ac3ab7`  
		Last Modified: Tue, 10 Oct 2017 03:22:59 GMT  
		Size: 677.1 KB (677079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93a64ca5f2a8702189ea28655bb332775b38012e711d2669b92be705194f3df`  
		Last Modified: Tue, 10 Oct 2017 03:22:59 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; ppc64le

```console
$ docker pull ruby@sha256:845a1d8a7ddce0039c77b832c3b3f1da18150461039eca526a5f0e6efc340d49
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.7 MB (80663605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b315ea6d06f15fc11819fe46fe46ca90b12865f287dcaa697b4a3863cf9a6b`
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
# Fri, 15 Sep 2017 20:05:09 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:05:14 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:05:18 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:23:15 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:23:23 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:23:40 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:23:46 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:23:54 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:23:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:24:08 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:24:10 GMT
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
	-	`sha256:5fcbe4823343c6963848223550784e2252b0a9151147e84114366363995dbec3`  
		Last Modified: Fri, 15 Sep 2017 21:35:53 GMT  
		Size: 22.5 MB (22471322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3caa3ce5a6cc5bea96d93183fff5cbf14d3614ffa3d4390de67c2dcd279bcbf`  
		Last Modified: Fri, 15 Sep 2017 21:35:48 GMT  
		Size: 677.1 KB (677110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da26ccaad652629aabb2616d79cab704dc18f4eb4c416c2a12d7b32cb21fa55c`  
		Last Modified: Fri, 15 Sep 2017 21:35:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim-stretch` - linux; s390x

```console
$ docker pull ruby@sha256:0f9504221b33ce550b30cbcd14786ac2cd6a3f93f79b5f7470f3477edbe1a94b
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81458679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12fcb730ba8f4d68aa8b8f8ded1d61b7a4bc458f64054ce55828f632bb110ed1`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:44:19 GMT
ADD file:11704b7d478d6b95a0cfeb557a4a4a03c02fde3849dd3e01da2d1228c6b815f0 in / 
# Mon, 09 Oct 2017 21:44:19 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 23:53:02 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 23:53:03 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 09 Oct 2017 23:53:03 GMT
ENV RUBY_MAJOR=2.4
# Mon, 09 Oct 2017 23:53:03 GMT
ENV RUBY_VERSION=2.4.2
# Mon, 09 Oct 2017 23:53:04 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Mon, 09 Oct 2017 23:53:04 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Mon, 09 Oct 2017 23:56:19 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Mon, 09 Oct 2017 23:56:19 GMT
ENV BUNDLER_VERSION=1.15.4
# Mon, 09 Oct 2017 23:56:20 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Mon, 09 Oct 2017 23:56:20 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 09 Oct 2017 23:56:21 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 09 Oct 2017 23:56:21 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Oct 2017 23:56:22 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 09 Oct 2017 23:56:22 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c6630da1278315ced68910beef5ac605807b880918d11d0c02c4d3eac7307008`  
		Last Modified: Mon, 09 Oct 2017 21:48:41 GMT  
		Size: 45.0 MB (44972760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8dc9fb89857e80a11a46c0b89653b2fbca9ae06c5781d24e55f93dc65bfe674`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 13.2 MB (13174350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4995550c864edc239e5eae3c7fab90f5639e3332c298c3fd64b303e0cc1a4d`  
		Last Modified: Tue, 10 Oct 2017 00:15:34 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f32c3df3b36414a36d0eec25be8b227067bbb9890f8e19967e009493ec6841d`  
		Last Modified: Tue, 10 Oct 2017 00:15:39 GMT  
		Size: 22.6 MB (22634156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9712fd1ce0749cdec5ff501e273bb1e3708af10b95d9f00c70fc0deb2f4360`  
		Last Modified: Tue, 10 Oct 2017 00:15:35 GMT  
		Size: 677.0 KB (677042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36509f077142a45187cf3d0f4195a65c067509c35558c142f8ced6df8ff81cd6`  
		Last Modified: Tue, 10 Oct 2017 00:15:34 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
