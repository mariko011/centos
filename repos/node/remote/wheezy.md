## `node:wheezy`

```console
$ docker pull node@sha256:1421119fdaa5e886a2f1908427adab7ad99d2b6f2498c0b07dee5468ba4f5615
```

-	Platforms:
	-	linux; amd64

### `node:wheezy` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190523057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278046d12a1d5a5e82fc8144227b67ac7283a20d98e021de06b730af7f8f8c84`
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
# Tue, 30 Aug 2016 22:02:10 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 30 Aug 2016 22:03:05 GMT
ENV NODE_VERSION=6.5.0
# Tue, 30 Aug 2016 22:03:09 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Tue, 30 Aug 2016 22:03:10 GMT
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
	-	`sha256:695ce9f367bd5ace318d96f6a8640b1878140758c4311866a2ecb8cfce66b976`  
		Last Modified: Tue, 30 Aug 2016 23:18:26 GMT  
		Size: 13.9 MB (13921156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
