## `ruby:slim`

```console
$ docker pull ruby@sha256:9c0cd438ad5594c80013ca2d32d0b7484c7a45266ff15dcbed95f21e4c8d750f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ruby:slim` - linux; amd64

```console
$ docker pull ruby@sha256:da0d56067bd5be717c7de4ef13acb3b7272be2a0bd2d1ae6733b2df26a76cab5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83425548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e1f1fea3015bc22eca34aedcbefb757ed57481e9d53650d977598d671e08ab`
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
# Tue, 26 Dec 2017 20:47:18 GMT
ENV RUBY_MAJOR=2.5
# Tue, 26 Dec 2017 20:47:18 GMT
ENV RUBY_VERSION=2.5.0
# Tue, 26 Dec 2017 20:47:18 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Tue, 26 Dec 2017 20:47:18 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 20:47:18 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 20:49:41 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 20:49:42 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 20:49:42 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 20:49:42 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 20:49:43 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 20:49:43 GMT
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
	-	`sha256:492ace9e9906a8b92ef50df9c5e47cb9f079be537598850786db73f72bc31d00`  
		Last Modified: Tue, 26 Dec 2017 21:50:37 GMT  
		Size: 25.5 MB (25514950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4728f369da947ee4f9cdd4e830a8983d82f73df06c82af7924db0d69812d3b4a`  
		Last Modified: Tue, 26 Dec 2017 21:50:31 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:slim` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:30600e138db22d8424bb3d048b2fe1650038fc569a892300fbf890b0a1846b05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79799477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61257f2eeb7da754d7b648f8f3fb8b98ebb3d188ad2fb6364d6cfebe619660d9`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:45 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:47 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Tue, 26 Dec 2017 21:43:37 GMT
ENV RUBY_MAJOR=2.5
# Tue, 26 Dec 2017 21:43:38 GMT
ENV RUBY_VERSION=2.5.0
# Tue, 26 Dec 2017 21:43:38 GMT
ENV RUBY_DOWNLOAD_SHA256=1da0afed833a0dab94075221a615c14487b05d0c407f991c8080d576d985b49b
# Tue, 26 Dec 2017 21:43:39 GMT
ENV RUBYGEMS_VERSION=2.7.4
# Tue, 26 Dec 2017 21:43:39 GMT
ENV BUNDLER_VERSION=1.16.1
# Tue, 26 Dec 2017 21:49:46 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Tue, 26 Dec 2017 21:49:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 26 Dec 2017 21:49:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 26 Dec 2017 21:49:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Dec 2017 21:49:50 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 26 Dec 2017 21:49:51 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7e27b7c7d6383b720949ebf5773fbccd00e0ea666a83146945454bf4bb3b66`  
		Last Modified: Tue, 12 Dec 2017 22:26:29 GMT  
		Size: 11.6 MB (11597434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77945bc951fa4a3970e0bce5b5c9c8a2d2b2bc6fd446e4848a70e965d0c2a0e7`  
		Last Modified: Tue, 12 Dec 2017 22:26:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b2a9db19ade2aab572b95538939791b07487322ac3d2b3f73211a05d040a10`  
		Last Modified: Tue, 26 Dec 2017 23:14:37 GMT  
		Size: 25.3 MB (25288860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6f0df8b623ac7b25a0824296e1a63d95605d98587b646bfb3ef24151d723b5`  
		Last Modified: Tue, 26 Dec 2017 23:14:29 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
