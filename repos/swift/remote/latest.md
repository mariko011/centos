## `swift:latest`

```console
$ docker pull swift@sha256:104dd15d93118e64ebbfcbdde8befca3df40ee910a31f5939b35e5895cbdb284
```

-	Platforms:
	-	linux; amd64

### `swift:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.8 MB (409834239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10f4cbeb45a4081e20bb66d2d3af4dc804fae0cb523331980e2d54a69639a27a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Fri, 11 Aug 2017 01:35:02 GMT
MAINTAINER Haris Amin <aminharis7@gmail.com>
# Fri, 11 Aug 2017 01:36:07 GMT
RUN apt-get -q update &&     apt-get -q install -y     make     libc6-dev     clang-3.6     curl     libedit-dev     python2.7     python2.7-dev     libicu-dev     libssl-dev     libxml2     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.6 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.6 100     && rm -r /var/lib/apt/lists/*
# Fri, 11 Aug 2017 01:36:07 GMT
ARG SWIFT_PLATFORM=ubuntu16.04
# Fri, 11 Aug 2017 01:36:07 GMT
ARG SWIFT_BRANCH=swift-3.1-release
# Fri, 11 Aug 2017 01:36:08 GMT
ARG SWIFT_VERSION=swift-3.1-RELEASE
# Fri, 11 Aug 2017 01:36:08 GMT
ENV SWIFT_PLATFORM=ubuntu16.04 SWIFT_BRANCH=swift-3.1-release SWIFT_VERSION=swift-3.1-RELEASE
# Fri, 11 Aug 2017 01:36:30 GMT
RUN SWIFT_URL=https://swift.org/builds/$SWIFT_BRANCH/$(echo "$SWIFT_PLATFORM" | tr -d .)/$SWIFT_VERSION/$SWIFT_VERSION-$SWIFT_PLATFORM.tar.gz     && curl -fSsL $SWIFT_URL -o swift.tar.gz     && curl -fSsL $SWIFT_URL.sig -o swift.tar.gz.sig     && export GNUPGHOME="$(mktemp -d)"     && set -e;         for key in           7463A81A4B2EEA1B551FFBCFD441C977412B37AD           1BE1E29A084CB305F397D62A9F597F4D21A56D5F           A3BAFD3556A59079C06894BD63BC1CFE91D306C6         ; do           gpg --quiet --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";         done     && gpg --batch --verify --quiet swift.tar.gz.sig swift.tar.gz     && tar -xzf swift.tar.gz --directory / --strip-components=1     && rm -r "$GNUPGHOME" swift.tar.gz.sig swift.tar.gz
# Fri, 11 Aug 2017 01:36:32 GMT
RUN swift --version
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feaae96e8b1fb29bf7f8d435c91a8caaab6897e3b30b5154a94cb242a7cb274f`  
		Last Modified: Fri, 11 Aug 2017 01:40:16 GMT  
		Size: 237.5 MB (237509208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec58da3942a23c946462bdd21caf436e73040334d7858ea483a0edb1cc895038`  
		Last Modified: Fri, 11 Aug 2017 01:39:53 GMT  
		Size: 125.1 MB (125063984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
