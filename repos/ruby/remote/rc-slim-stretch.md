## `ruby:rc-slim-stretch`

```console
$ docker pull ruby@sha256:93bc23809cae61f9139ca2714c775abbfadbf386bf486cb1eacda62043e32285
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

### `ruby:rc-slim-stretch` - linux; amd64

```console
$ docker pull ruby@sha256:9865ee2bc1252b927ea8d87d99f94336bbb900f9f0d440e6e4e204e240aebf39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81321442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96ebea0670d2079e2e25f33f3fe048272740f4b4341773252bfbf146aee6d06f`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 03:12:12 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 03:12:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 25 Oct 2017 19:09:57 GMT
ENV RUBY_MAJOR=2.5-rc
# Wed, 25 Oct 2017 19:09:58 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Wed, 25 Oct 2017 19:09:58 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Wed, 25 Oct 2017 19:09:58 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 02 Nov 2017 01:26:24 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 01:29:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 01:29:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 01:29:11 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 01:29:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 01:29:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 01:29:12 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188a770a8af1f50198d1a577883cba1f582c1178223ad76a8b93f1f8d73c4a79`  
		Last Modified: Tue, 10 Oct 2017 03:59:07 GMT  
		Size: 12.8 MB (12772148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca51f515180af0f5edb4628ae94b374ee2bf3ee4bbfddf1a8ade370c03cf78f`  
		Last Modified: Tue, 10 Oct 2017 03:58:57 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4016d294630d5d2b827b6cfda195db89945367220b503b0a83f4c15da1d60905`  
		Last Modified: Thu, 02 Nov 2017 02:46:37 GMT  
		Size: 23.4 MB (23419835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11abc64574d76c6b25d2945397a21726a744c5aedd9251dc459403ed96ecf2d4`  
		Last Modified: Thu, 02 Nov 2017 02:46:31 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; arm variant v5

```console
$ docker pull ruby@sha256:bc28db10f3b428f370401064f18853a954808c838910cf989a9a5e9d2107d980
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.1 MB (78121395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed041f1af7440a7fc7030a34880181a1bb2ac497f195ff40ba046afc39ad3efa`
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
# Thu, 26 Oct 2017 01:24:10 GMT
ENV RUBY_MAJOR=2.5-rc
# Thu, 26 Oct 2017 01:24:11 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Thu, 26 Oct 2017 01:24:11 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Thu, 26 Oct 2017 01:24:11 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 02 Nov 2017 01:24:18 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 01:27:35 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 01:27:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 01:27:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 01:27:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 01:27:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 01:27:38 GMT
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
	-	`sha256:132ff04a657a50cab8fa9603bf05b0bf60fd97d2995ca068f6a792ee8459d403`  
		Last Modified: Thu, 02 Nov 2017 02:14:13 GMT  
		Size: 23.0 MB (22967913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c262af7d6eca7ddf997b52fa53943cc60957c83ce5b397f735aa3b93c2f43d`  
		Last Modified: Thu, 02 Nov 2017 02:14:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; arm variant v7

```console
$ docker pull ruby@sha256:1550259c49b24fb2d0bc8b9c2b67e3444d33f1ea46c5c7174c997a89c518935c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75474847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:930fd712c8eeedc4c98502512439d6925c4f9730b8d5b5ca7a5234164d5d240f`
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
# Thu, 26 Oct 2017 01:14:08 GMT
ENV RUBY_MAJOR=2.5-rc
# Thu, 26 Oct 2017 01:14:08 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Thu, 26 Oct 2017 01:14:08 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Thu, 26 Oct 2017 01:14:08 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 02 Nov 2017 01:06:08 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 01:08:57 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 01:08:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 01:08:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 01:08:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 01:08:59 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 01:09:00 GMT
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
	-	`sha256:5fa1436c9d837b6838abd387ab1998c4f576dcb96ffbd1df52f0ebb7b0c94a24`  
		Last Modified: Thu, 02 Nov 2017 01:53:51 GMT  
		Size: 22.8 MB (22775130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32d99444a340d24e53886c482ccce79bca3d2b23e28c54c68540bc805c77bd4`  
		Last Modified: Thu, 02 Nov 2017 01:53:45 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:481160f2f915a6b8a70fb2a28925745132021c710d9b87fe29e77d20a7432d28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77648280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3831f3e51ed74a97fc84d38b782b86f308c6fd57d6c711354e674bae3d091ff`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:47:18 GMT
ADD file:bf097edec8505e5cb1e432319988aeb28a6f918edef706b3c543fa61aaaea4cb in / 
# Mon, 09 Oct 2017 21:47:19 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 07:21:11 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 07:21:13 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 25 Oct 2017 20:44:00 GMT
ENV RUBY_MAJOR=2.5-rc
# Wed, 25 Oct 2017 20:44:00 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Wed, 25 Oct 2017 20:44:01 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Wed, 25 Oct 2017 20:44:01 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Wed, 25 Oct 2017 20:44:02 GMT
ENV BUNDLER_VERSION=1.15.4
# Wed, 25 Oct 2017 20:50:13 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 25 Oct 2017 20:50:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 25 Oct 2017 20:50:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 25 Oct 2017 20:50:15 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Oct 2017 20:50:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 25 Oct 2017 20:50:17 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0e5a8be23912597ff0d89db096abd4c4383c8cf4ee700d333b86f881ea289875`  
		Last Modified: Mon, 09 Oct 2017 22:01:04 GMT  
		Size: 42.9 MB (42911727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4518c9184ff3fe2631b80187dc1942b528822ee88624b0e0232ea19772de94`  
		Last Modified: Tue, 10 Oct 2017 08:38:44 GMT  
		Size: 11.6 MB (11580911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1815da5c8d1101ac2ff3e23fd627a2c38f22de9cd2096e71e4abab845933af`  
		Last Modified: Tue, 10 Oct 2017 08:38:27 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a21daa86385cb46f90e5813467e36d842d69176adc8ba167740b8739f43395`  
		Last Modified: Wed, 25 Oct 2017 21:57:33 GMT  
		Size: 23.2 MB (23155274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dff8a4585c05f92e3e5d1850dbc0b0356431404e33581bf303e55e65a87f8`  
		Last Modified: Wed, 25 Oct 2017 21:57:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; 386

```console
$ docker pull ruby@sha256:076aaa4e02b71430b6c0110f77bf8ae6d2e1e31f389ed90263c5ccc89625c92a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.1 MB (85070545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a993f0f4f089d13b4475aba32c241d31e8b93fed14e7dea558750b16c372c3`
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
# Thu, 26 Oct 2017 02:43:20 GMT
ENV RUBY_MAJOR=2.5-rc
# Thu, 26 Oct 2017 02:43:20 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Thu, 26 Oct 2017 02:43:21 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Thu, 26 Oct 2017 02:43:21 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 02 Nov 2017 02:38:28 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 02:41:29 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 02:41:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 02:41:29 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 02:41:29 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 02:41:30 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 02:41:30 GMT
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
	-	`sha256:2adbc261a4aa5bc8436fe4966387cab45efc4a5b7d6cf9e8d2ff128b71fb7036`  
		Last Modified: Thu, 02 Nov 2017 03:24:01 GMT  
		Size: 23.0 MB (23023849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d699564e536bd888890f59e360f696e0d5b97abd506e1e40454bc542a710d945`  
		Last Modified: Thu, 02 Nov 2017 03:23:57 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; ppc64le

```console
$ docker pull ruby@sha256:4439585bb827c97fd063d1b0c9511a677f96cb94e18ebd18d14f5b2ecfbcc11e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81198681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fdd7cd7600d0a33b433cd99078ed2f106feca1d4ee06fff61de1421dbbd557`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 09 Oct 2017 21:45:33 GMT
ADD file:5217c22b771467c9c3563f1e5b1bbd92eff26c36f0dafc6cfed4ba0664f12a45 in / 
# Mon, 09 Oct 2017 21:45:35 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 05:36:19 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 05:36:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 26 Oct 2017 00:20:16 GMT
ENV RUBY_MAJOR=2.5-rc
# Thu, 26 Oct 2017 00:20:17 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Thu, 26 Oct 2017 00:20:19 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Thu, 26 Oct 2017 00:20:21 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 02 Nov 2017 00:20:26 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 00:30:22 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 00:30:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 00:30:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 00:30:27 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 00:30:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 00:30:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:f2df583ad5343147c4ed6ea52882355b70e206e1a801cbb0fe3b6fc6c7b0189a`  
		Last Modified: Mon, 09 Oct 2017 21:52:17 GMT  
		Size: 45.4 MB (45378365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6182431fbc15ee9373459d33bed4e9575bf312d7e1391eeb35d2d4a222d76ab6`  
		Last Modified: Tue, 10 Oct 2017 06:48:33 GMT  
		Size: 12.2 MB (12166035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3140d2a860b9451f510be289090b5ddab2c4ab63a919d3af698534b997d9574f`  
		Last Modified: Tue, 10 Oct 2017 06:48:28 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:227198cc2508270a3566b9b040efa59ab1950a0519f3bae554cb42e076f0cac1`  
		Last Modified: Thu, 02 Nov 2017 01:44:17 GMT  
		Size: 23.7 MB (23653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86403790a1edbd7edd99e3a55d3a5b3300cafc7c416bc79352f94b4f52356b00`  
		Last Modified: Thu, 02 Nov 2017 01:44:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-slim-stretch` - linux; s390x

```console
$ docker pull ruby@sha256:f9b699269f0747ab03820caf638323ba59fced36355db00a1b22f98d04036597
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.9 MB (81946483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f248921aec4cf93d13753bd8d8ba88c86052a056a528f835beb601ae5ff76c`
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
# Thu, 26 Oct 2017 08:32:00 GMT
ENV RUBY_MAJOR=2.5-rc
# Thu, 26 Oct 2017 08:32:00 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Thu, 26 Oct 2017 08:32:01 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Thu, 26 Oct 2017 08:32:01 GMT
ENV RUBYGEMS_VERSION=2.6.14
# Thu, 02 Nov 2017 08:31:47 GMT
ENV BUNDLER_VERSION=1.16.0
# Thu, 02 Nov 2017 08:34:08 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Thu, 02 Nov 2017 08:34:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 02 Nov 2017 08:34:09 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 02 Nov 2017 08:34:09 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Nov 2017 08:34:10 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 02 Nov 2017 08:34:10 GMT
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
	-	`sha256:79ac80d3d4680355aa557146f5aadbddd86919ab499ef4a1f6e53ab0fa72bf51`  
		Last Modified: Thu, 02 Nov 2017 09:05:55 GMT  
		Size: 23.8 MB (23799003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b0a088c78f896633f7031856bf1b89c9afc349c97c58b9fef276160e7c13d5`  
		Last Modified: Thu, 02 Nov 2017 09:05:51 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
