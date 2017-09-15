## `ruby:2-slim-stretch`

```console
$ docker pull ruby@sha256:11e2208bbcb2e63620b1c26abad0aa00f34857a685993de6d1e01e8b912ae779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:2-slim-stretch` - linux; amd64

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

### `ruby:2-slim-stretch` - linux; arm64 variant v8

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

### `ruby:2-slim-stretch` - linux; 386

```console
$ docker pull ruby@sha256:21fc9ee5a246f750db82027949a4e87e3f65c9fe90f7cfeb77859750a7258df2
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84524678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58c49acdf8bec5c6ecab8946d31fe9088556830af675e947494e557f9087e19d`
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
# Fri, 15 Sep 2017 20:05:12 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:05:12 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:05:12 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:09:06 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:09:14 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:09:15 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:09:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:09:16 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:09:16 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:09:17 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:09:17 GMT
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
	-	`sha256:bbc3482407fcf9c633d65264f17973da708c9b759b66740f31aa4fb86060121f`  
		Last Modified: Fri, 15 Sep 2017 20:53:20 GMT  
		Size: 21.8 MB (21833590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f1bcd92601920672128bdbebdbcfb067ade144e6324c833819e8c97f27d37a`  
		Last Modified: Fri, 15 Sep 2017 20:53:17 GMT  
		Size: 675.3 KB (675349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf493b820a58586439a829b34527548154581f189365eb5e924552afddeaace`  
		Last Modified: Fri, 15 Sep 2017 20:53:15 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:2-slim-stretch` - linux; ppc64le

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

### `ruby:2-slim-stretch` - linux; s390x

```console
$ docker pull ruby@sha256:6323bb682a35e47e7df52b6572dc41d9504eecd363b66fe06dc5c08890adb9b2
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81399418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50544aa98b0a378f14fd652393cf450687a71dcee0a24e0ef55c07158c1e1f40`
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
# Fri, 15 Sep 2017 20:01:21 GMT
ENV RUBY_VERSION=2.4.2
# Fri, 15 Sep 2017 20:01:22 GMT
ENV RUBY_DOWNLOAD_SHA256=748a8980d30141bd1a4124e11745bb105b436fb1890826e0d2b9ea31af27f735
# Fri, 15 Sep 2017 20:01:22 GMT
ENV RUBYGEMS_VERSION=2.6.13
# Fri, 15 Sep 2017 20:04:49 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 15 Sep 2017 20:04:49 GMT
ENV BUNDLER_VERSION=1.15.4
# Fri, 15 Sep 2017 20:04:50 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 15 Sep 2017 20:04:50 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 15 Sep 2017 20:04:51 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 15 Sep 2017 20:04:51 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Sep 2017 20:04:51 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 15 Sep 2017 20:04:51 GMT
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
	-	`sha256:5b4848cd69f000be48f09ebe6aed8a1970c49973def800e9ea90f129eadca8e9`  
		Last Modified: Fri, 15 Sep 2017 20:25:14 GMT  
		Size: 22.6 MB (22609079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d975d4836d648b5645bde3551f4860bd5ef805dde6e8addeacb2dc4f385c93`  
		Last Modified: Fri, 15 Sep 2017 20:25:10 GMT  
		Size: 677.1 KB (677058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b21d7980f32a69574a24d72c87d296d5e8eecb05e0fae14f590b72fd8f6399`  
		Last Modified: Fri, 15 Sep 2017 20:25:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
