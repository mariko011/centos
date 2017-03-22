<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `node`

-	[`node:7.7.4`](#node774)
-	[`node:7.7`](#node77)
-	[`node:7`](#node7)
-	[`node:latest`](#nodelatest)
-	[`node:7.7.4-alpine`](#node774-alpine)
-	[`node:7.7-alpine`](#node77-alpine)
-	[`node:7-alpine`](#node7-alpine)
-	[`node:alpine`](#nodealpine)
-	[`node:7.7.4-onbuild`](#node774-onbuild)
-	[`node:7.7-onbuild`](#node77-onbuild)
-	[`node:7-onbuild`](#node7-onbuild)
-	[`node:onbuild`](#nodeonbuild)
-	[`node:7.7.4-slim`](#node774-slim)
-	[`node:7.7-slim`](#node77-slim)
-	[`node:7-slim`](#node7-slim)
-	[`node:slim`](#nodeslim)
-	[`node:7.7.4-wheezy`](#node774-wheezy)
-	[`node:7.7-wheezy`](#node77-wheezy)
-	[`node:7-wheezy`](#node7-wheezy)
-	[`node:wheezy`](#nodewheezy)
-	[`node:6.10.1`](#node6101)
-	[`node:6.10`](#node610)
-	[`node:6`](#node6)
-	[`node:boron`](#nodeboron)
-	[`node:6.10.1-alpine`](#node6101-alpine)
-	[`node:6.10-alpine`](#node610-alpine)
-	[`node:6-alpine`](#node6-alpine)
-	[`node:boron-alpine`](#nodeboron-alpine)
-	[`node:6.10.1-onbuild`](#node6101-onbuild)
-	[`node:6.10-onbuild`](#node610-onbuild)
-	[`node:6-onbuild`](#node6-onbuild)
-	[`node:boron-onbuild`](#nodeboron-onbuild)
-	[`node:6.10.1-slim`](#node6101-slim)
-	[`node:6.10-slim`](#node610-slim)
-	[`node:6-slim`](#node6-slim)
-	[`node:boron-slim`](#nodeboron-slim)
-	[`node:6.10.1-wheezy`](#node6101-wheezy)
-	[`node:6.10-wheezy`](#node610-wheezy)
-	[`node:6-wheezy`](#node6-wheezy)
-	[`node:boron-wheezy`](#nodeboron-wheezy)
-	[`node:4.8.1`](#node481)
-	[`node:4.8`](#node48)
-	[`node:4`](#node4)
-	[`node:argon`](#nodeargon)
-	[`node:4.8.1-alpine`](#node481-alpine)
-	[`node:4.8-alpine`](#node48-alpine)
-	[`node:4-alpine`](#node4-alpine)
-	[`node:argon-alpine`](#nodeargon-alpine)
-	[`node:4.8.1-onbuild`](#node481-onbuild)
-	[`node:4.8-onbuild`](#node48-onbuild)
-	[`node:4-onbuild`](#node4-onbuild)
-	[`node:argon-onbuild`](#nodeargon-onbuild)
-	[`node:4.8.1-slim`](#node481-slim)
-	[`node:4.8-slim`](#node48-slim)
-	[`node:4-slim`](#node4-slim)
-	[`node:argon-slim`](#nodeargon-slim)
-	[`node:4.8.1-wheezy`](#node481-wheezy)
-	[`node:4.8-wheezy`](#node48-wheezy)
-	[`node:4-wheezy`](#node4-wheezy)
-	[`node:argon-wheezy`](#nodeargon-wheezy)

## `node:7.7.4`

**does not exist** (yet?)

## `node:7.7`

```console
$ docker pull node@sha256:7639cf1f253af2a3a9a213d83c4e6dca61a8b75f13499aead75f17dc8679e0b8
```

-	Platforms:
	-	linux; amd64

### `node:7.7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258799719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47522eb1edb5614d7691c17336a9e02225ffb12607c8b54d175785ec865a926b`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:19:36 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:19:43 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:19:43 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:19:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:19:49 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93aceb4d4b2761c5931b50b6420625ac9f38928649fa3fa1ecbbc5c0448c416`  
		Last Modified: Wed, 15 Mar 2017 21:49:38 GMT  
		Size: 15.6 MB (15568921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9bbc6304ca67b909b02b66d70774e5e4f773f80fa14c5b54b4b5e1e77227bb`  
		Last Modified: Wed, 15 Mar 2017 21:49:33 GMT  
		Size: 864.8 KB (864780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7`

```console
$ docker pull node@sha256:7639cf1f253af2a3a9a213d83c4e6dca61a8b75f13499aead75f17dc8679e0b8
```

-	Platforms:
	-	linux; amd64

### `node:7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258799719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47522eb1edb5614d7691c17336a9e02225ffb12607c8b54d175785ec865a926b`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:19:36 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:19:43 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:19:43 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:19:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:19:49 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93aceb4d4b2761c5931b50b6420625ac9f38928649fa3fa1ecbbc5c0448c416`  
		Last Modified: Wed, 15 Mar 2017 21:49:38 GMT  
		Size: 15.6 MB (15568921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9bbc6304ca67b909b02b66d70774e5e4f773f80fa14c5b54b4b5e1e77227bb`  
		Last Modified: Wed, 15 Mar 2017 21:49:33 GMT  
		Size: 864.8 KB (864780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:latest`

```console
$ docker pull node@sha256:7639cf1f253af2a3a9a213d83c4e6dca61a8b75f13499aead75f17dc8679e0b8
```

-	Platforms:
	-	linux; amd64

### `node:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258799719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47522eb1edb5614d7691c17336a9e02225ffb12607c8b54d175785ec865a926b`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:19:36 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:19:43 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:19:43 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:19:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:19:49 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93aceb4d4b2761c5931b50b6420625ac9f38928649fa3fa1ecbbc5c0448c416`  
		Last Modified: Wed, 15 Mar 2017 21:49:38 GMT  
		Size: 15.6 MB (15568921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9bbc6304ca67b909b02b66d70774e5e4f773f80fa14c5b54b4b5e1e77227bb`  
		Last Modified: Wed, 15 Mar 2017 21:49:33 GMT  
		Size: 864.8 KB (864780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.7.4-alpine`

**does not exist** (yet?)

## `node:7.7-alpine`

```console
$ docker pull node@sha256:3b3e5de5c8c752119b92abaa1d9b65e64987bff584f99f11686433cc690a64a8
```

-	Platforms:
	-	linux; amd64

### `node:7.7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19778635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adb30d1b45a15c49be725f4ba8bf64af52bd31905f817a43b4d3227097a1b77`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:19:50 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:47:32 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 15 Mar 2017 21:47:33 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:48:30 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Wed, 15 Mar 2017 21:48:30 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da3ad6cc12085b731e01a31ae52b03c4789c30f9cfa1853a03ab9ae32bc0a`  
		Last Modified: Wed, 15 Mar 2017 21:51:09 GMT  
		Size: 16.6 MB (16627272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072ebd382fbbc56fd089a18766e14c495f1cb432d31589d45990bdd1aed29947`  
		Last Modified: Wed, 15 Mar 2017 21:51:03 GMT  
		Size: 838.0 KB (837979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7-alpine`

```console
$ docker pull node@sha256:3b3e5de5c8c752119b92abaa1d9b65e64987bff584f99f11686433cc690a64a8
```

-	Platforms:
	-	linux; amd64

### `node:7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19778635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adb30d1b45a15c49be725f4ba8bf64af52bd31905f817a43b4d3227097a1b77`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:19:50 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:47:32 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 15 Mar 2017 21:47:33 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:48:30 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Wed, 15 Mar 2017 21:48:30 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da3ad6cc12085b731e01a31ae52b03c4789c30f9cfa1853a03ab9ae32bc0a`  
		Last Modified: Wed, 15 Mar 2017 21:51:09 GMT  
		Size: 16.6 MB (16627272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072ebd382fbbc56fd089a18766e14c495f1cb432d31589d45990bdd1aed29947`  
		Last Modified: Wed, 15 Mar 2017 21:51:03 GMT  
		Size: 838.0 KB (837979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:alpine`

```console
$ docker pull node@sha256:3b3e5de5c8c752119b92abaa1d9b65e64987bff584f99f11686433cc690a64a8
```

-	Platforms:
	-	linux; amd64

### `node:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.8 MB (19778635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adb30d1b45a15c49be725f4ba8bf64af52bd31905f817a43b4d3227097a1b77`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:19:50 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:47:32 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Wed, 15 Mar 2017 21:47:33 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:48:30 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Wed, 15 Mar 2017 21:48:30 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da3ad6cc12085b731e01a31ae52b03c4789c30f9cfa1853a03ab9ae32bc0a`  
		Last Modified: Wed, 15 Mar 2017 21:51:09 GMT  
		Size: 16.6 MB (16627272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072ebd382fbbc56fd089a18766e14c495f1cb432d31589d45990bdd1aed29947`  
		Last Modified: Wed, 15 Mar 2017 21:51:03 GMT  
		Size: 838.0 KB (837979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.7.4-onbuild`

**does not exist** (yet?)

## `node:7.7-onbuild`

```console
$ docker pull node@sha256:23b45b78883f08c28f8198d3acc08a6eb792106f8343e85caee9d81b71b7a259
```

-	Platforms:
	-	linux; amd64

### `node:7.7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258799846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482963d2742f4bfc258f5b5e624a4c6109ec4b4e0d21a48c4cee8406a7df32ec`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:19:36 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:19:43 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:19:43 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:19:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:19:49 GMT
CMD ["node"]
# Wed, 15 Mar 2017 21:48:32 GMT
RUN mkdir -p /usr/src/app
# Wed, 15 Mar 2017 21:48:32 GMT
WORKDIR /usr/src/app
# Wed, 15 Mar 2017 21:48:32 GMT
ONBUILD ARG NODE_ENV
# Wed, 15 Mar 2017 21:48:33 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 15 Mar 2017 21:48:33 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 15 Mar 2017 21:48:34 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 15 Mar 2017 21:48:34 GMT
ONBUILD COPY . /usr/src/app
# Wed, 15 Mar 2017 21:48:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93aceb4d4b2761c5931b50b6420625ac9f38928649fa3fa1ecbbc5c0448c416`  
		Last Modified: Wed, 15 Mar 2017 21:49:38 GMT  
		Size: 15.6 MB (15568921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9bbc6304ca67b909b02b66d70774e5e4f773f80fa14c5b54b4b5e1e77227bb`  
		Last Modified: Wed, 15 Mar 2017 21:49:33 GMT  
		Size: 864.8 KB (864780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eaf24d5fcda1d653eddef719437319d9a8c3d2fcf5d379d604c461856ff4d9`  
		Last Modified: Wed, 15 Mar 2017 21:52:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7-onbuild`

```console
$ docker pull node@sha256:23b45b78883f08c28f8198d3acc08a6eb792106f8343e85caee9d81b71b7a259
```

-	Platforms:
	-	linux; amd64

### `node:7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258799846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482963d2742f4bfc258f5b5e624a4c6109ec4b4e0d21a48c4cee8406a7df32ec`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:19:36 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:19:43 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:19:43 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:19:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:19:49 GMT
CMD ["node"]
# Wed, 15 Mar 2017 21:48:32 GMT
RUN mkdir -p /usr/src/app
# Wed, 15 Mar 2017 21:48:32 GMT
WORKDIR /usr/src/app
# Wed, 15 Mar 2017 21:48:32 GMT
ONBUILD ARG NODE_ENV
# Wed, 15 Mar 2017 21:48:33 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 15 Mar 2017 21:48:33 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 15 Mar 2017 21:48:34 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 15 Mar 2017 21:48:34 GMT
ONBUILD COPY . /usr/src/app
# Wed, 15 Mar 2017 21:48:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93aceb4d4b2761c5931b50b6420625ac9f38928649fa3fa1ecbbc5c0448c416`  
		Last Modified: Wed, 15 Mar 2017 21:49:38 GMT  
		Size: 15.6 MB (15568921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9bbc6304ca67b909b02b66d70774e5e4f773f80fa14c5b54b4b5e1e77227bb`  
		Last Modified: Wed, 15 Mar 2017 21:49:33 GMT  
		Size: 864.8 KB (864780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eaf24d5fcda1d653eddef719437319d9a8c3d2fcf5d379d604c461856ff4d9`  
		Last Modified: Wed, 15 Mar 2017 21:52:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:onbuild`

```console
$ docker pull node@sha256:23b45b78883f08c28f8198d3acc08a6eb792106f8343e85caee9d81b71b7a259
```

-	Platforms:
	-	linux; amd64

### `node:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258799846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482963d2742f4bfc258f5b5e624a4c6109ec4b4e0d21a48c4cee8406a7df32ec`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:19:36 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:19:43 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:19:43 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:19:48 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:19:49 GMT
CMD ["node"]
# Wed, 15 Mar 2017 21:48:32 GMT
RUN mkdir -p /usr/src/app
# Wed, 15 Mar 2017 21:48:32 GMT
WORKDIR /usr/src/app
# Wed, 15 Mar 2017 21:48:32 GMT
ONBUILD ARG NODE_ENV
# Wed, 15 Mar 2017 21:48:33 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 15 Mar 2017 21:48:33 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 15 Mar 2017 21:48:34 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 15 Mar 2017 21:48:34 GMT
ONBUILD COPY . /usr/src/app
# Wed, 15 Mar 2017 21:48:34 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93aceb4d4b2761c5931b50b6420625ac9f38928649fa3fa1ecbbc5c0448c416`  
		Last Modified: Wed, 15 Mar 2017 21:49:38 GMT  
		Size: 15.6 MB (15568921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9bbc6304ca67b909b02b66d70774e5e4f773f80fa14c5b54b4b5e1e77227bb`  
		Last Modified: Wed, 15 Mar 2017 21:49:33 GMT  
		Size: 864.8 KB (864780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28eaf24d5fcda1d653eddef719437319d9a8c3d2fcf5d379d604c461856ff4d9`  
		Last Modified: Wed, 15 Mar 2017 21:52:31 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.7.4-slim`

**does not exist** (yet?)

## `node:7.7-slim`

```console
$ docker pull node@sha256:456932f7e7edab727863fddd621a89cc4a89663927b56ac0bb4537c227597c6d
```

-	Platforms:
	-	linux; amd64

### `node:7.7-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86524267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a054f2ac39c6fd5d89a3827efc9e647ead78f2e2773beeafcd6d8a7c683490`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:48:35 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:48:45 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:48:46 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:48:52 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:48:52 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cdea6990e6f692f86be9249ecd9e2aa94ff9ba0fb0772b8d820f252d4f3d3e`  
		Last Modified: Wed, 15 Mar 2017 21:54:00 GMT  
		Size: 15.6 MB (15647609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb75dfff16e2d16d07229773c48138862da427292beb6459fb6429298230a`  
		Last Modified: Wed, 15 Mar 2017 21:53:54 GMT  
		Size: 864.8 KB (864783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7-slim`

```console
$ docker pull node@sha256:456932f7e7edab727863fddd621a89cc4a89663927b56ac0bb4537c227597c6d
```

-	Platforms:
	-	linux; amd64

### `node:7-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86524267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a054f2ac39c6fd5d89a3827efc9e647ead78f2e2773beeafcd6d8a7c683490`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:48:35 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:48:45 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:48:46 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:48:52 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:48:52 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cdea6990e6f692f86be9249ecd9e2aa94ff9ba0fb0772b8d820f252d4f3d3e`  
		Last Modified: Wed, 15 Mar 2017 21:54:00 GMT  
		Size: 15.6 MB (15647609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb75dfff16e2d16d07229773c48138862da427292beb6459fb6429298230a`  
		Last Modified: Wed, 15 Mar 2017 21:53:54 GMT  
		Size: 864.8 KB (864783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:slim`

```console
$ docker pull node@sha256:456932f7e7edab727863fddd621a89cc4a89663927b56ac0bb4537c227597c6d
```

-	Platforms:
	-	linux; amd64

### `node:slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86524267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86a054f2ac39c6fd5d89a3827efc9e647ead78f2e2773beeafcd6d8a7c683490`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:48:35 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:48:45 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:48:46 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:48:52 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:48:52 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cdea6990e6f692f86be9249ecd9e2aa94ff9ba0fb0772b8d820f252d4f3d3e`  
		Last Modified: Wed, 15 Mar 2017 21:54:00 GMT  
		Size: 15.6 MB (15647609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4fb75dfff16e2d16d07229773c48138862da427292beb6459fb6429298230a`  
		Last Modified: Wed, 15 Mar 2017 21:53:54 GMT  
		Size: 864.8 KB (864783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7.7.4-wheezy`

**does not exist** (yet?)

## `node:7.7-wheezy`

```console
$ docker pull node@sha256:e17538736230ef8a3909bd9e9928936476e05df2694e6ff1d7b9c9f38661c6b3
```

-	Platforms:
	-	linux; amd64

### `node:7.7-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193503830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445d605246990447e11796635662118e6b2288f77d91f18a9a7491d35bf5b3f0`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:48:54 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:49:00 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:49:00 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:49:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:49:05 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840694493e1cb906ad881e2decaabbd8d07910c8d653b727ba19fd1a4247eb3`  
		Last Modified: Wed, 15 Mar 2017 21:55:30 GMT  
		Size: 15.6 MB (15568909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e755b0b30ddc753eeafb98b0ce9fb1d82316c83715e68569d3d511f82c10ba60`  
		Last Modified: Wed, 15 Mar 2017 21:55:23 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:7-wheezy`

```console
$ docker pull node@sha256:e17538736230ef8a3909bd9e9928936476e05df2694e6ff1d7b9c9f38661c6b3
```

-	Platforms:
	-	linux; amd64

### `node:7-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193503830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445d605246990447e11796635662118e6b2288f77d91f18a9a7491d35bf5b3f0`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:48:54 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:49:00 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:49:00 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:49:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:49:05 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840694493e1cb906ad881e2decaabbd8d07910c8d653b727ba19fd1a4247eb3`  
		Last Modified: Wed, 15 Mar 2017 21:55:30 GMT  
		Size: 15.6 MB (15568909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e755b0b30ddc753eeafb98b0ce9fb1d82316c83715e68569d3d511f82c10ba60`  
		Last Modified: Wed, 15 Mar 2017 21:55:23 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:wheezy`

```console
$ docker pull node@sha256:e17538736230ef8a3909bd9e9928936476e05df2694e6ff1d7b9c9f38661c6b3
```

-	Platforms:
	-	linux; amd64

### `node:wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.5 MB (193503830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:445d605246990447e11796635662118e6b2288f77d91f18a9a7491d35bf5b3f0`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Wed, 15 Mar 2017 21:48:54 GMT
ENV NODE_VERSION=7.7.3
# Wed, 15 Mar 2017 21:49:00 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 15 Mar 2017 21:49:00 GMT
ENV YARN_VERSION=0.21.3
# Wed, 15 Mar 2017 21:49:05 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 15 Mar 2017 21:49:05 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840694493e1cb906ad881e2decaabbd8d07910c8d653b727ba19fd1a4247eb3`  
		Last Modified: Wed, 15 Mar 2017 21:55:30 GMT  
		Size: 15.6 MB (15568909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e755b0b30ddc753eeafb98b0ce9fb1d82316c83715e68569d3d511f82c10ba60`  
		Last Modified: Wed, 15 Mar 2017 21:55:23 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.10.1`

**does not exist** (yet?)

## `node:6.10`

```console
$ docker pull node@sha256:af117acf2793c48aad74b70a78cb2e2cca28985f5dc57e73bb57f8b06548808c
```

-	Platforms:
	-	linux; amd64

### `node:6.10` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257216410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc9958f0aa83531d0f09ee60e516bf96b17bf9390431bdeccf51d8a4e0d1199`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:10 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:14 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:35:51 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:35:55 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:35:56 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0484860bdc0f1ce745b908c39fcfa493b6d3dfbbfbccaafe3e922ff8bf7abdc`  
		Last Modified: Wed, 01 Mar 2017 17:43:58 GMT  
		Size: 14.0 MB (13985608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28404ada322da8a814002b1d0ea710942f7eee806b73811611e14e6fbcc6821f`  
		Last Modified: Wed, 01 Mar 2017 17:43:50 GMT  
		Size: 864.8 KB (864784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6`

```console
$ docker pull node@sha256:af117acf2793c48aad74b70a78cb2e2cca28985f5dc57e73bb57f8b06548808c
```

-	Platforms:
	-	linux; amd64

### `node:6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257216410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc9958f0aa83531d0f09ee60e516bf96b17bf9390431bdeccf51d8a4e0d1199`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:10 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:14 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:35:51 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:35:55 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:35:56 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0484860bdc0f1ce745b908c39fcfa493b6d3dfbbfbccaafe3e922ff8bf7abdc`  
		Last Modified: Wed, 01 Mar 2017 17:43:58 GMT  
		Size: 14.0 MB (13985608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28404ada322da8a814002b1d0ea710942f7eee806b73811611e14e6fbcc6821f`  
		Last Modified: Wed, 01 Mar 2017 17:43:50 GMT  
		Size: 864.8 KB (864784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron`

```console
$ docker pull node@sha256:af117acf2793c48aad74b70a78cb2e2cca28985f5dc57e73bb57f8b06548808c
```

-	Platforms:
	-	linux; amd64

### `node:boron` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257216410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cc9958f0aa83531d0f09ee60e516bf96b17bf9390431bdeccf51d8a4e0d1199`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:10 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:14 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:35:51 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:35:55 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:35:56 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0484860bdc0f1ce745b908c39fcfa493b6d3dfbbfbccaafe3e922ff8bf7abdc`  
		Last Modified: Wed, 01 Mar 2017 17:43:58 GMT  
		Size: 14.0 MB (13985608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28404ada322da8a814002b1d0ea710942f7eee806b73811611e14e6fbcc6821f`  
		Last Modified: Wed, 01 Mar 2017 17:43:50 GMT  
		Size: 864.8 KB (864784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.10.1-alpine`

**does not exist** (yet?)

## `node:6.10-alpine`

```console
$ docker pull node@sha256:4c028de86910dbd98269dee7ca7e81880bbf93c5f1d6fce7723198699da246c4
```

-	Platforms:
	-	linux; amd64

### `node:6.10-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8232a8b9c48333a7d357b351c06be3bba24fb752cfcdb4b56f1db64f9e58500e`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 03 Mar 2017 22:11:06 GMT
ENV NODE_VERSION=6.10.0
# Fri, 03 Mar 2017 22:23:27 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 03 Mar 2017 22:23:27 GMT
ENV YARN_VERSION=0.21.3
# Fri, 03 Mar 2017 22:23:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 03 Mar 2017 22:23:35 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aa7b64772e05361f60a836fb336f66a05fc62ad098313d5648451a4202d1e8`  
		Last Modified: Sat, 04 Mar 2017 05:20:21 GMT  
		Size: 15.0 MB (14963289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32501522b97a622e0afe8b0abeca44c0415d8939e63bdc8930843da302134df`  
		Last Modified: Sat, 04 Mar 2017 05:19:34 GMT  
		Size: 868.1 KB (868089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6-alpine`

```console
$ docker pull node@sha256:4c028de86910dbd98269dee7ca7e81880bbf93c5f1d6fce7723198699da246c4
```

-	Platforms:
	-	linux; amd64

### `node:6-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8232a8b9c48333a7d357b351c06be3bba24fb752cfcdb4b56f1db64f9e58500e`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 03 Mar 2017 22:11:06 GMT
ENV NODE_VERSION=6.10.0
# Fri, 03 Mar 2017 22:23:27 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 03 Mar 2017 22:23:27 GMT
ENV YARN_VERSION=0.21.3
# Fri, 03 Mar 2017 22:23:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 03 Mar 2017 22:23:35 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aa7b64772e05361f60a836fb336f66a05fc62ad098313d5648451a4202d1e8`  
		Last Modified: Sat, 04 Mar 2017 05:20:21 GMT  
		Size: 15.0 MB (14963289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32501522b97a622e0afe8b0abeca44c0415d8939e63bdc8930843da302134df`  
		Last Modified: Sat, 04 Mar 2017 05:19:34 GMT  
		Size: 868.1 KB (868089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron-alpine`

```console
$ docker pull node@sha256:4c028de86910dbd98269dee7ca7e81880bbf93c5f1d6fce7723198699da246c4
```

-	Platforms:
	-	linux; amd64

### `node:boron-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 MB (18144762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8232a8b9c48333a7d357b351c06be3bba24fb752cfcdb4b56f1db64f9e58500e`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 03 Mar 2017 22:11:06 GMT
ENV NODE_VERSION=6.10.0
# Fri, 03 Mar 2017 22:23:27 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 03 Mar 2017 22:23:27 GMT
ENV YARN_VERSION=0.21.3
# Fri, 03 Mar 2017 22:23:35 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 03 Mar 2017 22:23:35 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92aa7b64772e05361f60a836fb336f66a05fc62ad098313d5648451a4202d1e8`  
		Last Modified: Sat, 04 Mar 2017 05:20:21 GMT  
		Size: 15.0 MB (14963289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a32501522b97a622e0afe8b0abeca44c0415d8939e63bdc8930843da302134df`  
		Last Modified: Sat, 04 Mar 2017 05:19:34 GMT  
		Size: 868.1 KB (868089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.10.1-onbuild`

**does not exist** (yet?)

## `node:6.10-onbuild`

```console
$ docker pull node@sha256:b599311d2992da37f88da6db24305a5ce950fb720b60394b0097e61e93488d32
```

-	Platforms:
	-	linux; amd64

### `node:6.10-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257216537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c664e45efaee3bffb32b87eaab9861bbe5fb7589baae409971dfe0c37acb54`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:10 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:14 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:35:51 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:35:55 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:35:56 GMT
CMD ["node"]
# Wed, 01 Mar 2017 17:36:05 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 17:36:06 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 17:36:06 GMT
ONBUILD ARG NODE_ENV
# Wed, 01 Mar 2017 17:36:06 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 01 Mar 2017 17:36:06 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 01 Mar 2017 17:36:07 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 01 Mar 2017 17:36:07 GMT
ONBUILD COPY . /usr/src/app
# Wed, 01 Mar 2017 17:36:07 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0484860bdc0f1ce745b908c39fcfa493b6d3dfbbfbccaafe3e922ff8bf7abdc`  
		Last Modified: Wed, 01 Mar 2017 17:43:58 GMT  
		Size: 14.0 MB (13985608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28404ada322da8a814002b1d0ea710942f7eee806b73811611e14e6fbcc6821f`  
		Last Modified: Wed, 01 Mar 2017 17:43:50 GMT  
		Size: 864.8 KB (864784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29507be9ea5d48b75fc5735d46418dac1de71685d8413ab77bf974ca11b97a2`  
		Last Modified: Wed, 01 Mar 2017 17:46:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6-onbuild`

```console
$ docker pull node@sha256:b599311d2992da37f88da6db24305a5ce950fb720b60394b0097e61e93488d32
```

-	Platforms:
	-	linux; amd64

### `node:6-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257216537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c664e45efaee3bffb32b87eaab9861bbe5fb7589baae409971dfe0c37acb54`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:10 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:14 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:35:51 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:35:55 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:35:56 GMT
CMD ["node"]
# Wed, 01 Mar 2017 17:36:05 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 17:36:06 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 17:36:06 GMT
ONBUILD ARG NODE_ENV
# Wed, 01 Mar 2017 17:36:06 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 01 Mar 2017 17:36:06 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 01 Mar 2017 17:36:07 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 01 Mar 2017 17:36:07 GMT
ONBUILD COPY . /usr/src/app
# Wed, 01 Mar 2017 17:36:07 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0484860bdc0f1ce745b908c39fcfa493b6d3dfbbfbccaafe3e922ff8bf7abdc`  
		Last Modified: Wed, 01 Mar 2017 17:43:58 GMT  
		Size: 14.0 MB (13985608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28404ada322da8a814002b1d0ea710942f7eee806b73811611e14e6fbcc6821f`  
		Last Modified: Wed, 01 Mar 2017 17:43:50 GMT  
		Size: 864.8 KB (864784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29507be9ea5d48b75fc5735d46418dac1de71685d8413ab77bf974ca11b97a2`  
		Last Modified: Wed, 01 Mar 2017 17:46:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron-onbuild`

```console
$ docker pull node@sha256:b599311d2992da37f88da6db24305a5ce950fb720b60394b0097e61e93488d32
```

-	Platforms:
	-	linux; amd64

### `node:boron-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257216537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06c664e45efaee3bffb32b87eaab9861bbe5fb7589baae409971dfe0c37acb54`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:10 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:14 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:35:51 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:35:55 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:35:56 GMT
CMD ["node"]
# Wed, 01 Mar 2017 17:36:05 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 17:36:06 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 17:36:06 GMT
ONBUILD ARG NODE_ENV
# Wed, 01 Mar 2017 17:36:06 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 01 Mar 2017 17:36:06 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 01 Mar 2017 17:36:07 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 01 Mar 2017 17:36:07 GMT
ONBUILD COPY . /usr/src/app
# Wed, 01 Mar 2017 17:36:07 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0484860bdc0f1ce745b908c39fcfa493b6d3dfbbfbccaafe3e922ff8bf7abdc`  
		Last Modified: Wed, 01 Mar 2017 17:43:58 GMT  
		Size: 14.0 MB (13985608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28404ada322da8a814002b1d0ea710942f7eee806b73811611e14e6fbcc6821f`  
		Last Modified: Wed, 01 Mar 2017 17:43:50 GMT  
		Size: 864.8 KB (864784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29507be9ea5d48b75fc5735d46418dac1de71685d8413ab77bf974ca11b97a2`  
		Last Modified: Wed, 01 Mar 2017 17:46:24 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.10.1-slim`

**does not exist** (yet?)

## `node:6.10-slim`

```console
$ docker pull node@sha256:47421b9ad40a4f7d70ce51996b7578448de6705a73eb5fb0fdd53cf298efdda9
```

-	Platforms:
	-	linux; amd64

### `node:6.10-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84940903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be2037d2f4c9a8304a7681c10abc4a6358e0d60f155ac9cfc7da6fe1bb3c8d2f`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:19 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:28 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:08 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:13 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337c82ccc5a4531960cc4b17704b1e20226cbeac7b2b11a41199c4ba911c0fc0`  
		Last Modified: Wed, 01 Mar 2017 17:47:45 GMT  
		Size: 14.1 MB (14064246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a61192cc228ff6d03e32f22c0fef4e1989c76e25595c14f638f3fce653a890`  
		Last Modified: Wed, 01 Mar 2017 17:47:38 GMT  
		Size: 864.8 KB (864782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6-slim`

```console
$ docker pull node@sha256:47421b9ad40a4f7d70ce51996b7578448de6705a73eb5fb0fdd53cf298efdda9
```

-	Platforms:
	-	linux; amd64

### `node:6-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84940903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be2037d2f4c9a8304a7681c10abc4a6358e0d60f155ac9cfc7da6fe1bb3c8d2f`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:19 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:28 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:08 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:13 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337c82ccc5a4531960cc4b17704b1e20226cbeac7b2b11a41199c4ba911c0fc0`  
		Last Modified: Wed, 01 Mar 2017 17:47:45 GMT  
		Size: 14.1 MB (14064246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a61192cc228ff6d03e32f22c0fef4e1989c76e25595c14f638f3fce653a890`  
		Last Modified: Wed, 01 Mar 2017 17:47:38 GMT  
		Size: 864.8 KB (864782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron-slim`

```console
$ docker pull node@sha256:47421b9ad40a4f7d70ce51996b7578448de6705a73eb5fb0fdd53cf298efdda9
```

-	Platforms:
	-	linux; amd64

### `node:boron-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.9 MB (84940903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be2037d2f4c9a8304a7681c10abc4a6358e0d60f155ac9cfc7da6fe1bb3c8d2f`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:19 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:28 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:08 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:12 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:13 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337c82ccc5a4531960cc4b17704b1e20226cbeac7b2b11a41199c4ba911c0fc0`  
		Last Modified: Wed, 01 Mar 2017 17:47:45 GMT  
		Size: 14.1 MB (14064246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a61192cc228ff6d03e32f22c0fef4e1989c76e25595c14f638f3fce653a890`  
		Last Modified: Wed, 01 Mar 2017 17:47:38 GMT  
		Size: 864.8 KB (864782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6.10.1-wheezy`

**does not exist** (yet?)

## `node:6.10-wheezy`

```console
$ docker pull node@sha256:473ced9f60874deefc7af7ebfa8245ec888769479f8681d74ccb4297182c5b9e
```

-	Platforms:
	-	linux; amd64

### `node:6.10-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191920531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7aff13599739730dc6839dd10b352266692fab00f6c8285c7647631ed9239f7`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:29 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:33 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:13 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:17 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:18 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c651ad7af951297eb1ced8b90a1ec6f0fd34e794bc6d60de34624bb3fb99aea`  
		Last Modified: Wed, 01 Mar 2017 17:49:04 GMT  
		Size: 14.0 MB (13985607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277dc3dc4a07133b1de09c0f476b4873587cd8a44dcde36a56e6dabd925dbfd5`  
		Last Modified: Wed, 01 Mar 2017 17:48:58 GMT  
		Size: 864.8 KB (864784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:6-wheezy`

```console
$ docker pull node@sha256:473ced9f60874deefc7af7ebfa8245ec888769479f8681d74ccb4297182c5b9e
```

-	Platforms:
	-	linux; amd64

### `node:6-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191920531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7aff13599739730dc6839dd10b352266692fab00f6c8285c7647631ed9239f7`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:29 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:33 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:13 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:17 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:18 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c651ad7af951297eb1ced8b90a1ec6f0fd34e794bc6d60de34624bb3fb99aea`  
		Last Modified: Wed, 01 Mar 2017 17:49:04 GMT  
		Size: 14.0 MB (13985607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277dc3dc4a07133b1de09c0f476b4873587cd8a44dcde36a56e6dabd925dbfd5`  
		Last Modified: Wed, 01 Mar 2017 17:48:58 GMT  
		Size: 864.8 KB (864784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:boron-wheezy`

```console
$ docker pull node@sha256:473ced9f60874deefc7af7ebfa8245ec888769479f8681d74ccb4297182c5b9e
```

-	Platforms:
	-	linux; amd64

### `node:boron-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191920531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7aff13599739730dc6839dd10b352266692fab00f6c8285c7647631ed9239f7`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:29 GMT
ENV NODE_VERSION=6.10.0
# Tue, 28 Feb 2017 15:16:33 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:13 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:17 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:18 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c651ad7af951297eb1ced8b90a1ec6f0fd34e794bc6d60de34624bb3fb99aea`  
		Last Modified: Wed, 01 Mar 2017 17:49:04 GMT  
		Size: 14.0 MB (13985607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:277dc3dc4a07133b1de09c0f476b4873587cd8a44dcde36a56e6dabd925dbfd5`  
		Last Modified: Wed, 01 Mar 2017 17:48:58 GMT  
		Size: 864.8 KB (864784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.8.1`

**does not exist** (yet?)

## `node:4.8`

```console
$ docker pull node@sha256:260dccbf861d8ec81fbfe30d31ce60fb0139acc08e4cedfb33cda7c85fa75598
```

-	Platforms:
	-	linux; amd64

### `node:4.8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255426002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7efee1f035df577acb974f8b2fd9dbf81a8a5f728e06818bde9de62906713d4`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:18 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:22 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429738ab3e15efd6815af883ab28db299e4e2e086ecc7d427f315ec4549c9400`  
		Last Modified: Wed, 01 Mar 2017 17:50:26 GMT  
		Size: 12.2 MB (12195202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da30a7504ce341c85f1b5b0af22e57beafbc2f641925005400dc87569f41cfb`  
		Last Modified: Wed, 01 Mar 2017 17:50:21 GMT  
		Size: 864.8 KB (864782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4`

```console
$ docker pull node@sha256:260dccbf861d8ec81fbfe30d31ce60fb0139acc08e4cedfb33cda7c85fa75598
```

-	Platforms:
	-	linux; amd64

### `node:4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255426002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7efee1f035df577acb974f8b2fd9dbf81a8a5f728e06818bde9de62906713d4`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:18 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:22 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429738ab3e15efd6815af883ab28db299e4e2e086ecc7d427f315ec4549c9400`  
		Last Modified: Wed, 01 Mar 2017 17:50:26 GMT  
		Size: 12.2 MB (12195202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da30a7504ce341c85f1b5b0af22e57beafbc2f641925005400dc87569f41cfb`  
		Last Modified: Wed, 01 Mar 2017 17:50:21 GMT  
		Size: 864.8 KB (864782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon`

```console
$ docker pull node@sha256:260dccbf861d8ec81fbfe30d31ce60fb0139acc08e4cedfb33cda7c85fa75598
```

-	Platforms:
	-	linux; amd64

### `node:argon` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255426002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7efee1f035df577acb974f8b2fd9dbf81a8a5f728e06818bde9de62906713d4`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:18 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:22 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:23 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429738ab3e15efd6815af883ab28db299e4e2e086ecc7d427f315ec4549c9400`  
		Last Modified: Wed, 01 Mar 2017 17:50:26 GMT  
		Size: 12.2 MB (12195202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da30a7504ce341c85f1b5b0af22e57beafbc2f641925005400dc87569f41cfb`  
		Last Modified: Wed, 01 Mar 2017 17:50:21 GMT  
		Size: 864.8 KB (864782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.8.1-alpine`

**does not exist** (yet?)

## `node:4.8-alpine`

```console
$ docker pull node@sha256:169773312dd0d3c255c6380dee76f2135126b4a4590a09ee0e74acea294f216f
```

-	Platforms:
	-	linux; amd64

### `node:4.8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13686160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106b594cc39bd62cfd824a3e0a69424180758c08ace9349ad4b75f5862b7feca`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 03 Mar 2017 22:03:52 GMT
ENV NODE_VERSION=4.8.0
# Fri, 03 Mar 2017 22:10:58 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 03 Mar 2017 22:10:58 GMT
ENV YARN_VERSION=0.21.3
# Fri, 03 Mar 2017 22:11:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 03 Mar 2017 22:11:06 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7a0a7b6b80b4a3b3455c4d52766ca8bdc5c625a5d5ce4d51feab1e07acf977`  
		Last Modified: Sat, 04 Mar 2017 05:18:19 GMT  
		Size: 10.5 MB (10500254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dadb976eeb88f3e2b680b71e066afa921272567b75e108f20e92aef7569579`  
		Last Modified: Sat, 04 Mar 2017 05:17:54 GMT  
		Size: 872.5 KB (872522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4-alpine`

```console
$ docker pull node@sha256:169773312dd0d3c255c6380dee76f2135126b4a4590a09ee0e74acea294f216f
```

-	Platforms:
	-	linux; amd64

### `node:4-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13686160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106b594cc39bd62cfd824a3e0a69424180758c08ace9349ad4b75f5862b7feca`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 03 Mar 2017 22:03:52 GMT
ENV NODE_VERSION=4.8.0
# Fri, 03 Mar 2017 22:10:58 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 03 Mar 2017 22:10:58 GMT
ENV YARN_VERSION=0.21.3
# Fri, 03 Mar 2017 22:11:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 03 Mar 2017 22:11:06 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7a0a7b6b80b4a3b3455c4d52766ca8bdc5c625a5d5ce4d51feab1e07acf977`  
		Last Modified: Sat, 04 Mar 2017 05:18:19 GMT  
		Size: 10.5 MB (10500254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dadb976eeb88f3e2b680b71e066afa921272567b75e108f20e92aef7569579`  
		Last Modified: Sat, 04 Mar 2017 05:17:54 GMT  
		Size: 872.5 KB (872522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon-alpine`

```console
$ docker pull node@sha256:169773312dd0d3c255c6380dee76f2135126b4a4590a09ee0e74acea294f216f
```

-	Platforms:
	-	linux; amd64

### `node:argon-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13686160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:106b594cc39bd62cfd824a3e0a69424180758c08ace9349ad4b75f5862b7feca`
-	Default Command: `["node"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:03:51 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Fri, 03 Mar 2017 22:03:52 GMT
ENV NODE_VERSION=4.8.0
# Fri, 03 Mar 2017 22:10:58 GMT
RUN adduser -D -u 1000 node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 03 Mar 2017 22:10:58 GMT
ENV YARN_VERSION=0.21.3
# Fri, 03 Mar 2017 22:11:05 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn   && apk del .build-deps-yarn
# Fri, 03 Mar 2017 22:11:06 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7a0a7b6b80b4a3b3455c4d52766ca8bdc5c625a5d5ce4d51feab1e07acf977`  
		Last Modified: Sat, 04 Mar 2017 05:18:19 GMT  
		Size: 10.5 MB (10500254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dadb976eeb88f3e2b680b71e066afa921272567b75e108f20e92aef7569579`  
		Last Modified: Sat, 04 Mar 2017 05:17:54 GMT  
		Size: 872.5 KB (872522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.8.1-onbuild`

**does not exist** (yet?)

## `node:4.8-onbuild`

```console
$ docker pull node@sha256:b5bc4db19ace46dde83320dedf0b53c2e662824eed2eae60eda83508f6069c7b
```

-	Platforms:
	-	linux; amd64

### `node:4.8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255426129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5934c0f28be5320886a78a44de6aa5c5375db30d2172a760f6c955dae64ed3`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:18 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:22 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:23 GMT
CMD ["node"]
# Wed, 01 Mar 2017 17:36:33 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 17:36:33 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD ARG NODE_ENV
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 01 Mar 2017 17:36:35 GMT
ONBUILD COPY . /usr/src/app
# Wed, 01 Mar 2017 17:36:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429738ab3e15efd6815af883ab28db299e4e2e086ecc7d427f315ec4549c9400`  
		Last Modified: Wed, 01 Mar 2017 17:50:26 GMT  
		Size: 12.2 MB (12195202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da30a7504ce341c85f1b5b0af22e57beafbc2f641925005400dc87569f41cfb`  
		Last Modified: Wed, 01 Mar 2017 17:50:21 GMT  
		Size: 864.8 KB (864782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04acca155f76d7d0c9ce737d4942ee9c8c31c276f26aef26d45ac7e66ef3458`  
		Last Modified: Wed, 01 Mar 2017 17:53:04 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4-onbuild`

```console
$ docker pull node@sha256:b5bc4db19ace46dde83320dedf0b53c2e662824eed2eae60eda83508f6069c7b
```

-	Platforms:
	-	linux; amd64

### `node:4-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255426129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5934c0f28be5320886a78a44de6aa5c5375db30d2172a760f6c955dae64ed3`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:18 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:22 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:23 GMT
CMD ["node"]
# Wed, 01 Mar 2017 17:36:33 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 17:36:33 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD ARG NODE_ENV
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 01 Mar 2017 17:36:35 GMT
ONBUILD COPY . /usr/src/app
# Wed, 01 Mar 2017 17:36:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429738ab3e15efd6815af883ab28db299e4e2e086ecc7d427f315ec4549c9400`  
		Last Modified: Wed, 01 Mar 2017 17:50:26 GMT  
		Size: 12.2 MB (12195202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da30a7504ce341c85f1b5b0af22e57beafbc2f641925005400dc87569f41cfb`  
		Last Modified: Wed, 01 Mar 2017 17:50:21 GMT  
		Size: 864.8 KB (864782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04acca155f76d7d0c9ce737d4942ee9c8c31c276f26aef26d45ac7e66ef3458`  
		Last Modified: Wed, 01 Mar 2017 17:53:04 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon-onbuild`

```console
$ docker pull node@sha256:b5bc4db19ace46dde83320dedf0b53c2e662824eed2eae60eda83508f6069c7b
```

-	Platforms:
	-	linux; amd64

### `node:argon-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255426129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5934c0f28be5320886a78a44de6aa5c5375db30d2172a760f6c955dae64ed3`
-	Default Command: `["npm","start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:15:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:26 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:30 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:31 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:39 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:18 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:22 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:23 GMT
CMD ["node"]
# Wed, 01 Mar 2017 17:36:33 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 17:36:33 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD ARG NODE_ENV
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD ENV NODE_ENV $NODE_ENV
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD COPY package.json /usr/src/app/
# Wed, 01 Mar 2017 17:36:34 GMT
ONBUILD RUN npm install && npm cache clean
# Wed, 01 Mar 2017 17:36:35 GMT
ONBUILD COPY . /usr/src/app
# Wed, 01 Mar 2017 17:36:35 GMT
CMD ["npm" "start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5f7da9a4f2853a0078d1926f7dbd4d12d09b01b13da4aa808d015024419c8`  
		Last Modified: Mon, 27 Feb 2017 21:55:33 GMT  
		Size: 129.9 MB (129852937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6ebc070439730932581a5e273cbc71107ce362e089a32b1da75c72cbdd1729b`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 4.4 KB (4353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd487f72ac9fc08686f093d5c856b0c4df2e8d65f131cddd82272980803be993`  
		Last Modified: Wed, 01 Mar 2017 17:37:09 GMT  
		Size: 108.2 KB (108167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429738ab3e15efd6815af883ab28db299e4e2e086ecc7d427f315ec4549c9400`  
		Last Modified: Wed, 01 Mar 2017 17:50:26 GMT  
		Size: 12.2 MB (12195202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da30a7504ce341c85f1b5b0af22e57beafbc2f641925005400dc87569f41cfb`  
		Last Modified: Wed, 01 Mar 2017 17:50:21 GMT  
		Size: 864.8 KB (864782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04acca155f76d7d0c9ce737d4942ee9c8c31c276f26aef26d45ac7e66ef3458`  
		Last Modified: Wed, 01 Mar 2017 17:53:04 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.8.1-slim`

**does not exist** (yet?)

## `node:4.8-slim`

```console
$ docker pull node@sha256:385543730b9d96a64d726a070418c05feec68d226ef0b0933383afb8221c9540
```

-	Platforms:
	-	linux; amd64

### `node:4.8-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83150699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f43af8f75bc60f5461e3d78d684453657bda31493e76a367399ee6d3999bc1`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:57 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:36 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:40 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:40 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bf59480dfaf997cf6e3cba6cf88b6c970abe08ef0414942d1e5234ff81a095`  
		Last Modified: Wed, 01 Mar 2017 17:54:26 GMT  
		Size: 12.3 MB (12274043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f29fdb690c501584018c910284b79516166b445d02be7baf42bfcafcc46d3`  
		Last Modified: Wed, 01 Mar 2017 17:54:20 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4-slim`

```console
$ docker pull node@sha256:385543730b9d96a64d726a070418c05feec68d226ef0b0933383afb8221c9540
```

-	Platforms:
	-	linux; amd64

### `node:4-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83150699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f43af8f75bc60f5461e3d78d684453657bda31493e76a367399ee6d3999bc1`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:57 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:36 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:40 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:40 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bf59480dfaf997cf6e3cba6cf88b6c970abe08ef0414942d1e5234ff81a095`  
		Last Modified: Wed, 01 Mar 2017 17:54:26 GMT  
		Size: 12.3 MB (12274043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f29fdb690c501584018c910284b79516166b445d02be7baf42bfcafcc46d3`  
		Last Modified: Wed, 01 Mar 2017 17:54:20 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon-slim`

```console
$ docker pull node@sha256:385543730b9d96a64d726a070418c05feec68d226ef0b0933383afb8221c9540
```

-	Platforms:
	-	linux; amd64

### `node:argon-slim` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.2 MB (83150699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f43af8f75bc60f5461e3d78d684453657bda31493e76a367399ee6d3999bc1`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:15:44 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:15:48 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:15:48 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:15:57 GMT
RUN buildDeps='xz-utils'     && set -x     && apt-get update && apt-get install -y $buildDeps --no-install-recommends     && rm -rf /var/lib/apt/lists/*     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"     && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1     && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt     && apt-get purge -y --auto-remove $buildDeps     && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:36 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:40 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:40 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdac388e8eaf675a81ab5c17547c78da8f5683d0bdde314018bc12e4117717b`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 4.3 KB (4343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2d7bf5eae4b4f2a47e163351b332b447e7553f6fdad1aa942cf4f009babbef7`  
		Last Modified: Wed, 01 Mar 2017 17:41:02 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11bf59480dfaf997cf6e3cba6cf88b6c970abe08ef0414942d1e5234ff81a095`  
		Last Modified: Wed, 01 Mar 2017 17:54:26 GMT  
		Size: 12.3 MB (12274043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61f29fdb690c501584018c910284b79516166b445d02be7baf42bfcafcc46d3`  
		Last Modified: Wed, 01 Mar 2017 17:54:20 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4.8.1-wheezy`

**does not exist** (yet?)

## `node:4.8-wheezy`

```console
$ docker pull node@sha256:ddfb8c55682768f235e31560cf1ab7ab256397984e13b70f13a3fa7296a58b1d
```

-	Platforms:
	-	linux; amd64

### `node:4.8-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190130121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e93e393f02de5d25c3dd836511c0ae1ce1f3546d88e059a9833a7e53f23561`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:16:09 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:41 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:46 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828942863ae92b1e539ad189908373a7454aafdc7d3d154dd5c2516f15ad3957`  
		Last Modified: Wed, 01 Mar 2017 17:55:51 GMT  
		Size: 12.2 MB (12195200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b062595ab3a769f2d148497c7d34c25594882802a3181db1b8d727a4b8e7574`  
		Last Modified: Wed, 01 Mar 2017 17:55:44 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:4-wheezy`

```console
$ docker pull node@sha256:ddfb8c55682768f235e31560cf1ab7ab256397984e13b70f13a3fa7296a58b1d
```

-	Platforms:
	-	linux; amd64

### `node:4-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190130121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e93e393f02de5d25c3dd836511c0ae1ce1f3546d88e059a9833a7e53f23561`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:16:09 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:41 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:46 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828942863ae92b1e539ad189908373a7454aafdc7d3d154dd5c2516f15ad3957`  
		Last Modified: Wed, 01 Mar 2017 17:55:51 GMT  
		Size: 12.2 MB (12195200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b062595ab3a769f2d148497c7d34c25594882802a3181db1b8d727a4b8e7574`  
		Last Modified: Wed, 01 Mar 2017 17:55:44 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `node:argon-wheezy`

```console
$ docker pull node@sha256:ddfb8c55682768f235e31560cf1ab7ab256397984e13b70f13a3fa7296a58b1d
```

-	Platforms:
	-	linux; amd64

### `node:argon-wheezy` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.1 MB (190130121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e93e393f02de5d25c3dd836511c0ae1ce1f3546d88e059a9833a7e53f23561`
-	Default Command: `["node"]`

```dockerfile
# Mon, 27 Feb 2017 20:39:24 GMT
ADD file:ddbcd17149470ca923569d3112a7955f842a00bf8eee92781c6eb13af64b5b82 in / 
# Mon, 27 Feb 2017 20:39:25 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:26:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:27:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:16:00 GMT
RUN groupadd --gid 1000 node   && useradd --uid 1000 --gid node --shell /bin/bash --create-home node
# Tue, 28 Feb 2017 15:16:04 GMT
RUN set -ex   && for key in     9554F04D7259F04124DE6B476D5A82AC7E37093B     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     B9AE9905FFD7803F25714661B63B535A4C206CA9     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     56730D5401028683275BD23C23EFEFE93C4CFFFE   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NPM_CONFIG_LOGLEVEL=info
# Tue, 28 Feb 2017 15:16:04 GMT
ENV NODE_VERSION=4.8.0
# Tue, 28 Feb 2017 15:16:09 GMT
RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz"   && curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"   && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc   && grep " node-v$NODE_VERSION-linux-x64.tar.xz\$" SHASUMS256.txt | sha256sum -c -   && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1   && rm "node-v$NODE_VERSION-linux-x64.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt   && ln -s /usr/local/bin/node /usr/local/bin/nodejs
# Wed, 01 Mar 2017 17:36:41 GMT
ENV YARN_VERSION=0.21.3
# Wed, 01 Mar 2017 17:36:45 GMT
RUN set -ex   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";   done   && curl -fSL -o yarn.js "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js"   && curl -fSL -o yarn.js.asc "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-legacy-$YARN_VERSION.js.asc"   && gpg --batch --verify yarn.js.asc yarn.js   && rm yarn.js.asc   && mv yarn.js /usr/local/bin/yarn   && chmod +x /usr/local/bin/yarn
# Wed, 01 Mar 2017 17:36:46 GMT
CMD ["node"]
```

-	Layers:
	-	`sha256:c3e97b7a4c20461eb05807e795f449cc8826084be5e3c4766fa9cc49b4df3551`  
		Last Modified: Mon, 27 Feb 2017 20:50:15 GMT  
		Size: 37.3 MB (37284709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3b2eaf02731c8467a632f8a42eb288f20194d5e5eb8c877d76bc7016af9a2b`  
		Last Modified: Mon, 27 Feb 2017 22:05:16 GMT  
		Size: 6.8 MB (6824025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ba85d55de6e30e01c04f704abfd8bc7f65db1cbc56e6d545b90e8fa41922`  
		Last Modified: Mon, 27 Feb 2017 22:05:53 GMT  
		Size: 37.4 MB (37442119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ab3c3888cc505d9d9f2fef84e0facdbf645f192d2a81cfb5337ea1eab469d5`  
		Last Modified: Mon, 27 Feb 2017 22:06:51 GMT  
		Size: 95.4 MB (95407174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b613ea6d61e7aa68740240c6d8e789f58643c400a3654c92e2a0423953d22b56`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 4.0 KB (3950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02da56273a48755ed4a0f62f10d522e5e2f606ede4c1b18fa6e52cbb1220df4`  
		Last Modified: Wed, 01 Mar 2017 17:42:28 GMT  
		Size: 108.2 KB (108163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828942863ae92b1e539ad189908373a7454aafdc7d3d154dd5c2516f15ad3957`  
		Last Modified: Wed, 01 Mar 2017 17:55:51 GMT  
		Size: 12.2 MB (12195200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b062595ab3a769f2d148497c7d34c25594882802a3181db1b8d727a4b8e7574`  
		Last Modified: Wed, 01 Mar 2017 17:55:44 GMT  
		Size: 864.8 KB (864781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
