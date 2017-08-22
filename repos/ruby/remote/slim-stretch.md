## `ruby:slim-stretch`

```console
$ docker pull ruby@sha256:b6c7c5f4f44bbed6a44400b6888e8cea4af3d561e604a0e012f11255f0bbba70
```

-	Platforms:
	-	linux; amd64

### `ruby:slim-stretch` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82497574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3256321e4e7786ce2b954c46323dac7efbd7bc3236934a0562ea3feaeebc3e1e`
-	Default Command: `["irb"]`

```dockerfile
# Mon, 24 Jul 2017 16:52:54 GMT
ADD file:ebba725fb97cea45d0b1b35ccc8144e766fcfc9a78530465c23b0c4674b14042 in / 
# Mon, 24 Jul 2017 16:52:55 GMT
CMD ["bash"]
# Mon, 07 Aug 2017 22:41:56 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Aug 2017 22:41:57 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_MAJOR=2.4
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_VERSION=2.4.1
# Mon, 07 Aug 2017 22:41:57 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Mon, 07 Aug 2017 22:41:58 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Mon, 07 Aug 2017 22:45:02 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& dpkg-query --show --showformat '${package}\n' 		| grep -P '^libreadline\d+$' 		| xargs apt-mark manual 	&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Tue, 22 Aug 2017 17:50:32 GMT
ENV BUNDLER_VERSION=1.15.4
# Tue, 22 Aug 2017 17:50:35 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Tue, 22 Aug 2017 17:50:36 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:36 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 22 Aug 2017 17:50:36 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Aug 2017 17:50:37 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 22 Aug 2017 17:50:37 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:06b22ddb19134ec8c42aaabd3e2e9f5b378e4e53da4a8960eaaaa86351190af3`  
		Last Modified: Mon, 24 Jul 2017 16:59:30 GMT  
		Size: 45.1 MB (45142935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc191c5cc4e1ed1bbf91b215abf0e5bd877a7dd844fcdebf372c3415b71cbff`  
		Last Modified: Mon, 07 Aug 2017 23:00:00 GMT  
		Size: 12.7 MB (12742508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca08dd0f6803082f3af0a4ae8cfc2bce30e30dea23856d972152a3bf5392a2bf`  
		Last Modified: Mon, 07 Aug 2017 22:59:57 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c56ae054ec3a12f58b88a11166a32f94fea71414cd7a4519085f881a5c82814`  
		Last Modified: Mon, 07 Aug 2017 23:00:02 GMT  
		Size: 23.9 MB (23936454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebc5c89f6c69d6738bde867d3f22ac40bee3ab07a02c265a6e618661876ed4f`  
		Last Modified: Tue, 22 Aug 2017 17:53:20 GMT  
		Size: 675.3 KB (675317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a799d32d88d16d344d9153dec7e6ca505f6ae11f9cb53bdbb7e750c9f7a1043`  
		Last Modified: Tue, 22 Aug 2017 17:53:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
