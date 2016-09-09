## `node:0-wheezy`

```console
$ docker pull node@sha256:3552323a3a4136e39ccb17f486c118f98f515deff87c6bc26a6facf9a8bec530
```

-	Platforms:
	-	linux; amd64

### `node:0-wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.7 MB (186719645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c467283a2a3bfd3093d03b625e9327e4b601e6752e04100a0e35ba982f480e`
-	Default Command: `["node"]`

```dockerfile
# Tue, 30 Aug 2016 21:01:38 GMT
ADD file:a97fbdda054eb7b7359279534d677dcaa33f0f9a0823cf8905c1e3d283c66893 in / 
# Tue, 30 Aug 2016 21:01:39 GMT
CMD ["/bin/bash"]
# Tue, 30 Aug 2016 21:57:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:57:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 21:58:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 30 Aug 2016 22:01:24 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 30 Aug 2016 22:01:48 GMT
ENV NODE_VERSION=0.12.15
# Tue, 30 Aug 2016 22:01:52 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:01:52 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:046d0f015c61ca7eb317610240a3b1d9c1ba38e7295056ce4f03b964c523855b`  
		Last Modified: Tue, 30 Aug 2016 21:05:47 GMT  
		Size: 37.2 MB (37214590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d42a766d492b6fe6a801cb442017c52ae817620d0d7606e94a776d933f4766`  
		Last Modified: Tue, 30 Aug 2016 22:00:01 GMT  
		Size: 6.7 MB (6731205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3ac3a1df5276ab8197380a8e3c85257d493b1cef854eab9ab1bc93d72ec717`  
		Last Modified: Tue, 30 Aug 2016 22:00:28 GMT  
		Size: 37.4 MB (37364574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ea1e0791117ce5d03d4f5d5dc8fd0e8af7029472a5f81e68090e2299f11b18`  
		Last Modified: Tue, 30 Aug 2016 22:06:08 GMT  
		Size: 95.2 MB (95219685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c0a8f2ce6b6ad54cf32cad647f2044cfa111805d0eadf8844741024f971f0b`  
		Last Modified: Tue, 30 Aug 2016 23:10:01 GMT  
		Size: 71.8 KB (71847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b8aee2f1b0dd0a723d869b9d47d559c97664970eb5fb9c18358536a0b779ed`  
		Last Modified: Tue, 30 Aug 2016 23:11:49 GMT  
		Size: 10.1 MB (10117744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
