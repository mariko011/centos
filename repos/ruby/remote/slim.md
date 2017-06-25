## `ruby:slim`

```console
$ docker pull ruby@sha256:3115bfaf3c1d38c94895af2e2f1fe0543d69ce94cd332f2a9526fed20b6f60eb
```

-	Platforms:
	-	linux; amd64

### `ruby:slim` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.7 MB (86676382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc84c8f20014741fe87d92c001322744d6d2c72566241eac6a0882bdb09618d`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Fri, 23 Jun 2017 10:24:23 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 10:24:25 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Fri, 23 Jun 2017 10:45:21 GMT
ENV RUBY_MAJOR=2.4
# Fri, 23 Jun 2017 10:45:22 GMT
ENV RUBY_VERSION=2.4.1
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBY_DOWNLOAD_SHA256=4fc8a9992de3e90191de369270ea4b6c1b171b7941743614cc50822ddc1fe654
# Fri, 23 Jun 2017 10:45:23 GMT
ENV RUBYGEMS_VERSION=2.6.12
# Fri, 23 Jun 2017 10:48:33 GMT
RUN set -ex 		&& buildDeps=' 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	' 	&& apt-get update 	&& apt-get install -y --no-install-recommends $buildDeps 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-get purge -y --auto-remove $buildDeps 	&& cd / 	&& rm -r /usr/src/ruby 		&& gem update --system "$RUBYGEMS_VERSION"
# Fri, 23 Jun 2017 10:48:34 GMT
ENV BUNDLER_VERSION=1.15.1
# Fri, 23 Jun 2017 10:48:36 GMT
RUN gem install bundler --version "$BUNDLER_VERSION"
# Fri, 23 Jun 2017 10:48:37 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 23 Jun 2017 10:48:39 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Jun 2017 10:48:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 23 Jun 2017 10:48:41 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967caaeb9aae94b27fbbc4c44a60233222805511aec035b914579611014a715a`  
		Last Modified: Sat, 24 Jun 2017 23:37:21 GMT  
		Size: 10.2 MB (10162055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927232a94dc1abd982febb11e882c06e7e8ca91f7507febe11304d00cf90da`  
		Last Modified: Sat, 24 Jun 2017 23:37:17 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42bf0dee2e56d05e63fd5092696b150fe609b2902c892aa747757ceacd103f2`  
		Last Modified: Sat, 24 Jun 2017 23:51:41 GMT  
		Size: 23.2 MB (23221256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35959beb44bf6d48d86ca6a185b6a00762f12f72bdaacd83ec6855809b3b0202`  
		Last Modified: Sat, 24 Jun 2017 23:51:33 GMT  
		Size: 677.9 KB (677903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971a0fb08216f01a5b1754fa23f7680481bfcaa771407253fb44ba6d7dceb719`  
		Last Modified: Sat, 24 Jun 2017 23:51:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
