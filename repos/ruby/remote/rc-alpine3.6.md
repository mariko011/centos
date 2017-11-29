## `ruby:rc-alpine3.6`

```console
$ docker pull ruby@sha256:7e67422db35854b576ef6023202e66b366ba72ed3b3cbd662a1e7deacc962966
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ruby:rc-alpine3.6` - linux; amd64

```console
$ docker pull ruby@sha256:639624417c059948021a27b98f4def2ed9cabad5067b2e1b5da8cdbe664a7c35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 MB (33417593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27c6bcdc768363bd6d0e4f56f4afd97b1c404f69fc898b2395a5393d95effb0`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:44:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Sat, 04 Nov 2017 05:44:10 GMT
ENV RUBY_MAJOR=2.5-rc
# Sat, 04 Nov 2017 05:44:10 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Sat, 04 Nov 2017 05:44:10 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Wed, 29 Nov 2017 01:48:03 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 01:48:04 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 01:50:11 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 01:50:12 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 01:50:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 01:50:12 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 01:50:13 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 01:50:13 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2311e2e211b981925885448e808333cfc17bb45e5498dc778a5d0750801184`  
		Last Modified: Sat, 04 Nov 2017 06:28:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0722a5111036ec813e0dc34c24b1355575911b3c6f4e62abc4c00eed18c9749f`  
		Last Modified: Wed, 29 Nov 2017 02:28:14 GMT  
		Size: 31.4 MB (31425802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc82c6e55a3b375334a4543bc86bb40a4396d957aca1379863692babed9a58b3`  
		Last Modified: Wed, 29 Nov 2017 02:28:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.6` - linux; arm variant v6

```console
$ docker pull ruby@sha256:90ccfa63175912f0c80b2e723ea52340d84c918d63d10b5be510763686614dbc
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33206988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5ec3859a3375377fd095edaacf43a62de9d432ee7772329679fbc77eb8c13e`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:19:19 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 26 Oct 2017 05:19:19 GMT
ENV RUBY_MAJOR=2.5-rc
# Thu, 26 Oct 2017 05:19:20 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Thu, 26 Oct 2017 05:19:20 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Wed, 29 Nov 2017 21:03:23 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 21:03:23 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 21:05:52 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 21:05:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 21:05:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 21:05:52 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 21:05:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 21:05:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48c97cb14836da1a167b07b8aa08891b2aaeb7b40726b282757be50bb83f664`  
		Last Modified: Thu, 26 Oct 2017 05:27:16 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3188f1b633ebc3ca73260527cb928f70f67a948e053c51cfc556196834e2a1`  
		Last Modified: Wed, 29 Nov 2017 21:11:30 GMT  
		Size: 31.2 MB (31240415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a276426f2d45c4ee902efb27c39a53c30da3932d64f99577327dcf1fb71e1b3`  
		Last Modified: Wed, 29 Nov 2017 21:11:21 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull ruby@sha256:6d5487b3530d06e1ff98aaffaa2fc769c4d0b3ecac99c559674f2279e489753d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.1 MB (34126338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cfc77e9dc4d8c69afd74bd6b2f672fe8b093fac661fc479503211ef745d33d5`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 18:01:56 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 26 Oct 2017 18:01:56 GMT
ENV RUBY_MAJOR=2.5-rc
# Thu, 26 Oct 2017 18:01:57 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Thu, 26 Oct 2017 18:01:58 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Mon, 13 Nov 2017 21:50:54 GMT
ENV RUBYGEMS_VERSION=2.7.2
# Mon, 13 Nov 2017 21:50:54 GMT
ENV BUNDLER_VERSION=1.16.0
# Mon, 13 Nov 2017 21:54:54 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Mon, 13 Nov 2017 21:54:55 GMT
ENV GEM_HOME=/usr/local/bundle
# Mon, 13 Nov 2017 21:54:56 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Mon, 13 Nov 2017 21:54:56 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Nov 2017 21:54:58 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Mon, 13 Nov 2017 21:54:59 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49aec0dcd8c17aa9f38da0faf603dc511652c5ca398961b13eb40c71bd198414`  
		Last Modified: Thu, 26 Oct 2017 18:20:27 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a42f43d74563cb1819ed260737fd2dc3d51ce7faaf931c07d138a06eb95690d`  
		Last Modified: Mon, 13 Nov 2017 23:12:21 GMT  
		Size: 32.2 MB (32211058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8dde1f7c078bb561b515f0c77c39f167443af78527a2463167bfb655802419a`  
		Last Modified: Mon, 13 Nov 2017 23:12:08 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.6` - linux; 386

```console
$ docker pull ruby@sha256:3d6b328d4c5f34869af1959a39c27a9e0111c68ccf5a19b5f4e73aff0d8afd8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.8 MB (33828051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d649d6fdff687ba3f91434251735a78f92f0c010f6cfd3a7876898972ab9d5d9`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 02:37:10 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 27 Oct 2017 02:37:11 GMT
ENV RUBY_MAJOR=2.5-rc
# Fri, 27 Oct 2017 02:37:11 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Fri, 27 Oct 2017 02:37:11 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Wed, 29 Nov 2017 03:49:51 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 03:49:52 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 03:52:38 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 03:52:39 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 03:52:39 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 03:52:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 03:52:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 03:52:40 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26083500c88850b86450d20d715128d7a3de9dc44b46fbf277573a3ae319dbd3`  
		Last Modified: Fri, 27 Oct 2017 02:46:13 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c89e323cd88dfe9a18b8144432d032749e18add9b90d91b8b5690071d5e1b17`  
		Last Modified: Wed, 29 Nov 2017 04:43:08 GMT  
		Size: 31.8 MB (31781926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2cb96e44c66efd8b8dc82cdac883c52c2fe0dec23b39c342f31425a4a80a2e`  
		Last Modified: Wed, 29 Nov 2017 04:42:59 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.6` - linux; ppc64le

```console
$ docker pull ruby@sha256:25337fc05510e6d2c654eda92c927fb2a7e500b08b8d321a35229a9f35458e57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34705412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c82e31ffab0ef23afc1c699f5bbf238c4bb0e1c0264e98e27ef4a6d4d0b45c`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Fri, 27 Oct 2017 00:16:50 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 27 Oct 2017 00:16:52 GMT
ENV RUBY_MAJOR=2.5-rc
# Fri, 27 Oct 2017 00:16:54 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Fri, 27 Oct 2017 00:16:55 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Wed, 29 Nov 2017 01:29:20 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 01:29:21 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 01:32:14 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 01:32:16 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 01:32:17 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 01:32:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 01:32:23 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 01:32:25 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f309c2b07c6317d5576fb88d6ff7486dd7ac3f2fa9482e51806b4b6025e5ecf`  
		Last Modified: Fri, 27 Oct 2017 00:26:01 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8fd417efe9314e526189e07b1fadaef16b31f3279918c10f09ede3e745b1741`  
		Last Modified: Wed, 29 Nov 2017 02:38:45 GMT  
		Size: 32.7 MB (32696243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d86d8ae57055f7e93af294d83d91b594bc86e2fa49094f5f038659b31c8d50`  
		Last Modified: Wed, 29 Nov 2017 02:38:36 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ruby:rc-alpine3.6` - linux; s390x

```console
$ docker pull ruby@sha256:82a19dd2461d7b8ebec410676a7ad0d2604e3f146e8b651470fdc809a7e0ce91
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.6 MB (36553534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929922f00e873d512fc7888ad5f8a75f81e0ee2108010efb9b6adac7ace32e90`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 08:34:22 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Thu, 26 Oct 2017 08:34:22 GMT
ENV RUBY_MAJOR=2.5-rc
# Thu, 26 Oct 2017 08:34:22 GMT
ENV RUBY_VERSION=2.5.0-preview1
# Thu, 26 Oct 2017 08:34:22 GMT
ENV RUBY_DOWNLOAD_SHA256=c2f518eb04b38bdd562ba5611abd2521248a1608fc466368563dd794ddeddd09
# Wed, 29 Nov 2017 09:34:09 GMT
ENV RUBYGEMS_VERSION=2.7.3
# Wed, 29 Nov 2017 09:34:09 GMT
ENV BUNDLER_VERSION=1.16.0
# Wed, 29 Nov 2017 09:36:19 GMT
RUN set -ex 		&& apk add --no-cache --virtual .ruby-builddeps 		autoconf 		bison 		bzip2 		bzip2-dev 		ca-certificates 		coreutils 		dpkg-dev dpkg 		gcc 		gdbm-dev 		glib-dev 		libc-dev 		libffi-dev 		libressl 		libressl-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		ncurses-dev 		procps 		readline-dev 		ruby 		tar 		xz 		yaml-dev 		zlib-dev 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& export ac_cv_func_isnan=yes ac_cv_func_isinf=yes 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" 	&& apk add --virtual .ruby-rundeps $runDeps 		bzip2 		ca-certificates 		libffi-dev 		libressl-dev 		procps 		yaml-dev 		zlib-dev 	&& apk del .ruby-builddeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION" 	&& gem install bundler --version "$BUNDLER_VERSION" --force
# Wed, 29 Nov 2017 09:36:19 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 29 Nov 2017 09:36:19 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 29 Nov 2017 09:36:19 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Nov 2017 09:36:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 29 Nov 2017 09:36:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176a0a714eff3823a02500e0890605069b82d7961f51f2e52dea2457764a4bbc`  
		Last Modified: Thu, 26 Oct 2017 09:06:43 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f789ea966f0a8cadf14477393c2ee4b74ca476c0c6f53b2af636a2759cdcfe00`  
		Last Modified: Wed, 29 Nov 2017 10:04:56 GMT  
		Size: 34.5 MB (34487541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9a793e4bfb21ba2b3b17a9a7fe9cd0efcbe7bc962ba4b22c99d7dd199797fe`  
		Last Modified: Wed, 29 Nov 2017 10:04:50 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
